# Failure and Change Log — v0.5

## Mục tiêu

Ghi lỗi thực tế và thử nghiệm thay đổi có thể truy nguyên. Một lỗi được ghi nhận chưa đồng nghĩa nguyên nhân đã biết. Phân biệt rõ **quan sát**, **giả thuyết nguyên nhân**, **thay đổi đã thử** và **kết quả sau thử nghiệm**.

## 1. Phân loại ban đầu

Chọn một hoặc nhiều loại phù hợp:

- `REQ` — yêu cầu bị hiểu sai hoặc bị đổi phạm vi;
- `SEARCH` — tìm kiếm thiếu, tìm kiếm không cần thiết hoặc dừng sớm;
- `SOURCE` — sai nguồn, nguồn lỗi thời/không đủ thẩm quyền, nhầm phiên bản;
- `GROUND` — kết luận không được bằng chứng hỗ trợ;
- `COVERAGE` — bỏ sót tiêu chí/dữ kiện bắt buộc;
- `ACTION` — báo cáo hành động không được xác nhận;
- `REASON` — suy luận không hợp lệ hoặc giả thuyết bị coi như dữ kiện;
- `RUBRIC` — tiêu chí chấm mơ hồ, quá cứng hoặc không phản ánh mục tiêu;
- `ENV` — công cụ, quyền truy cập, dữ liệu hoặc môi trường gây hạn chế;
- `REGRESSION` — sửa một hành vi làm hỏng hành vi đã đạt;
- `EFF` — sử dụng công sức/thời gian không tương xứng;
- `OVERHEAD` — yêu cầu thủ tục, biểu mẫu, tìm kiếm hoặc đánh giá không tạo giá trị tương xứng;
- `OTHER` — loại khác, mô tả cụ thể.

Các nhãn này là taxonomy vận hành được đề xuất cho dự án, không phải phân loại chuẩn nguyên văn của một nguồn.

## 2. Quy trình sau một thất bại

1. **Ghi hiện tượng trước khi giải thích:** lưu yêu cầu, đầu ra và bằng chứng.
2. **Xác định mức ảnh hưởng:** nhiệm vụ không đạt, chất lượng giảm hay chỉ là vấn đề trình bày.
3. **Kiểm tra các lời giải thích cạnh tranh:** AI, prompt, nguồn, rubric, công cụ, trạng thái môi trường.
4. **Đặt giả thuyết có thể kiểm thử:** thay đổi nào được dự đoán sẽ giảm lỗi, và kết quả nào có thể bác bỏ giả thuyết.
5. **Chọn case mục tiêu và case hồi quy:** thêm/sửa case trong `../evaluation/EVALUATION_CASE_SET.md`.
6. **Thử thay đổi:** cố định càng nhiều điều kiện càng tốt; lưu kết quả trước–sau.
7. **Quyết định:** giữ, sửa, hoàn tác hoặc chưa đủ bằng chứng. Không coi một lần thành công là chứng minh tổng quát.

## 3. Sổ theo dõi

