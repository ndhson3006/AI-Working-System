# Migration guide — v0.3 → v0.4

## Lý do có v0.4

Theo quy tắc versioning của bộ tài liệu, thay đổi về chức năng trong template và quy trình vận hành được ghi nhận bằng minor version. Vì vậy, v0.3 được giữ nguyên làm bản trước; v0.4 bổ sung cơ chế `Continuation / Handoff`.

## Thay đổi chính

1. `templates/TASK_RUN_TEMPLATE.md`: bổ sung mục G để lưu trạng thái, checkpoint, việc đã hoàn tất, việc còn mở, quyết định cần giữ, giả định cần xác minh, bước kế tiếp và tài liệu cần nạp.
2. `WORKING_AGREEMENT.md`: quy định cách tiếp tục cùng Task ID qua phiên trò chuyện hoặc AI khác.
3. `README.md`: bổ sung cách sử dụng Task Run hiện có để tiếp tục công việc.
4. `examples/PILOT-01_book_six_principles.md`: thêm checkpoint bàn giao cho một nhiệm vụ còn ở trạng thái draft.
5. `evaluation/EVALUATION_CASE_SET.md`: thêm `CONT-001` để kiểm tra hành vi tiếp tục công việc; hiện vẫn ở trạng thái `draft`.
6. `tasks/SYS-001_ai-working-system-development.md`: hồ sơ trạng thái cho quá trình phát triển chính bộ hệ thống này.

## Cách chuyển một repository cá nhân đã dùng v0.3

1. Giữ bản v0.3 hoặc tag/commit hiện tại để có thể quay lại.
2. Mang các cập nhật của v0.4 vào repository; không ghi đè các Task Run riêng của bạn.
3. Với công việc đang diễn ra, bổ sung mục G vào Task Run hiện có và điền checkpoint dựa trên các bằng chứng thực tế. Không tự coi nội dung đã thảo luận là đã hoàn thành nếu chưa có artifact/bằng chứng phù hợp.
4. Với nhiệm vụ mới, dùng template v0.4 từ đầu.
5. Thử `CONT-001` một lần trước khi phụ thuộc vào handoff cho công việc quan trọng. Ghi kết quả thực tế; không xem case draft như một bài test đã được xác thực.

## Giới hạn

v0.4 chỉ cung cấp cấu trúc ghi nhận và chỉ dẫn. Nó không tự động đồng bộ file, tự cấp quyền truy cập cho AI hoặc chứng minh rằng AI đã đọc các file. Việc đó phụ thuộc vào công cụ, quyền truy cập và cách bạn vận hành repository. Hiệu quả của continuation/handoff vẫn cần được kiểm tra trong sử dụng thực tế.
