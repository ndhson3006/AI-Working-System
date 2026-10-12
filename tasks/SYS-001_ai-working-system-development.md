# Task Run — SYS-001 — Phát triển AI Working System đa nhà cung cấp

> **Status:** `in_progress` — hồ sơ trạng thái chính của dự án. **Current process mode:** `Rigorous` vì đây là nhiệm vụ nhiều bước, nhiều file và có yêu cầu nghiên cứu/kiểm chứng. Cập nhật cùng file khi tiếp tục; không tạo Task ID mới chỉ vì đổi phiên hội thoại hoặc AI.

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
| 5 | Chạy pilot Quick (`FLEX-001`) | AI trả lời trực tiếp, không tạo Task Run, không tìm kiếm thừa | `evaluation/EVALUATION_CASE_SET.md`, mục `RUN-FLEX-001-1` | Đã quan sát 1 lần; chưa đo thời gian/lượt |
| 6 | Chạy pilot Rigorous (`FLEX-002`/`PILOT-01`) | Xác minh được ấn bản/chương; bị chặn ở nội dung chương (HTTP 403/CAPTCHA); không dựng đáp án thay thế | `examples/PILOT-01_book_six_principles.md` mục B–F; `improvement/FAILURE_CHANGE_LOG.md` `F-002` | `blocked` ở nguồn |
| 7 | Phát hiện và sửa lệch đồng bộ artifact | Bản repo của PILOT-01 thiếu 3 phần so với gói v0.5; đã khôi phục khớp gói | `improvement/FAILURE_CHANGE_LOG.md` `F-001`; `scripts/verify_package.sh` | Đã xác minh bằng `diff`/`sha256sum` |
| 8 | Thêm kiểm tra tự động tính nhất quán | Script phát hiện lệch inventory/hash, liên kết hỏng, chênh manifest | `scripts/verify_package.sh` | Đã chạy; 0 lỗi sau khi sửa |
| 9 | Chạy pilot Standard (`SYS-002`) bằng mini template | Nhiệm vụ nhỏ có đầu ra rõ hoàn thành với 4/6 mục; không cần evidence record theo nguồn | `tasks/SYS-002_doc_consistency_check.md` | Đã quan sát 1 lần; chưa đo thời gian |
| 10 | Chạy `CONT-001` (handoff) với tác nhân ngữ cảnh mới | Giữ đúng Task ID/mục tiêu, chọn đúng next action, không lặp việc đã xong, phân biệt confirmed/reported; phát hiện chỉ dẫn lỗi thời trong mục F/G6 và việc repo đi trước gói v0.5 | `evaluation/EVALUATION_CASE_SET.md` `RUN-CONT-001-1`; `improvement/FAILURE_CHANGE_LOG.md` `F-003` | Đã quan sát 1 lần; **cùng mô hình**, chưa phải handoff khác nhà cung cấp |

## C. Bằng chứng và trạng thái tri thức

- **Đã tạo:** cấu trúc tài liệu v0.4/v0.5 với cơ chế continuation/handoff và ba mức thủ tục.
- **Đã quan sát (1 lần chạy, 2026-10-12):**
  - Quick (`FLEX-001`): AI trả lời trực tiếp, không tạo Task Run, không tìm kiếm thừa → R8 đạt trong lần chạy này.
  - Rigorous (`FLEX-002`/`PILOT-01`): AI xác minh đúng ấn bản/chương, ghi lại các phương án truy cập, và đánh dấu `blocked` khi nguồn không truy cập được thay vì dựng đáp án → R4/R5 đạt, R1/R2 không đạt do thiếu nguồn.
  - Standard (`SYS-002`, mini template): nhiệm vụ nhỏ có đầu ra rõ hoàn thành với 4/6 mục; không cần bảng evidence theo nguồn hay ma trận rubric → R8 đạt trong lần chạy này.
  - Continuation (`CONT-001`): tác nhân ngữ cảnh mới giữ đúng Task ID/mục tiêu, chọn đúng next action, không lặp việc đã xong, phân biệt rõ confirmed/reported → 5/5 điều kiện đạt; đồng thời phát hiện chỉ dẫn lỗi thời trong mục F/G6 (`F-003`). Lần chạy này dùng **cùng mô hình**, nên chưa kiểm chứng được handoff khác nhà cung cấp.
