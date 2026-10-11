# Task Run — SYS-001 — Phát triển AI Working System đa nhà cung cấp

> **Status:** `in_progress` — đây là hồ sơ trạng thái cho chính quá trình phát triển hệ thống này. Cập nhật cùng file khi tiếp tục; không tạo Task ID mới chỉ vì đổi phiên hội thoại hoặc AI.

## A. Task Specification

### A1. Mục tiêu
Xây dựng từng bước một quy trình làm việc với nhiều AI, dựa trên các phương pháp đã được công bố trước khi đề xuất thay đổi mới; sau đó thử nghiệm bằng nhiệm vụ thực tế và cải tiến theo bằng chứng.

### A2. Tiêu chí hoàn thành ở cấp dự án
- [ ] Tài liệu cơ sở và sự phân biệt giữa phương pháp nguồn với điều chỉnh riêng được ghi rõ.
- [ ] Có template cho từng nhiệm vụ, rubric, evaluation cases, comparison protocol và failure/change log.
- [ ] Có cơ chế continuation/handoff để tiếp tục cùng nhiệm vụ qua nhiều phiên hoặc nhiều AI.
- [ ] Thực hiện pilot thực tế, ghi rõ bằng chứng và các giới hạn.
- [ ] Dùng kết quả pilot để quyết định thay đổi tiếp theo; không tuyên bố hiệu quả trước khi có phép đo.

### A3. Ràng buộc đã thống nhất
- Ưu tiên phương pháp và tài liệu đã có; không tự tạo nguyên tắc mới trước khi nghiên cứu nguồn phù hợp.
- Hệ thống cần áp dụng được với nhiều nhà cung cấp AI.
- Bằng chứng, giới hạn và mức hoàn thành phải minh bạch.
- Quy trình cần đơn giản trong sử dụng thường ngày; không áp dụng tất cả tài liệu với mọi câu hỏi.
- Những thay đổi vào quy tắc chung cần dựa trên kết quả hoặc căn cứ được nêu rõ.

## B. Execution Record — Checkpoint gần nhất

| # | Hành động đã thực hiện | Kết quả | Bằng chứng/đầu ra | Trạng thái |
|---|---|---|---|---|
| 1 | Tổng hợp phương pháp từ các nguồn đã nghiên cứu trong cuộc trao đổi | Có cấu trúc ban đầu v0.3 và tài liệu nguồn | `research/SOURCES_AND_METHOD.md` | Đã ghi nhận; chưa kiểm nghiệm toàn bộ thực nghiệm |
| 2 | Tạo bộ tài liệu v0.3 | Có template, rubric, case set, comparison protocol, change log | Các file trong repository | Đã tạo |
| 3 | Nhận diện nhu cầu tiếp tục công việc qua nhiều phiên | Cần Task Run giữ trạng thái, quyết định, việc còn mở và bước tiếp theo | Thảo luận trước khi phát hành v0.4 | Đã xác định |
| 4 | Bổ sung Continuation / Handoff | Thêm mục G vào template, quy tắc chung, README, case `CONT-001` và hồ sơ dự án này | `templates/TASK_RUN_TEMPLATE.md`, `WORKING_AGREEMENT.md`, `README.md`, `evaluation/EVALUATION_CASE_SET.md`, file này | Cần thử nghiệm |

## C. Bằng chứng và trạng thái tri thức

- **Đã tạo:** cấu trúc tài liệu v0.4 với cơ chế continuation/handoff.
- **Chưa xác minh bằng thực nghiệm:** hệ thống giảm bao nhiêu công việc lặp lại; khả năng tiếp tục đúng sau khi đổi phiên hoặc đổi mô hình; mức nhất quán của rubric giữa người chấm/AI.
- **Không được suy ra:** việc tạo đủ file không chứng minh hệ thống đã cải thiện chất lượng sử dụng AI.

## D. Việc còn mở

