# Changelog — AI Working System

## v0.5 — 2026-10-12

- **Pilot đầu tiên và sửa lỗi đồng bộ artifact (cập nhật cùng ngày, không đổi phương pháp):**
  - Chạy pilot Quick (`FLEX-001`) và Rigorous (`FLEX-002`/`PILOT-01`); ghi kết quả quan sát được vào `evaluation/EVALUATION_CASE_SET.md` (`RUN-FLEX-001-1`, `RUN-FLEX-002-1`) và vào mục B–G của `examples/PILOT-01_book_six_principles.md`.
  - Phát hiện và sửa lỗi đồng bộ: bản repo của `examples/PILOT-01_book_six_principles.md` thiếu tiêu đề `— v0.5`, trường `Mode` và mục ghi chú mức thủ tục so với bản trong gói phát hành; đã khôi phục khớp gói. Ghi nhận là `F-001` trong `improvement/FAILURE_CHANGE_LOG.md`.
  - Ghi nhận `F-002`: `PILOT-01` bị chặn ở quyền truy cập nội dung chương 21 (HTTP 403/CAPTCHA). Ấn bản và chương đã xác minh; nội dung sáu nguyên tắc vẫn **chưa** xác minh.
  - Thêm `scripts/verify_package.sh` để kiểm tra kích thước/hash trong inventory, liên kết Markdown tương đối và chênh lệch giữa `MANIFEST.json` với file trên đĩa.
  - Cập nhật hồ sơ `SYS-001` (checkpoint CP-5, việc còn mở, next action) và đồng bộ `MANIFEST.json`, `FILE_INVENTORY.md`.
  - Trạng thái: pilot mới chạy 1 lần cho mỗi mức; **không** có kết luận rằng v0.5 tốt hơn v0.4.

- **Pilot `CONT-001` — kiểm tra continuation/handoff (cập nhật cùng ngày, không đổi phương pháp):**
  - Giao `tasks/SYS-001_ai-working-system-development.md` cho một tác nhân ở ngữ cảnh mới (chỉ đọc, không kèm lịch sử) và ghi kết quả là `RUN-CONT-001-1` trong `evaluation/EVALUATION_CASE_SET.md`.
  - Kết quả: 5/5 điều kiện bắt buộc đạt — giữ đúng Task ID/mục tiêu, chọn đúng next action, không lặp việc đã xong, phân biệt `confirmed` với `reported`/`assumed`, không báo đã sửa file.
  - Giới hạn: tác nhân tiếp nhận dùng **cùng mô hình**; chưa kiểm chứng được handoff qua nhà cung cấp/mô hình khác. Không đo thời gian/lượt.
  - Ghi nhận `F-003`: hồ sơ handoff chứa chỉ dẫn lỗi thời (mục F/G6 vẫn yêu cầu "chạy Standard" dù Standard đã xong) và không nêu việc repo đã đi trước gói v0.5. Đã sửa mục F/G6.
  - Ghi nhận lệch repo-vs-gói v0.5 (repo mới hơn gói) — `open`, chờ quyết định nguồn sự thật.
  - Mở rộng `scripts/verify_package.sh` với chế độ đối chiếu hai thư mục (`... <bản-gốc> <bản-đối-chiếu>`): báo lệch kích thước từng file dùng chung và file chỉ có ở một bên. Đã chạy thật, phát hiện 10 file lệch + 1 file chỉ có ở repo.
  - **Nguồn sự thật được chốt:** repository (nhánh `main`). Gói `AI_Working_System_v0.5/` và `AI_Working_System_v0.5.zip` ngừng dùng — đã kiểm tra là tập con của repo nên không mất nội dung. Đóng `F-003`.

- **Tính di động của quy tắc (cập nhật cùng ngày, không đổi phương pháp):**
  - Thêm `templates/PORTABLE_SNIPPET.md`: bản rút gọn của quy tắc làm việc để dán vào hướng dẫn tùy chỉnh của AI bất kỳ. Hai biến thể: đầy đủ (~2.8 KB) và tối thiểu (~1.2 KB) cho nơi giới hạn ký tự chặt.
  - Chạy `PORT-001` lần đầu (`RUN-PORT-001-1`): tác nhân chỉ nhận bản tối thiểu chọn đúng mức cho hai loại nhiệm vụ và **từ chối bịa** nội dung nguồn không truy cập được.
  - **Giới hạn:** lần chạy dùng cùng mô hình đã viết snippet; tính di động sang AI khác nhà cung cấp vẫn **chưa được chứng minh** (`OPEN-6`). Kết luận "đạt" của lần này sau đó được chứng minh là **sai một phần** — xem mục `F-004` bên dưới.