- **Đã xác minh (2026-10-12):** `scripts/verify_package.sh` chạy sạch (EXIT=0) cho repo. Repo từng đi trước gói v0.5 (`PILOT-01` 12241 B so với gói 7394 B) — **đã xử lý**: chốt repository (nhánh `main`) làm nguồn sự thật duy nhất, ngừng dùng gói và zip, commit v0.5. Ghi nhận ở `F-003` (`closed`).
- **Chưa xác minh bằng thực nghiệm:** hệ thống giảm bao nhiêu công việc lặp lại; khả năng tiếp tục đúng sau khi đổi phiên hoặc **đổi nhà cung cấp/mô hình** (lần chạy `CONT-001` dùng cùng mô hình); mức nhất quán của rubric giữa người chấm/AI; v0.5 có tốt hơn v0.4 hay không.
- **Không được suy ra:** một lần chạy cho mỗi mức không chứng minh phân loại mode là tối ưu; việc tạo đủ file không chứng minh hệ thống đã cải thiện chất lượng sử dụng AI.

## D. Việc còn mở

| Open ID | Việc cần làm | Điều kiện để đóng | Ưu tiên |
|---|---|---|---|
| OPEN-1 | Chạy pilot bằng các mức Quick/Standard/Rigorous của v0.5 | Có hồ sơ thử nghiệm thật, kết quả và công sức quan sát được | Cao — **đã chạy cả ba mức 1 lần**; chưa đo thời gian/lượt, chưa có đối chứng v0.4 |
| OPEN-2 | Kiểm tra continuation/handoff bằng `CONT-001` | AI tiếp tục từ file lưu, giữ Task ID/tiêu chí, không lặp việc đã xong; kết quả được ghi lại | Cao — **đã chạy 1 lần** (`RUN-CONT-001-1`): 5/5 điều kiện đạt, phát hiện chỉ dẫn lỗi thời (`F-003`). Còn thiếu: handoff qua AI/mô hình **khác**, đo thời gian/lượt |
| OPEN-3 | Xác minh PILOT-01 về sáu nguyên tắc trong sách | Nội dung được đối chiếu với đúng ấn bản/nguồn có thể kiểm tra; nếu không truy cập được thì ghi rõ hạn chế | Vừa — **blocked**: ấn bản/chương đã xác minh, nội dung chương không truy cập được (`F-002`) |
| OPEN-4 | Nghiên cứu sâu rubric và phân loại lỗi | Tổng hợp từ nguồn gốc và cập nhật đề xuất kèm căn cứ | Vừa |
| OPEN-5 | Kiểm tra tính linh hoạt của v0.5 bằng case FLEX | Có ít nhất một tác vụ đơn giản và một tác vụ cần xác minh sâu; ghi chất lượng và thủ tục | Cao — **một phần**: `FLEX-001`, `FLEX-002` đã chạy; `FLEX-003`, `FLEX-004` chưa |

## E. Quyết định cần giữ

- Dùng phương pháp có sẵn làm cơ sở trước khi tạo quy tắc mới.
- Không coi lời AI tự báo cáo là bằng chứng độc lập.
- Không gán trọng số/điểm tổng thể khi chưa có căn cứ.
- Dùng hồ sơ này làm nguồn trạng thái chính cho nhiệm vụ phát triển hệ thống.
- Giữ v0.3 làm lịch sử; v0.4 là bản có bổ sung continuation/handoff theo quy tắc versioning đã ghi trong `CHANGELOG.md`.

## F. Bước tiếp theo

**Next action:** chạy `CONT-001` để kiểm tra cơ chế handoff trên một Task Run có checkpoint thật (xem G6). Mức Standard đã chạy xong (`SYS-002`), không lặp lại.

**Expected observable result:** một bản ghi so sánh hành động của AI tiếp nhận với mục G của Task Run đầu vào; kết quả `CONT-001` chấm theo từng điều kiện. Không kết luận cải thiện nếu chỉ mới tạo tài liệu.

## G. Continuation / Handoff

### G1. Trạng thái hiện tại
- **Task status:** `in_progress`
- **Last updated:** `2026-10-12`
- **Last checkpoint:** `CP-8 — chốt repository làm nguồn sự thật duy nhất, ngừng dùng gói v0.5, commit v0.5`
- **Current objective:** phát triển và kiểm chứng một quy trình làm việc với nhiều AI, dựa trên phương pháp sẵn có.
- **Completion criteria changed?:** `no`

