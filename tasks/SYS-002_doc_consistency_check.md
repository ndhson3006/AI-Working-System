# Task Run Mini — SYS-002 — Thêm kiểm tra tính nhất quán cho bộ tài liệu — v0.5

> Dành cho **Standard**: nhiệm vụ cần một chút cấu trúc/lưu lại nhưng chưa cần full Task Run. Đây là lần chạy pilot đầu tiên của mini template; ghi lại cả kết quả và mức công sức quan sát được.

## 1. Nhiệm vụ
- **Task ID:** `SYS-002`
- **Yêu cầu gốc:** “tiếp tục việc cải tiến cho dự án này” — cụ thể hóa thành: bổ sung một cách kiểm tra tự động để phát hiện lệch giữa `FILE_INVENTORY.md`/`MANIFEST.json` và file thật, tránh tái diễn lỗi đã phát hiện ở `F-001`.
- **Kết quả cần đạt:** một script chỉ-đọc chạy được, phát hiện đúng các lớp lỗi đã gặp, và có kết quả chạy được ghi lại.
- **Mode và lý do:** `Standard` — có nhiều yêu cầu nhỏ, cần giữ hồ sơ và kết quả kiểm tra, nhưng không cần nguồn gốc bên ngoài hay kiểm thử môi trường thật.
- **Ràng buộc/giả định có ý nghĩa:** không thêm dependency ngoài `bash` + `python3` đã có; script không được sửa file; phải chạy được trong môi trường hiện tại.

## 2. Tiêu chí thành công
| ID | Tiêu chí bắt buộc | Bằng chứng chấp nhận |
|---|---|---|
| C1 | Phát hiện được lệch kích thước/hash trong `FILE_INVENTORY.md` | Chạy trên trạng thái lỗi thật (`F-001`) → báo `[LỖI]` đúng file, `EXIT=1` |
| C2 | Phát hiện được liên kết Markdown tương đối hỏng | Thêm liên kết hỏng tạm vào `README.md` → báo `[LỖI] ./README.md -> khong-ton-tai-xyz.md`; khôi phục → sạch |
| C3 | Phát hiện được chênh lệch giữa `MANIFEST.json` và file trên đĩa | Báo đúng file thiếu/không khai báo (đã quan sát với `scripts/verify_package.sh` và `tasks/SYS-002_...md`) |
| C4 | Trả mã thoát khác 0 khi có lỗi, 0 khi sạch | `EXIT=1` khi có lỗi; `EXIT=0` khi sạch |

## 3. Thực hiện và bằng chứng chính

| Hành động/kết quả | Bằng chứng/nguồn | Trạng thái xác minh/giới hạn |
|---|---|---|
| Viết `scripts/verify_package.sh` (4 phần: inventory size, inventory hash, liên kết, manifest) | File trong repo; `sha256sum` | Đã quan sát |
| Chạy trên trạng thái lỗi thật (PILOT-01 lệch 7394/6880) | Output: 2 `[LỖI]` kích thước + hash; `EXIT=1` | Đã xác minh |
| Chạy sau khi sửa `F-001` | Output: không có `[LỖI]`; `EXIT=0` | Đã xác minh |
| Thêm liên kết hỏng tạm vào `README.md` rồi chạy | Output: `[LỖI] ./README.md -> khong-ton-tai-xyz.md`; `EXIT=1`; sau khi khôi phục thì sạch | Đã xác minh |
| Thêm `scripts/verify_package.sh` vào `MANIFEST.json` để hết cảnh báo | `MANIFEST.json`, chạy lại | Đã xác minh |

## 4. Kết quả
- **Kết luận/đầu ra:** `scripts/verify_package.sh` hoạt động, phát hiện đúng lớp lỗi `F-001` và trả mã thoát đúng.
- **Trạng thái:** hoàn thành cho C1–C4.
- **Tiêu chí đạt:** C1 (2 lỗi đúng file, `EXIT=1`), C2 (liên kết hỏng tạm trong `README.md` bị báo đúng; sau khi khôi phục thì sạch), C3 (cảnh báo file không khai báo, sau đó sạch), C4 (`EXIT=0` khi sạch, `EXIT=1` khi lỗi).
- **Tiêu chí chưa đạt/chưa thể đánh giá:** N/A.
- **Giới hạn còn lại:** script chỉ kiểm tra cấu trúc, không kiểm tra nội dung ngữ nghĩa; không phát hiện được sai sót về phương pháp.
- **Bước tiếp theo:** N/A cho nhiệm vụ này; có thể tích hợp vào quy trình đóng gói sau này.

## 5. Bàn giao (chỉ khi công việc còn tiếp tục)
- **Last checkpoint:** script đã viết, đã chạy sạch và đã khai báo trong manifest.
- **Open items:** chưa tự động chạy trong quy trình đóng gói (chưa có hook/CI).
- **Decisions to preserve / giả định:** dùng `bash` + `python3` sẵn có, không thêm dependency; giữ script chỉ-đọc để an toàn.
- **Next action:** nếu muốn, gọi script này trước mỗi lần tạo gói phát hành.
- **Related files/source of truth:** `scripts/verify_package.sh`; `FILE_INVENTORY.md`; `MANIFEST.json`.

## 6. Cải tiến (chỉ khi có lỗi/bài học đáng lưu)
- **Quan sát cụ thể:** mini template đủ chỗ cho nhiệm vụ này mà không cần mục B/C/D đầy đủ của full template.
- **Nguyên nhân:** nhiệm vụ có một đầu ra rõ và một phép kiểm tra xác định, không cần evidence record theo nguồn.
- **Đề xuất và cách kiểm tra:** giữ nguyên cấu trúc mini template; khi nhiệm vụ cần nguồn ngoài hoặc kiểm thử môi trường thật thì nâng lên full template (đã ghi trong hướng dẫn của template).

## Ghi chú pilot — mức công sức quan sát được

- **Số mục thực sự phải điền:** 4/6 (mục 5, 6 điền ngắn; không cần mục B–G đầy đủ).
- **Công sức so với full template:** ước tính ít hơn đáng kể vì không phải lập bảng evidence theo nguồn hay ma trận rubric; **đây là quan sát định tính, chưa đo bằng thời gian**.
- **Điều chưa kết luận được:** không so sánh có kiểm soát với việc dùng full template cho cùng nhiệm vụ này; không đo thời gian.
- **Đánh giá R8:** đạt — mức thủ tục tương xứng; không có bước thừa quan sát được, không bỏ sót kiểm tra thiết yếu.