| Failure ID | Ngày | Task/Case ID | Hiện tượng quan sát | Loại | Ảnh hưởng | Trạng thái nguyên nhân | Giả thuyết/thay đổi | Case mục tiêu + hồi quy | Kết quả trước–sau | Quyết định/trạng thái |
|---|---|---|---|---|---|---|---|---|---|---|
| `F-001` | 2026-10-12 | `SYS-001` | Bản repo của `PILOT-01` (6880 B) khác bản trong gói v0.5 (7394 B): thiếu tiêu đề `— v0.5`, trường `Mode`, mục ghi chú mức thủ tục | `ENV` | vừa | chưa biết (chỉ xác nhận khác biệt) | Nghi: gói được cập nhật nhưng không sao chép ngược về repo | `scripts/verify_package.sh` (kiểm tra hồi quy) | trước: inventory lệch; sau: khớp gói | đã sửa phần đồng bộ; nguyên nhân gốc `open` |
| `F-002` | 2026-10-12 | `PILOT-01`, `RES-001` | Sau 5 phương án tra cứu, nội dung chương 21 không truy cập được (HTTP 403/CAPTCHA); không có nguồn nêu sáu nguyên tắc | `ENV` | vừa (chặn `OPEN-3`) | đã xác nhận (kiểm soát truy cập nguồn) | Không đề xuất đổi phương pháp | N/A | N/A | `blocked`; giữ nguyên yêu cầu, không dựng đáp án |
| `F-003` | 2026-10-12 | `CONT-001`, `SYS-001` | Hồ sơ handoff chứa chỉ dẫn lỗi thời (mục F/G6 vẫn yêu cầu "chạy Standard" dù Standard đã xong) và không nêu việc repo đã đi trước gói v0.5 | `OTHER` (chất lượng hồ sơ) | vừa | đã xác nhận | Cần đối chiếu next action với bảng DONE/open trước khi giao | `CONT-001` | phát hiện bởi tác nhân tiếp nhận; người chấm xác minh lại | `closed` |
| `F-004` | 2026-10-12 | `PORT-001`, `PORTABLE_SNIPPET.md` | AI khác nhà cung cấp (Claude) nhận snippet v0.5 trả lời **báo cáo việc tuân thủ quy tắc** và trả lời lan sang nội dung không được hỏi, thay vì chỉ áp dụng | `OVERHEAD` + `REQ` | cao (làm hỏng mục đích của snippet) | đã xác nhận (lỗi thiết kế snippet) | Bỏ tên các mức khỏi snippet; thêm mục "TRẢ LỜI" quy định im lặng | `PORT-002` | viết lại snippet v0.6; chạy `RUN-PORT-002-1` | `testing` |
| `F-XXX` | `[YYYY-MM-DD]` | `[id]` | `[mô tả cụ thể]` | `[tag]` | `[thấp/vừa/cao + lý do]` | `[đã xác nhận/giả thuyết/chưa biết]` | `[điền]` | `[IDs]` | `[bằng chứng]` | `[open/testing/kept/reverted/closed]` |

Chi tiết của `F-001`, `F-002`, `F-003`, `F-004` ở mục 6.

## 4. Mẫu chi tiết khi cần

### [Failure ID] — [Tiêu đề]

- **Task/Case liên quan:**
- **Yêu cầu gốc:**
- **Đầu ra/hành động thực tế:**
- **Bằng chứng cho thấy có lỗi:**
- **Tác động:**
- **Loại lỗi:**
- **Nguyên nhân đã xác nhận:**
- **Giả thuyết chưa xác nhận:**
- **Các giải thích thay thế:**
- **Thay đổi dự kiến và cơ sở:**
- **Case mục tiêu:**
- **Case hồi quy:**
- **Kết quả thử nghiệm trước/sau:**
- **Quyết định:** `[giữ / điều chỉnh / hoàn tác / cần thêm dữ liệu]`
- **Bài học có thể tái sử dụng:**
- **Ngày đóng / điều kiện đóng:**

## 5. Khi nào đóng lỗi?

Chỉ đóng khi:
- mô tả và bằng chứng đã lưu;
- lý do đóng được ghi;
- nếu đã thay đổi phương pháp, đã chạy case mục tiêu và các case hồi quy phù hợp, hoặc ghi rõ vì sao chưa thể chạy;
- không còn nhầm giả thuyết với nguyên nhân đã xác nhận.

Nếu lỗi không tái hiện được, chuyển sang `unreproduced` hoặc `insufficient evidence`; không tự coi là đã sửa.


## 6. Ghi nhận thực tế — 2026-10-12

### F-001 — Bản repo của PILOT-01 lệch khỏi gói phát hành v0.5