| Open ID | Việc cần làm | Điều kiện để đóng | Ưu tiên |
|---|---|---|---|
| OPEN-1 | Thực hiện một nhiệm vụ thực tế bằng Task Run v0.4 | Có Task Run đã chạy, bằng chứng và rubric đánh giá | Cao |
| OPEN-2 | Kiểm tra continuation/handoff bằng `CONT-001` | AI tiếp tục từ file lưu, giữ Task ID/tiêu chí, không lặp việc đã xong; kết quả được ghi lại | Cao |
| OPEN-3 | Xác minh PILOT-01 về sáu nguyên tắc trong sách | Nội dung được đối chiếu với đúng ấn bản/nguồn có thể kiểm tra; nếu không truy cập được thì ghi rõ hạn chế | Vừa |
| OPEN-4 | Nghiên cứu sâu rubric và phân loại lỗi | Tổng hợp từ nguồn gốc và cập nhật đề xuất kèm căn cứ | Vừa |

## E. Quyết định cần giữ

- Dùng phương pháp có sẵn làm cơ sở trước khi tạo quy tắc mới.
- Không coi lời AI tự báo cáo là bằng chứng độc lập.
- Không gán trọng số/điểm tổng thể khi chưa có căn cứ.
- Dùng hồ sơ này làm nguồn trạng thái chính cho nhiệm vụ phát triển hệ thống.
- Giữ v0.3 làm lịch sử; v0.4 là bản có bổ sung continuation/handoff theo quy tắc versioning đã ghi trong `CHANGELOG.md`.

## F. Bước tiếp theo

**Next action:** chọn một nhiệm vụ thực tế, tạo/tiếp tục Task Run bằng `templates/TASK_RUN_TEMPLATE.md`, rồi cập nhật cùng Task Run qua checkpoint. Ưu tiên kiểm tra `CONT-001` để xem cơ chế bàn giao có hoạt động như mong muốn.

**Expected observable result:** có một hồ sơ thực hiện và đánh giá cho thấy điều gì hoạt động, điều gì chưa rõ, và liệu trạng thái có thể được khôi phục chỉ từ file cùng các tham chiếu liên quan hay không.

## G. Continuation / Handoff

### G1. Trạng thái hiện tại
- **Task status:** `in_progress`
- **Last updated:** `2026-10-12`
- **Last checkpoint:** `v0.4 có mục Continuation / Handoff; chưa chạy thử thực nghiệm`
- **Current objective:** phát triển và kiểm chứng một quy trình làm việc với nhiều AI, dựa trên phương pháp sẵn có.
- **Completion criteria changed?:** `no`

### G2. Đã hoàn thành và bằng chứng
| Item | Kết quả | Tham chiếu | Mức xác minh |
|---|---|---|---|
| DONE-1 | Cấu trúc tài liệu nền tảng được tổng hợp | `README.md`, `WORKING_AGREEMENT.md`, `research/SOURCES_AND_METHOD.md` | Artifact đã tạo; chất lượng phương pháp chưa được xác nhận qua pilot |
| DONE-2 | Template và rubric được tạo | `templates/TASK_RUN_TEMPLATE.md`, `evaluation/EVALUATION_RUBRIC.md` | Artifact đã tạo |
| DONE-3 | Cơ chế handoff được bổ sung vào v0.4 | Mục G của template, `CONT-001`, `tasks/SYS-001_ai-working-system-development.md` | Artifact đã tạo; chưa chạy test |

### G3. Đang thực hiện
- **Current subtask:** bắt đầu thử nghiệm thực tế với template và cơ chế handoff.
- **Current state:** tài liệu đã sẵn sàng; chưa có kết quả pilot được ghi nhận.
- **Blocker:** không có blocker được xác nhận; chọn nhiệm vụ đầu tiên là bước kế tiếp.