- **Sửa snippet gây "báo cáo tuân thủ" ở AI khác nhà cung cấp (cập nhật cùng ngày, không đổi phương pháp):**
  - Người dùng thử snippet v0.5 với **Claude** và báo lại: AI **báo cáo việc tuân thủ quy tắc** và trả lời lan sang nội dung không được hỏi, thay vì chỉ áp dụng. Ghi nhận là `F-004` (`OVERHEAD` + `REQ`, tác động cao).
  - **Nguyên nhân đã xác nhận là lỗi thiết kế snippet, không phải lỗi model:** cả 8 điều của bản cũ chỉ nói về tính trung thực, không điều nào quy định hình thức trả lời; bản cũ đặt tên các mức (`QUICK`/`STANDARD`/`RIGOROUS`) nên AI có sẵn từ vựng để nhắc lại; văn phong tài liệu khiến AI tưởng phải tóm tắt; không có chỉ dẫn im lặng.
  - Viết lại `templates/PORTABLE_SNIPPET.md` thành **v0.6**: mục **TRẢ LỜI** đứng đầu (không mở bài, không kể quy trình, không nêu mức, không báo cáo tuân thủ, chỉ giải thích khi được hỏi thẳng), **bỏ hoàn toàn tên các mức**, chuyển sang văn phong mệnh lệnh câu ngắn. Hai biến thể: ~2.9 KB và ~1.5 KB.
  - Thêm case `PORT-002` để kiểm tra **hình thức trả lời** chứ không chỉ nội dung — đúng loại lỗi mà `PORT-001` không đo được. Chạy `RUN-PORT-002-1`.
  - **Điểm mù đã lộ ra:** `RUN-PORT-001-1` chạy cùng mô hình đã viết snippet và chỉ hỏi về nội dung, nên kết luận "đạt" của nó **không** phát hiện được `F-004`. Đây là bằng chứng cụ thể cho giới hạn đã ghi ở mục C của `SYS-001`.
  - **Trạng thái:** `F-004` là `testing`, **chưa đóng**. `RUN-PORT-002-1` vẫn dùng cùng mô hình đã viết bản sửa; chỉ người dùng xác nhận lại bằng AI khác nhà cung cấp mới đủ cơ sở đóng.
  - Bổ sung quy tắc vào nguồn: `WORKING_AGREEMENT.md` mục 1 có thêm tiểu mục **"Chỉ áp dụng, không báo cáo"** và mục 2 có thêm điều **9** cùng nội dung, để bản rút gọn không phải là quy tắc không có nguồn. Nếu chỉ sửa snippet mà không sửa `WORKING_AGREEMENT.md`, lần sau tạo lại snippet từ nguồn sẽ làm mất bản sửa này.
  - Thêm chiều rubric **R9 — Hình thức trả lời (chỉ áp dụng, không báo cáo)** vào `evaluation/EVALUATION_RUBRIC.md`, kèm lưu ý rằng R9 **không** đo độ ngắn mà đo việc không thông báo quy trình. Trước đó không chiều nào chấm được lỗi này: R4 chỉ đo phạm vi, R5 chỉ đo tính minh bạch.
  - **Câu hỏi versioning còn mở:** theo quy tắc versioning ở cuối file này, thay đổi quy tắc vận hành thuộc mức **minor**, tức sẽ là `v0.6`. Phiên này **chưa** tự nâng version — cần người dùng quyết định. Ghi chú: số `v0.6` trong `templates/PORTABLE_SNIPPET.md` là số hiệu **của riêng snippet**, không phải version của hệ thống.

- Bổ sung `AI_WORKING_SYSTEM_PROJECT_HANDOFF.md` vào gói phân phối để AI khác có thể khôi phục bối cảnh, lịch sử quyết định, giới hạn và next actions mà không phải dựa vào lịch sử hội thoại.
- Đồng bộ README, hồ sơ `SYS-001`, manifest và file inventory để tham chiếu tài liệu handoff. Đây là cập nhật đóng gói/tài liệu, không thay đổi phương pháp vận hành và không nâng version lên v0.6.

- Thêm cơ chế chọn mức thủ tục Quick / Standard / Rigorous theo độ phức tạp, rủi ro và nhu cầu lưu vết.
- Thêm `TASK_RUN_MINI_TEMPLATE.md` cho Standard; full template dành cho Rigorous/công việc dài hạn.
- Làm rõ template có tính mô-đun: không cần điền tất cả trường; `N/A` và bỏ qua phần không liên quan là hợp lệ.
- Thêm hướng dẫn chuyển mức trong khi thực hiện khi xuất hiện rủi ro, mâu thuẫn hoặc nhu cầu kiểm chứng mới.
- Cập nhật rubric để chỉ đánh giá các chiều liên quan; bổ sung R8 về tính tương xứng của quy trình.
- Thêm các seed cases `FLEX-001`–`FLEX-004` để kiểm thử cả làm quá mức và làm thiếu; tất cả vẫn ở trạng thái `draft`.
- Cập nhật README, Working Agreement, protocol so sánh, nguồn/phương pháp, hồ sơ dự án và migration guide.
- Trạng thái: tài liệu được cấu trúc và kiểm tra tính nhất quán; chưa kiểm chứng thực nghiệm rằng v0.5 cải thiện hơn v0.4.

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