### G2. Đã hoàn thành và bằng chứng
| Item | Kết quả | Tham chiếu | Mức xác minh |
|---|---|---|---|
| DONE-1 | Cấu trúc tài liệu nền tảng được tổng hợp | `README.md`, `WORKING_AGREEMENT.md`, `research/SOURCES_AND_METHOD.md` | Artifact đã tạo; chất lượng phương pháp chưa được xác nhận qua pilot |
| DONE-2 | Template và rubric được tạo | `templates/TASK_RUN_TEMPLATE.md`, `evaluation/EVALUATION_RUBRIC.md` | Artifact đã tạo |
| DONE-3 | Cơ chế handoff được bổ sung vào v0.4 | Mục G của template, `CONT-001`, `tasks/SYS-001_ai-working-system-development.md` | Artifact đã tạo; chưa chạy test |
| DONE-4 | Pilot Quick (`FLEX-001`) đã chạy | `evaluation/EVALUATION_CASE_SET.md`, mục `RUN-FLEX-001-1` | Đã quan sát 1 lần; không đo thời gian/lượt |
| DONE-5 | Pilot Rigorous (`FLEX-002`/`PILOT-01`) đã chạy, bị chặn ở nguồn | `examples/PILOT-01_book_six_principles.md` mục B–F | Đã quan sát; kết quả `blocked`, không phải hoàn thành |
| DONE-6 | Sửa lệch đồng bộ artifact PILOT-01 và thêm `scripts/verify_package.sh` | `improvement/FAILURE_CHANGE_LOG.md` `F-001`; `scripts/verify_package.sh` | Đã xác minh bằng `diff`/`sha256sum` |
| DONE-7 | Pilot Standard (`SYS-002`) đã chạy bằng mini template | `tasks/SYS-002_doc_consistency_check.md` | Đã quan sát 1 lần; không đo thời gian |
| DONE-8 | `CONT-001` đã chạy 1 lần với tác nhân ngữ cảnh mới; phát hiện `F-003` | `evaluation/EVALUATION_CASE_SET.md` `RUN-CONT-001-1`; `improvement/FAILURE_CHANGE_LOG.md` `F-003` | Đã quan sát; người chấm tự xác minh lại các phát hiện; **chưa** kiểm chứng với AI/mô hình khác |

### G3. Đang thực hiện
- **Current subtask:** `CONT-001` đã chạy 1 lần (`RUN-CONT-001-1`); việc còn lại là lặp lại với AI/mô hình khác nhà cung cấp.
- **Current state:** v0.5 đã tạo; pilot Quick, Standard, Rigorous và `CONT-001` đã chạy 1 lần với kết quả quan sát được; lệch đồng bộ artifact (F-001) đã sửa và có kiểm tra tự động; repo đã chốt làm nguồn sự thật duy nhất và v0.5 đã được commit (F-003 `closed`).
- **Blocker:** `PILOT-01` bị chặn ở quyền truy cập nội dung chương 21 (nguồn trả phí/kiểm soát truy cập). Không có blocker kỹ thuật cho `CONT-001`; giới hạn là chưa có AI khác nhà cung cấp để thử.

### G4. Việc còn mở
- `OPEN-1`: **đã chạy cả ba mức 1 lần**; cần đo thời gian/lượt và/hoặc đối chứng v0.4 nếu muốn kết luận định lượng.
- `OPEN-2`: **đã chạy 1 lần** (`RUN-CONT-001-1`, 5/5 điều kiện đạt); còn cần lặp với AI/mô hình **khác nhà cung cấp** để kiểm chứng đầy đủ.
- `OPEN-3`: **blocked** — hoàn thiện `PILOT-01` khi có quyền truy cập nguồn gốc; xem `F-002`.
- `OPEN-4`: tiếp tục nghiên cứu rubric và failure analysis từ tài liệu gốc.
- `OPEN-5`: chạy và ghi kết quả `FLEX-003`, `FLEX-004` (điều chỉnh mức khi có rủi ro mới; không phạt cách giải hợp lệ khác nhau).