### G4. Việc còn mở
- `OPEN-1`: chạy một Task Run thật bằng v0.4.
- `OPEN-2`: kiểm tra `CONT-001` với hồ sơ có checkpoint và file tham chiếu.
- `OPEN-3`: hoàn thiện kết quả nghiên cứu PILOT-01 nếu có thể truy cập nguồn gốc.
- `OPEN-4`: tiếp tục nghiên cứu rubric và failure analysis từ tài liệu gốc.

### G5. Quyết định và ràng buộc cần giữ
- **Decisions to preserve:** dựa trên phương pháp có sẵn trước; không tạo quy tắc mới chỉ từ cảm giác; dùng cùng Task ID khi mục tiêu không đổi.
- **Confirmed facts:** bộ tài liệu v0.4 và các đường dẫn nói trên được tạo trong gói hiện tại.
- **Assumptions to revalidate:** cơ chế handoff sẽ giảm lặp việc và làm tăng tính nhất quán; cần đo qua sử dụng thực tế.
- **Do not repeat:** không cần thiết kế lại cấu trúc tổng thể từ đầu, trừ khi pilot chỉ ra lỗi căn bản.

### G6. Bước tiếp theo
- **Next action:** chạy một nhiệm vụ thực tế từ Task Run hiện có và lưu phần G sau checkpoint; ưu tiên thử khả năng tiếp tục dựa trên file.
- **Purpose:** kiểm tra AI có thể tiếp tục đúng từ trạng thái lưu hay cần bổ sung trường/điều kiện nào.
- **Expected observable result:** một hồ sơ run có bằng chứng, đánh giá và kết luận giới hạn rõ ràng.
- **Fallback if blocked:** ghi cụ thể dữ liệu/công cụ thiếu; thực hiện phần khả thi và không tự đánh dấu test là pass.

### G7. Tài liệu cần nạp để tiếp tục
| File | Lý do | Vai trò |
|---|---|---|
| `README.md` | Hướng dẫn quy trình và quick start | Source of truth về cách sử dụng |
| `WORKING_AGREEMENT.md` | Quy tắc áp dụng chung | Source of truth về quy tắc |
| `templates/TASK_RUN_TEMPLATE.md` | Template nhiệm vụ và handoff | Source of truth cho Task Run mới |
| `evaluation/EVALUATION_RUBRIC.md` | Tiêu chí đánh giá | Hướng dẫn đánh giá |
| `evaluation/EVALUATION_CASE_SET.md` | Case `CONT-001` và các case seed | Kế hoạch kiểm thử |
| `research/SOURCES_AND_METHOD.md` | Cơ sở phương pháp | Tham chiếu nghiên cứu |

- **Source of truth:** file này cho trạng thái dự án; các file trên cho nội dung/quy tắc tương ứng.
- **Related Task/Case/Failure IDs:** `CONT-001`, `RES-001`; chưa có Failure ID mới được xác nhận.

### G8. Lịch sử checkpoint
| Checkpoint | Ngày | Thay đổi | Bằng chứng |
|---|---|---|---|
| CP-1 | 2026-10-12 | Tạo v0.4 với cơ chế continuation/handoff; chưa thử nghiệm | Template, README, Working Agreement, `CONT-001`, hồ sơ này |
| CP-2 | 2026-10-12 | Đồng bộ hướng dẫn, thêm migration guide và kiểm tra liên kết tương đối trong Markdown; chưa thử nghiệm handoff với AI khác | `MIGRATION_v0.3_to_v0.4.md`, `README.md`, toàn bộ liên kết tương đối trong các file Markdown |

### G9. Chỉ dẫn cho AI nhận bàn giao
Đọc file này trước để khôi phục mục tiêu và trạng thái; sau đó đọc `README.md`, `WORKING_AGREEMENT.md`, Task Run template và case `CONT-001`. Tiếp tục cùng Task ID `SYS-001`. Không thiết kế lại từ đầu. Bước kế tiếp là chạy một pilot thật và cập nhật hồ sơ này cùng Task Run tương ứng. Không đánh dấu bất cứ tiêu chí nào là đã kiểm chứng cho đến khi có bằng chứng thực tế.