- **Task/Case liên quan:** `SYS-001`; ví dụ `examples/PILOT-01_book_six_principles.md`; liên quan `FLEX-002`/`RES-001`.
- **Hiện tượng quan sát:** file trong repo (6880 bytes, SHA-256 `692ab171a5ce`) khác file trong gói phát hành `AI_Working_System_v0.5.zip` và thư mục `/home/ndhson/AI_Working_System_v0.5/` (7394 bytes, SHA-256 `1190a0ee107d`). Bản gói có tiêu đề `— v0.5`, trường `Mode: Rigorous` và mục "Ghi chú v0.5 về mức thủ tục"; bản repo thiếu ba phần này.
- **Bằng chứng:** `FILE_INVENTORY.md` ghi PILOT-01 = 7394 bytes / `1190a0ee107d`, tức inventory và gói khớp nhau nhưng cùng khác bản repo; kiểm tra bằng `cmp`/`diff`/`sha256sum` ngày 2026-10-12.
- **Tác động:** vừa. Nội dung phương pháp không sai, nhưng bản repo thiếu thông tin mode và ghi chú v0.5, và mọi kiểm tra toàn vẹn dựa trên inventory sẽ báo lệch. Đây là lỗi đóng gói/đồng bộ, không phải lỗi suy luận.
- **Loại lỗi:** `ENV` (đồng bộ artifact/đóng gói).
- **Nguyên nhân đã xác nhận:** không có; chỉ xác nhận được sự khác biệt, chưa xác định bước nào gây ra.
- **Giả thuyết chưa xác nhận:** bản v0.5 được cập nhật trong gói/thư mục phát hành nhưng không được sao chép ngược lại repo trước khi commit.
- **Thay đổi đã thực hiện:** khôi phục `examples/PILOT-01_book_six_principles.md` trong repo về đúng bản v0.5 của gói (thêm tiêu đề `— v0.5`, trường `Mode`, và mục ghi chú mức thủ tục).
- **Case mục tiêu/hồi quy:** chưa tạo case mới; dùng script kiểm tra ở mục dưới làm kiểm tra hồi quy.
- **Kết quả trước–sau:** trước: inventory báo lệch 7394/6880 và hash `1190a0ee107d`/`692ab171a5ce`; sau: file khớp gói (`diff` không khác biệt), inventory khớp lại.
- **Quyết định:** đã sửa phần đồng bộ; **nguyên nhân gốc vẫn mở** (`open`) cho tới khi xác định được bước gây lệch.
- **Bài học có thể tái sử dụng:** mọi lần cập nhật file phải kiểm tra lại `FILE_INVENTORY.md`/`MANIFEST.json`; nên có kiểm tra tự động thay vì dựa vào trí nhớ.
- **Ngày đóng / điều kiện đóng:** chưa đóng; đóng khi có quy trình đóng gói xác định và kiểm tra tự động chạy sạch. **Cập nhật 2026-10-12:** loại lỗi này nay được xử lý ở mức hệ thống — repository là nguồn sự thật duy nhất, gói đã ngừng dùng (`F-003`), và `scripts/verify_package.sh` có chế độ đối chiếu hai bản.

### Kiểm tra hồi quy mới — `scripts/verify_package.sh`

- **Mục đích:** phát hiện kích thước/hash inventory lệch, liên kết Markdown tương đối hỏng, và chênh lệch giữa `MANIFEST.json` với file trên đĩa.
- **Cách chạy:** `bash scripts/verify_package.sh` (chỉ đọc, không sửa file).
- **Kết quả ngày 2026-10-12 (sau khi sửa F-001):** 0 lỗi; 1 cảnh báo rằng `scripts/verify_package.sh` chưa được khai báo trong `MANIFEST.json` (đã xử lý cùng ngày).
- **Giới hạn:** không kiểm tra nội dung ngữ nghĩa; không thay thế việc đọc và đánh giá thật.

### F-002 — PILOT-01/RES-001 bị chặn ở quyền truy cập nguồn

