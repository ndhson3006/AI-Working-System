#!/usr/bin/env bash
# verify_package.sh — Kiểm tra tính nhất quán của bộ tài liệu AI Working System.
#
# Mục đích: phát hiện sớm (a) kích thước/hash trong FILE_INVENTORY.md không khớp
# với file thật, (b) liên kết Markdown tương đối bị hỏng, (c) file được khai báo
# trong MANIFEST.json nhưng không tồn tại, (d) file tồn tại nhưng không được khai báo.
#
# Cách dùng:
#   bash scripts/verify_package.sh [thư-mục-gốc]
#   bash scripts/verify_package.sh [thư-mục-gốc] [thư-mục-đối-chiếu]
#
# Nếu cung cấp thư mục đối chiếu thứ hai (ví dụ gói phát hành), script so sánh
# kích thước/hash của các file dùng chung và báo cáo file chỉ có ở một bên.
# Điều này phát hiện lệch đồng bộ repo-vs-gói mà kiểm tra nội bộ không thấy.
#
# Mã thoát: 0 = không có vấn đề; 1 = có ít nhất một vấn đề.
# Script chỉ đọc; không sửa file.

set -u

ROOT="${1:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
OTHER="${2:-}"
cd "$ROOT" || { echo "Không vào được thư mục: $ROOT" >&2; exit 1; }

problems=0
note() { echo "  [$1] $2"; [ "$1" = "LỖI" ] && problems=$((problems + 1)); }

echo "== Kiểm tra bộ tài liệu tại: $ROOT =="

# --- 1. Kích thước trong FILE_INVENTORY.md ---
echo
echo "-- 1. FILE_INVENTORY.md: kích thước --"
if [ -f FILE_INVENTORY.md ]; then
  while IFS= read -r line; do
    f=$(printf '%s' "$line" | grep -oP '`\K[^`]+(?=` — [0-9]+ bytes)')
    [ -z "$f" ] && continue
    exp=$(printf '%s' "$line" | grep -oP '— \K[0-9]+(?= bytes)')
    if [ ! -f "$f" ]; then
      note "LỖI" "khai báo nhưng không tồn tại: $f"
      continue
    fi
    act=$(stat -c%s "$f")
    [ "$exp" != "$act" ] && note "LỖI" "kích thước lệch: $f (inventory=$exp, thực tế=$act)"
  done < FILE_INVENTORY.md
  echo "  (đã kiểm tra xong)"
else
  note "LỖI" "thiếu FILE_INVENTORY.md"
fi

# --- 2. Hash trong FILE_INVENTORY.md ---
echo
echo "-- 2. FILE_INVENTORY.md: SHA-256 (12 ký tự đầu) --"
if [ -f FILE_INVENTORY.md ]; then
  while IFS= read -r line; do
    f=$(printf '%s' "$line" | grep -oP '`\K[^`]+(?=` — [0-9]+ bytes — SHA-256)')
    [ -z "$f" ] && continue
    exp=$(printf '%s' "$line" | grep -oP 'SHA-256 `\K[0-9a-f]+')
    [ -f "$f" ] || continue
    act=$(sha256sum "$f" | cut -c1-12)
    [ "$exp" != "$act" ] && note "LỖI" "hash lệch: $f (inventory=$exp, thực tế=$act)"
  done < FILE_INVENTORY.md
  echo "  (đã kiểm tra xong)"
fi

# --- 3. Liên kết Markdown tương đối ---
echo
echo "-- 3. Liên kết Markdown tương đối --"
link_problems=0
while IFS= read -r md; do
  d=$(dirname "$md")
  while IFS= read -r l; do
    case "$l" in http*|'#'*) continue ;; esac
    p="${l%%#*}"
    [ -z "$p" ] && continue
    if [ ! -e "$d/$p" ]; then
      note "LỖI" "$md -> $l"
      link_problems=$((link_problems + 1))
    fi
  done < <(grep -oP '\]\(\K[^)]+' "$md" 2>/dev/null)
done < <(find . -name '*.md' -not -path './.git/*' | sort)
[ "$link_problems" -eq 0 ] && echo "  (không có liên kết hỏng)"