### G5. Quyết định và ràng buộc cần giữ
- **Decisions to preserve:** dựa trên phương pháp có sẵn trước; không tạo quy tắc mới chỉ từ cảm giác; dùng cùng Task ID khi mục tiêu không đổi; ưu tiên mức thủ tục tối thiểu nhưng đủ cho nhiệm vụ; v0.4 giữ làm bản tham chiếu, v0.5 chưa được xác minh hiệu quả.
- **Confirmed facts:** bộ tài liệu v0.4/v0.5 và các đường dẫn nói trên tồn tại trong repository; bản repo của `PILOT-01` từng lệch khỏi gói v0.5 và đã được khôi phục khớp gói (kiểm tra bằng `diff`/`sha256sum`). **Nguồn sự thật từ 2026-10-12 là repository (nhánh `main`); gói và zip đã ngừng dùng.**
- **Assumptions to revalidate:** cơ chế handoff sẽ giảm lặp việc và làm tăng tính nhất quán; cần đo qua sử dụng thực tế.
- **Do not repeat:** không cần thiết kế lại cấu trúc tổng thể từ đầu, trừ khi pilot chỉ ra lỗi căn bản.

### G6. Bước tiếp theo
- **Next action:** chạy `CONT-001` — đã thực hiện một lần ngày 2026-10-12 (`RUN-CONT-001-1`); xem kết quả và giới hạn trong `evaluation/EVALUATION_CASE_SET.md`. Việc còn lại: lặp lại với một AI/phiên **khác nhà cung cấp hoặc khác mô hình** để kiểm chứng đầy đủ, và đo thời gian/lượt.
- **Purpose:** kiểm tra cơ chế handoff có thực sự giảm lặp việc và giữ đúng trạng thái hay không, thay vì chỉ tồn tại dưới dạng template.
- **Expected observable result:** một bản ghi so sánh hành động của AI tiếp nhận với mục G của Task Run đầu vào, chấm từng điều kiện bắt buộc của `CONT-001`.
- **Fallback if blocked:** nếu không thể chuyển sang phiên/AI khác, ghi rõ giới hạn và thực hiện phần có thể (ví dụ tự kiểm tra mục G có đủ trường cần thiết không).

### G7. Tài liệu cần nạp để tiếp tục
| File | Lý do | Vai trò |
|---|---|---|
| `README.md` | Hướng dẫn quy trình và quick start | Source of truth về cách sử dụng |
| `WORKING_AGREEMENT.md` | Quy tắc áp dụng chung | Source of truth về quy tắc |
| `templates/TASK_RUN_MINI_TEMPLATE.md` | Hồ sơ ngắn cho Standard | Template rút gọn |
| `templates/TASK_RUN_TEMPLATE.md` | Template đầy đủ cho Rigorous/việc dài hạn | Source of truth cho Task Run đầy đủ |
| `evaluation/EVALUATION_RUBRIC.md` | Tiêu chí đánh giá | Hướng dẫn đánh giá |
| `evaluation/EVALUATION_CASE_SET.md` | Case `CONT-001` và các case seed | Kế hoạch kiểm thử |
| `research/SOURCES_AND_METHOD.md` | Cơ sở phương pháp | Tham chiếu nghiên cứu |
| `scripts/verify_package.sh` | Kiểm tra tính nhất quán inventory/manifest/liên kết | Kiểm tra hồi quy |

- **Source of truth:** file này cho trạng thái dự án; các file trên cho nội dung/quy tắc tương ứng.
- **Related Task/Case/Failure IDs:** `CONT-001`, `RES-001`; chưa có Failure ID mới được xác nhận.