- **Task/Case liên quan:** `PILOT-01`, `RES-001`, `FLEX-002`.
- **Hiện tượng quan sát:** sau các phương án tra cứu hợp lý (biên mục thư viện, repo mã nguồn chính thức, nền tảng nhà xuất bản, reader proxy, archive.org), nội dung chương `Learning about Processes and Threads` không truy cập được (HTTP 403, CAPTCHA); không tìm thấy nguồn nào nêu danh sách sáu nguyên tắc.
- **Loại lỗi:** `ENV` — giới hạn quyền truy cập, không phải lỗi bịa nguồn hay suy luận sai.
- **Tác động:** không hoàn thành được `OPEN-3`; chưa thể chấm C1–C3 của PILOT-01.
- **Nguyên nhân:** nguồn trả phí/kiểm soát truy cập.
- **Thay đổi đề xuất:** chưa đề xuất thay đổi phương pháp; vấn đề nằm ở quyền truy cập, không phải quy trình.
- **Quyết định:** ghi nhận `blocked`; giữ nguyên yêu cầu, không dựng đáp án thay thế.
- **Ngày đóng / điều kiện đóng:** đóng khi có quyền truy cập hợp pháp tới nội dung chương.

### F-003 — Hồ sơ handoff chứa chỉ dẫn lỗi thời và thiếu thông tin lệch repo-vs-gói

- **Task/Case liên quan:** `CONT-001`, `SYS-001`.
- **Hiện tượng quan sát:** trong lần chạy `RUN-CONT-001-1`, tác nhân tiếp nhận (ngữ cảnh mới, chỉ đọc) chỉ ra: (a) mục F và G6 của `SYS-001` vẫn ghi next action "đồng thời chạy mức Standard" dù Standard đã hoàn thành (`SYS-002`, DONE-7, CP-6); (b) hồ sơ không nêu việc repo đã đi trước gói v0.5.
- **Bằng chứng:** người chấm tự xác minh lại bằng lệnh: `PILOT-01` repo = 12241 B / `ba8c21471bfe` so với gói `/home/ndhson/AI_Working_System_v0.5/` = 7394 B / `1190a0ee107d`; `git show HEAD:examples/PILOT-01_book_six_principles.md` = 6880 B / `692ab171a5ce`; `bash scripts/verify_package.sh` trả EXIT=0 cho **cả hai** thư mục.
- **Loại lỗi:** `OTHER` (chất lượng/chất lượng hồ sơ handoff), không phải lỗi suy luận của AI.
- **Tác động:** vừa. Không sai nội dung phương pháp, nhưng một AI tiếp nhận dựa vào mục F/G6 sẽ lặp lại việc đã xong (chạy Standard lần nữa) — đúng loại lỗi mà `CONT-001` được tạo ra để phát hiện.
- **Nguyên nhân đã xác nhận:** các mục F/G6 được viết ở CP-5 (khi Standard chưa chạy) và không được cập nhật khi CP-6 hoàn tất Standard.
- **Thay đổi đã thực hiện:** cập nhật mục F và G6 của `SYS-001` để next action chỉ còn `CONT-001`; ghi rõ trạng thái lệch repo-vs-gói; **bổ sung chế độ đối chiếu hai thư mục vào `scripts/verify_package.sh`** (`bash scripts/verify_package.sh <bản-gốc> <bản-đối-chiếu>`) để tự động phát hiện lệch giữa repo và gói.
- **Kết quả trước–sau:** trước: script không có cách nào phát hiện lệch repo-vs-gói (chỉ kiểm tra nội bộ). Sau: chạy với gói v0.5, script báo đúng 10 file lệch + 1 file chỉ có ở repo (`tasks/SYS-002_doc_consistency_check.md`) và thoát mã 1. Đã kiểm chứng bằng cách chạy thật trên hai thư mục.
- **Bài học có thể tái sử dụng:** trước khi giao một Task Run, phải đối chiếu next action với bảng DONE/open — trường đã điền đủ chưa chắc đã còn đúng. Và: kiểm tra tính nhất quán *nội bộ* một thư mục không phát hiện được lệch *giữa hai* thư mục; cần kiểm tra chéo khi có nhiều bản.
- **Ngày đóng / điều kiện đóng:** `closed` ngày 2026-10-12. Phần "chỉ dẫn lỗi thời" đã sửa và có kiểm tra chéo; phần lệch repo-vs-gói đã được người dùng quyết định (chốt repository làm nguồn sự thật duy nhất, ngừng dùng gói) — xem mục "Lệch repo-vs-gói v0.5" bên dưới.

