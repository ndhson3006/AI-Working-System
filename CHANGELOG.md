# Changelog

## v0.4 — 2026-10-12

- Bổ sung mục `G. Continuation / Handoff` vào Task Run Template để lưu trạng thái, checkpoint, việc đã hoàn thành, việc còn mở, quyết định cần giữ, bước tiếp theo và file liên quan.
- Bổ sung quy tắc tiếp tục cùng Task ID qua nhiều phiên hoặc nhiều AI; không khởi động lại và không lặp việc đã hoàn thành nếu không có lý do mới.
- Cập nhật Working Agreement, README và ví dụ PILOT-01 để áp dụng cùng một cơ chế bàn giao.
- Tạo `tasks/SYS-001_ai-working-system-development.md` làm hồ sơ trạng thái cho chính quá trình phát triển hệ thống.
- Bổ sung case `CONT-001` để kiểm tra khả năng khôi phục trạng thái và tiếp tục công việc.
- Lý do đổi minor version: đây là thay đổi chức năng trong template và quy trình vận hành, phù hợp quy tắc versioning đã nêu.
- Trạng thái: cấu trúc đã được cập nhật; hiệu quả của cơ chế continuation chưa được xác minh bằng thử nghiệm thực tế.

## v0.3 — 2026-10-11

- Hoàn thiện bộ tài liệu khởi đầu cho AI Working System.
- Tách tài liệu quy tắc chung khỏi template thực hiện từng nhiệm vụ.
- Bổ sung rubric đánh giá, case set khởi đầu, protocol so sánh nhiều AI, Failure and Change Log, nguồn và phương pháp, cùng ví dụ PILOT-01.
- Làm rõ sự khác biệt giữa hành động được báo cáo và hành động/kết quả có bằng chứng quan sát được.
- Không thiết lập trọng số chung hoặc ngưỡng đạt tổng hợp khi chưa có căn cứ thực nghiệm.
- Seed cases được đánh dấu `draft`; cần hoàn thiện nguồn tham chiếu và xác minh trước khi dùng như benchmark.

## Quy tắc versioning

- **Patch** (ví dụ 0.3.1): sửa lỗi diễn đạt hoặc cấu trúc mà không đổi phương pháp.
- **Minor** (ví dụ 0.4): thay đổi cách làm, rubric hoặc template dựa trên nguồn/kinh nghiệm và ghi rõ tác động.
- **Major** (ví dụ 1.0): chỉ dùng sau khi quy trình đủ ổn định, được thử nghiệm và có tiêu chí chấp nhận được định nghĩa rõ.

Số phiên bản là cách quản lý tài liệu nội bộ, không hàm ý chứng nhận hoặc mức độ trưởng thành bên ngoài.