### G8. Lịch sử checkpoint
| Checkpoint | Ngày | Thay đổi | Bằng chứng |
|---|---|---|---|
| CP-1 | 2026-10-12 | Tạo v0.4 với cơ chế continuation/handoff; chưa thử nghiệm | Template, README, Working Agreement, `CONT-001`, hồ sơ này |
| CP-2 | 2026-10-12 | Đồng bộ hướng dẫn, thêm migration guide và kiểm tra liên kết tương đối trong Markdown; chưa thử nghiệm handoff với AI khác | `MIGRATION_v0.3_to_v0.4.md`, `README.md`, toàn bộ liên kết tương đối trong các file Markdown |
| CP-3 | 2026-10-12 | Tạo v0.5 với ba mức thủ tục và mini template; chưa thử nghiệm hiệu quả | `README.md`, `WORKING_AGREEMENT.md`, hai Task Run templates, rubric, case FLEX và migration guide |
| CP-4 | 2026-10-12 | Tạo và đóng gói tài liệu tổng hợp để AI khác tiếp quản; đồng bộ README/manifest/inventory | `AI_WORKING_SYSTEM_PROJECT_HANDOFF.md`, gói v0.5 đã đóng gói lại |
| CP-5 | 2026-10-12 | Chạy pilot Quick (`FLEX-001`) và Rigorous (`FLEX-002`/`PILOT-01`); phát hiện và sửa lệch đồng bộ PILOT-01 giữa repo và gói; thêm `scripts/verify_package.sh` | `evaluation/EVALUATION_CASE_SET.md` (`RUN-FLEX-001-1`, `RUN-FLEX-002-1`), `examples/PILOT-01_book_six_principles.md` mục B–G, `improvement/FAILURE_CHANGE_LOG.md` `F-001`/`F-002`, `scripts/verify_package.sh` |
| CP-6 | 2026-10-12 | Chạy pilot Standard (`SYS-002`) bằng mini template; hoàn tất ba mức Quick/Standard/Rigorous ở mức một lần chạy mỗi mức | `tasks/SYS-002_doc_consistency_check.md` |
| CP-7 | 2026-10-12 | Chạy `CONT-001` với tác nhân ngữ cảnh mới; ghi `RUN-CONT-001-1`; phát hiện và ghi `F-003` (chỉ dẫn lỗi thời) cùng việc repo đi trước gói v0.5; sửa next action ở mục F/G6 | `evaluation/EVALUATION_CASE_SET.md`, `improvement/FAILURE_CHANGE_LOG.md` |
| CP-8 | 2026-10-12 | Chốt repository (nhánh `main`) làm nguồn sự thật duy nhất; ngừng dùng gói v0.5 và zip (đã kiểm tra là tập con của repo); commit v0.5; đóng `F-003` | `improvement/FAILURE_CHANGE_LOG.md` `F-003`, `CHANGELOG.md`, commit v0.5 |

### G9. Chỉ dẫn cho AI nhận bàn giao
Đọc file này trước để khôi phục mục tiêu và trạng thái; sau đó đọc `README.md`, `WORKING_AGREEMENT.md`, chọn mini/full template theo nhiệm vụ và đọc các case `FLEX-*` cùng `CONT-001`. Tiếp tục cùng Task ID `SYS-001`. Không thiết kế lại từ đầu. **Trước khi thực hiện bất cứ next action nào, đối chiếu nó với bảng DONE ở G2 và bảng open ở mục D — mục F/G6 từng chứa chỉ dẫn lỗi thời (`F-003`).** Cả bốn pilot Quick/Standard/Rigorous/`CONT-001` đã chạy 1 lần; việc còn lại là lặp `CONT-001` với AI/mô hình khác nhà cung cấp và chạy `FLEX-003`/`FLEX-004`. `PILOT-01` đang `blocked` ở nguồn nên không lặp lại các truy vấn đã ghi ở mục B của file đó trừ khi có quyền truy cập mới. **Repository (nhánh `main`) là nguồn sự thật duy nhất; gói v0.5 và zip đã ngừng dùng — đừng đọc chúng.** Chạy `bash scripts/verify_package.sh` sau khi sửa file. Không đánh dấu bất cứ tiêu chí nào là đã kiểm chứng cho đến khi có bằng chứng thực tế.


## H. Checkpoint v0.5 — Mức thủ tục linh hoạt

- **Ngày:** 2026-10-12
- **Trạng thái:** tài liệu v0.5 được tạo; cả bốn lần chạy (Quick/Standard/Rigorous/`CONT-001`) đã có một lần.
- **Lý do:** người dùng nêu lo ngại rằng quy trình v0.4 có thể quá cứng nhắc.
- **Thay đổi:** thêm Quick/Standard/Rigorous; bổ sung mini template; cho phép bỏ qua mục không liên quan; thêm chiều R8 về tính tương xứng và case FLEX-001–FLEX-004.
- **Điều cần giữ:** các chế độ không làm giảm nghĩa vụ trung thực, yêu cầu bắt buộc hoặc xác minh tương xứng với rủi ro. v0.4 vẫn được giữ làm bản tham chiếu.
- **Bằng chứng hiện có:** các file v0.5 đã được tạo và kiểm tra cấu trúc/liên kết; ba mức và `CONT-001` đã chạy 1 lần với kết quả quan sát được; chưa có bằng chứng định lượng rằng v0.5 tốt hơn v0.4.
- **Open items:** thử `FLEX-003`/`FLEX-004`; so sánh thao tác và kết quả với v0.4; chỉnh cấu trúc nếu xuất hiện thủ tục thừa hoặc bỏ sót xác minh; xử lý việc repo đi trước gói v0.5.
- **Next action:** lặp `CONT-001` với một AI/phiên khác nhà cung cấp; xử lý `F-003` và lệch repo-vs-gói.