### Lệch repo-vs-gói v0.5 — đã xử lý (`closed`)

- **Hiện tượng:** sau các lần chạy pilot, repo đã được cập nhật nhưng gói v0.5 (`/home/ndhson/AI_Working_System_v0.5/` và `AI_Working_System_v0.5.zip`) vẫn là snapshot trước pilot. Các file lệch ít nhất gồm: `examples/PILOT-01_book_six_principles.md` (12241 vs 7394), `README.md` (9246 vs 8440), `CHANGELOG.md` (5423 vs 4051), `tasks/SYS-001_...md` (17972 vs 12840), `AI_WORKING_SYSTEM_PROJECT_HANDOFF.md` (37182 vs 34562).
- **Quan hệ với F-001:** F-001 sửa chiều ngược lại (gói mới hơn repo). Lần này repo mới hơn gói. Cùng một lớp lỗi: không có nguồn sự thật duy nhất và không có kiểm tra chéo giữa hai nơi.
- **Giới hạn của công cụ:** `scripts/verify_package.sh` chỉ kiểm tra nhất quán *nội bộ* một thư mục, nên báo sạch cho cả hai dù chúng khác nhau. **Đã khắc phục ngày 2026-10-12:** script nay nhận tham số thứ hai là thư mục đối chiếu và báo lệch kích thước từng file dùng chung cùng các file chỉ có ở một bên. Chạy `bash scripts/verify_package.sh . /home/ndhson/AI_Working_System_v0.5` cho kết quả 10 file lệch + 1 file chỉ có ở repo, mã thoát 1.
- **Trạng thái:** `closed` ngày 2026-10-12 theo quyết định của người dùng. **Repository (nhánh `main`) được chọn làm nguồn sự thật duy nhất**; gói `AI_Working_System_v0.5/` và `AI_Working_System_v0.5.zip` **ngừng dùng**. Đã kiểm tra trước khi ngừng dùng: không có file nào chỉ tồn tại trong gói — gói là tập con của repo, nên không mất nội dung. Công cụ phát hiện lệch (`scripts/verify_package.sh` chế độ hai thư mục) vẫn giữ để dùng cho các bản sao sau này. Ghi nhận `F-003` trong `CHANGELOG.md` và cập nhật `README.md`/handoff cho khớp.

### F-004 — Snippet v0.5 gây "báo cáo tuân thủ" ở AI khác nhà cung cấp

- **Task/Case liên quan:** `PORT-001`, `PORTABLE_SNIPPET.md`, `FLEX-001`/`FLEX-002`.
- **Yêu cầu gốc:** dán snippet vào hướng dẫn tùy chỉnh của một AI để AI **áp dụng** quy tắc khi làm việc.
- **Hiện tượng quan sát (do người dùng báo cáo, thử với Claude):** AI trả lời **lan sang nội dung không liên quan đến câu hỏi**, và **tự trình bày mức độ tuân thủ** quy định v0.5. Người dùng chỉ cần AI áp dụng, và chỉ muốn nghe về cách áp dụng khi hỏi thẳng.
- **Loại lỗi:** `OVERHEAD` (thủ tục/thông báo không tạo giá trị) + `REQ` (không đáp đúng yêu cầu về hình thức trả lời).
- **Tác động:** cao — làm hỏng đúng mục đích của snippet. Nếu AI báo cáo quy trình thay vì im lặng áp dụng, snippet trở thành nguồn nhiễu thay vì công cụ.
- **Nguyên nhân đã xác nhận (lỗi thiết kế snippet, không phải lỗi model):**
  1. Cả 8 điều của bản v0.5 chỉ nói về **tính trung thực**; **không điều nào** quy định hình thức trả lời → AI tự lấp chỗ trống bằng báo cáo tuân thủ.
  2. Bản v0.5 **đặt tên** các mức (`QUICK`/`STANDARD`/`RIGOROUS`) → cung cấp từ vựng để AI nhại lại trong câu trả lời.
  3. Bản v0.5 viết như **tài liệu** (tiêu đề + mục, câu dài giải thích) → AI hiểu là bản đặc tả cần tóm tắt, không phải hợp đồng hành vi.
  4. Không có chỉ dẫn **im lặng**.