# --- 4. MANIFEST.json ---
echo
echo "-- 4. MANIFEST.json --"
if [ -f MANIFEST.json ] && command -v python3 >/dev/null 2>&1; then
  python3 - "$ROOT" <<'PY'
import json, os, sys
root = sys.argv[1]
try:
    m = json.load(open(os.path.join(root, "MANIFEST.json"), encoding="utf-8"))
except Exception as e:
    print(f"  [LỖI] không đọc được MANIFEST.json: {e}")
    sys.exit(1)
listed = set(m.get("files", []))
missing = sorted(f for f in listed if not os.path.isfile(os.path.join(root, f)))
for f in missing:
    print(f"  [LỖI] trong MANIFEST nhưng không tồn tại: {f}")
on_disk = set()
for dirpath, dirnames, filenames in os.walk(root):
    dirnames[:] = [d for d in dirnames if d != ".git"]
    for fn in filenames:
        rel = os.path.relpath(os.path.join(dirpath, fn), root)
        on_disk.add(rel.replace(os.sep, "/"))
skip = {"MANIFEST.json", "FILE_INVENTORY.md"}
undeclared = sorted(f for f in on_disk - listed - skip if not f.startswith(".git"))
for f in undeclared:
    print(f"  [CẢNH BÁO] có trên đĩa nhưng không khai báo trong MANIFEST: {f}")
print(f"  (manifest: {len(listed)} file khai báo; đĩa: {len(on_disk)} file)")
PY
  man_problems=$(python3 - "$ROOT" <<'PY'
import json, os, sys
root = sys.argv[1]
m = json.load(open(os.path.join(root, "MANIFEST.json"), encoding="utf-8"))
listed = set(m.get("files", []))
n = sum(0 if os.path.isfile(os.path.join(root, f)) else 1 for f in listed)
on_disk = set()
for dirpath, dirnames, filenames in os.walk(root):
    dirnames[:] = [d for d in dirnames if d != ".git"]
    for fn in filenames:
        on_disk.add(os.path.relpath(os.path.join(dirpath, fn), root).replace(os.sep, "/"))
print(n)
PY
)
  problems=$((problems + man_problems))
else
  note "LỖI" "thiếu MANIFEST.json hoặc python3"
fi

# --- 5. Đối chiếu với thư mục/gói thứ hai (tùy chọn) ---
if [ -n "$OTHER" ]; then
  echo
  echo "-- 5. Đối chiếu với: $OTHER --"
  if [ ! -d "$OTHER" ]; then
    note "LỖI" "thư mục đối chiếu không tồn tại: $OTHER"
  else
    drift=0
    while IFS= read -r f; do
      [ -f "$OTHER/$f" ] || continue
      a=$(stat -c%s "$f"); b=$(stat -c%s "$OTHER/$f")
      if [ "$a" != "$b" ]; then
        note "LỖI" "lệch giữa hai bản: $f ($a vs $b bytes)"
        drift=$((drift + 1))
      fi
    done < <(find . -name '*.md' -o -name '*.json' -o -name '*.sh' | sed 's|^\./||' | sort)
    only_here=$(cd "$ROOT" && find . -name '*.md' -not -path './.git/*' | sed 's|^\./||' | sort)
    while IFS= read -r f; do
      [ -e "$OTHER/$f" ] || echo "  [GHI CHÚ] chỉ có ở bản gốc: $f"
    done <<< "$only_here"
    while IFS= read -r f; do
      [ -e "$ROOT/$f" ] || echo "  [GHI CHÚ] chỉ có ở bản đối chiếu: $f"
    done < <(cd "$OTHER" && find . -name '*.md' -not -path './.git/*' | sed 's|^\./||' | sort)
    [ "$drift" -eq 0 ] && echo "  (không có file dùng chung nào lệch kích thước)"
  fi
fi

# --- Kết luận ---
echo
if [ "$problems" -eq 0 ]; then
  echo "== KẾT QUẢ: không phát hiện vấn đề =="
  exit 0
else
  echo "== KẾT QUẢ: $problems vấn đề cần xem =="
  exit 1
fi