- **Bằng chứng cho thấy phép thử trước đó không bắt được lỗi:** `RUN-PORT-001-1` chạy với **cùng mô hình** đã viết snippet và chỉ được hỏi về nội dung, không quan sát hình thức trả lời → kết luận "đạt" ở lần đó **không** phát hiện được lỗi này. Đây là ví dụ cụ thể cho giới hạn đã ghi ở mục C của `SYS-001`: kiểm tra cùng mô hình không thay thế được kiểm tra khác nhà cung cấp.
- **Thay đổi đã thực hiện (v0.6):** viết lại `templates/PORTABLE_SNIPPET.md`:
  - Thêm mục **TRẢ LỜI** đứng đầu: không mở bài, không nhắc lại yêu cầu, không kể quy trình, không nêu mức, không báo cáo tuân thủ, chỉ giải thích khi được hỏi thẳng, độ dài theo độ khó thật.
  - **Bỏ hoàn toàn** tên `Quick`/`Standard`/`Rigorous` khỏi snippet; mô tả bằng hành vi.
  - Đổi sang văn phong **mệnh lệnh**, câu ngắn.
- **Case mục tiêu:** `PORT-002` — kiểm tra hình thức trả lời (không báo cáo quy trình) chứ không chỉ nội dung.
- **Kết quả thử nghiệm trước–sau:** `RUN-PORT-002-1` (cùng mô hình đã viết bản sửa): AI trả lời thẳng, **không** nêu tên mức, **không** báo cáo tuân thủ, không mở bài; từ chối bịa nội dung nguồn không truy cập được. Bản sửa có hiệu quả trong lần chạy này.
- **Quyết định:** `testing` — chưa đóng. Lần chạy xác nhận vẫn dùng **cùng mô hình**; cần người dùng thử lại với AI khác nhà cung cấp (chính Claude đã phát hiện lỗi) để xác nhận.
- **Bài học có thể tái sử dụng:** (a) quy tắc về *tính trung thực* không tự động tạo ra quy tắc về *hình thức trả lời* — thiếu phần sau thì AI lấp bằng báo cáo quy trình; (b) **đừng đặt tên cho cơ chế nội bộ** trong chỉ dẫn dành cho AI — tên trở thành thứ AI nhắc lại; (c) phép thử cùng mô hình có điểm mù hệ thống, và điểm mù đó chỉ lộ ra khi thử khác nhà cung cấp.
- **Ngày đóng / điều kiện đóng:** đóng khi người dùng xác nhận với AI khác nhà cung cấp rằng AI không còn báo cáo tuân thủ và không trả lời lan.

## 7. Ghi nhận vấn đề về tính linh hoạt

Không coi việc dùng ít bước là lỗi nếu kết quả đạt các tiêu chí bắt buộc. Không coi việc dùng nhiều bước là tốt chỉ vì hồ sơ dài. Khi ghi lỗi về mức thủ tục, lưu dấu hiệu cụ thể (ví dụ số lượt không cần thiết, trường lặp lại, kiểm tra thiết yếu bị bỏ qua) và liên kết đến case FLEX phù hợp.
