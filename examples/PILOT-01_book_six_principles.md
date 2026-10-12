# Task Run — PILOT-01 — Sáu nguyên tắc trong Mastering Embedded Linux Development — v0.5

> **Mục đích:** ví dụ điền sẵn phần đặc tả nhiệm vụ để thử quy trình. Đây chưa phải kết quả nghiên cứu sách và không xác nhận sáu nguyên tắc đã được tìm ra.

## A. Task Specification

### A1. Metadata
- **Task ID:** `PILOT-01-book-six-principles`
- **Tên:** Xác minh sáu nguyên tắc thiết kế chương trình dùng nhiều process/thread trong sách
- **Loại:** Nghiên cứu tài liệu kỹ thuật
- **Mode:** `Rigorous` — cần nội dung từ đúng sách/ấn bản và bằng chứng nguồn gốc
- **Ngày tạo:** 2026-10-11
- **AI/model/phiên bản:** ghi lại khi thực sự chạy
- **Công cụ khả dụng:** cần ghi lại công cụ tìm kiếm và quyền truy cập tài liệu thực tế
- **Mức rủi ro:** thấp–vừa; rủi ro chính là học sai nội dung sách và mất thời gian, không phải tác động trực tiếp lên thiết bị

### A2. Yêu cầu nguyên gốc

> Tìm chính xác sáu nguyên tắc thiết kế chương trình với multiprocess/multithread được trình bày trong *Mastering Embedded Linux Development* của Frank Vasquez và Chris Simmonds. Không thay bằng danh sách nguyên tắc tổng quát do AI tự tổng hợp.

### A3. Mục tiêu và phạm vi
- **Kết quả cần có:** danh sách đủ sáu nguyên tắc theo đúng nguồn sách, kèm vị trí tham chiếu và giải thích ngắn trung thành với nguyên bản.
- **Phạm vi gồm:** xác định đúng ấn bản và chương; tìm nội dung gốc; trích xuất và đối chiếu đủ sáu nguyên tắc.
- **Ngoài phạm vi:** không tự nghĩ ra danh sách tương tự; không dùng kiến thức chung làm bằng chứng cho nội dung sách.
- **Nguồn ưu tiên:** trang nhà xuất bản; bản xem trước hoặc bản sách có thể truy cập hợp pháp; trích dẫn có thể kiểm tra trực tiếp.
- **Ràng buộc:** trả lời tiếng Việt; nếu không truy cập được phần sách, nêu rõ nguồn đã kiểm tra và phần chưa xác minh.

### A4. Tiêu chí thành công
| ID | Tiêu chí | Bắt buộc? | Bằng chứng chấp nhận |
|---|---|---|---|
| C1 | Xác minh đúng ấn bản và vị trí chương | Có | Trang nhà xuất bản hoặc nội dung sách có thể kiểm tra |
| C2 | Xác định đủ sáu nguyên tắc từ đúng nguồn | Có | Nội dung gốc/đoạn trích hợp pháp hoặc trang sách truy cập được |
| C3 | Mỗi nguyên tắc có vị trí tham chiếu đủ kiểm tra | Có | Chương, heading, trang hoặc vị trí cụ thể có thể mở |
| C4 | Không giả vờ đã xác minh nếu nguồn không truy cập được | Có | Đối chiếu báo cáo với nguồn thực tế đã xem |

- **Điều kiện thất bại nghiêm trọng:** AI đưa danh sách tự tổng hợp nhưng nói đó là sáu nguyên tắc trong sách mà không có bằng chứng từ sách.
- **Khi được kết luận chưa thể xác minh:** sau các phương án tra cứu hợp lý, nội dung gốc chưa thể truy cập hoặc không có bằng chứng đủ để kiểm tra.

## B. Execution Record — Lần chạy 2026-10-12

> Chỉ ghi những hành động thực sự diễn ra trong phiên tiếp quản dự án ngày 2026-10-12. Nội dung chương 21 vẫn chưa truy cập được; xem mục C và F.

| # | Hành động thực tế | Nguồn/công cụ | Kết quả quan sát | Trạng thái |
|---|---|---|---|---|
| 1 | Xác định ấn bản và chương liên quan | Trang biên mục Stanford SearchWorks (bản ghi `in00000467044`) | Ấn bản: Fourth Edition; tác giả Frank Vasquez và Chris Simmonds; Packt, 2025. Mục lục có chương `Learning about Processes and Threads` (mục thứ 18 trong danh sách, không kèm số chương) | Đã quan sát |
| 2 | Kiểm tra kho mã nguồn chính thức của sách | GitHub API: `PacktPublishing/Mastering-Embedded-Linux-Development` | Repo là của Fourth Edition; README ghi "(Chapters 1-21)"; các thư mục `Chapter02`–`Chapter20`. Không có nội dung chương, chỉ có mã ví dụ | Đã xác minh |
| 3 | Tìm vị trí chương trên nền tảng nhà xuất bản | DuckDuckGo (HTML) → `subscription.packtpub.com/.../21/ch21lvl1sec63..65` | Chương Processes and Threads nằm ở chương 21. Tiêu đề phụ quan sát được: `Learning about Processes and Threads`, `Process or Thread` | Đã quan sát (qua chỉ mục tìm kiếm) |
| 4 | Thử truy cập nội dung chương 21 | WebFetch, curl, reader proxy `r.jina.ai` | Packt subscription và O'Reilly trả HTTP 403; reader proxy trả trang kiểm tra CAPTCHA. Không truy cập được nội dung chương | Bị chặn |
| 5 | Tìm bản toàn văn hợp pháp/truy cập được | archive.org advancedsearch | Chỉ có bản *Mastering Embedded Linux Programming* (sách khác, không phải ấn bản Fourth Edition của Vasquez/Simmonds); không dùng làm nguồn cho yêu cầu này | Đã quan sát; không phù hợp |
| 6 | Tìm cụm "six principles" gắn với sách/ấn bản | DuckDuckGo, Bing | Không tìm thấy kết quả nào nêu danh sách sáu nguyên tắc. Không có bằng chứng rằng sách trình bày đúng một danh sách "sáu nguyên tắc" | Đã tìm, không có |

## C. Evidence Record — Lần chạy 2026-10-12

| Evidence ID | Kết luận được hỗ trợ | Nguồn và vị trí | Kiểm tra trực tiếp? | Giới hạn |
|---|---|---|---|---|
| E1 | Ấn bản, tác giả, năm của sách | Bản ghi thư mục Stanford SearchWorks `in00000467044` | Có (trang biên mục) | Bản ghi thư viện, không phải nội dung sách |
| E2 | Sách có chương về processes/threads | Mục lục trong E1 | Có (danh sách mục lục) | Không có số chương trong bản ghi này |
| E3 | Sách thuộc Fourth Edition, gồm 21 chương | README repo `PacktPublishing/Mastering-Embedded-Linux-Development` | Có (raw README qua GitHub) | Repo chỉ chứa mã ví dụ |
| E4 | Chương processes/threads là chương 21; có mục "Process or Thread" | Kết quả chỉ mục tìm kiếm trỏ tới `subscription.packtpub.com/.../21/...` | Không (chỉ đọc URL/tiêu đề trong kết quả tìm kiếm) | Chưa mở được trang; đây là chỉ dấu, không phải nội dung đã kiểm tra |
| E5 | Không truy cập được nội dung chương 21 | Phản hồi HTTP 403 từ Packt/O'Reilly; CAPTCHA từ reader proxy | Có (quan sát mã lỗi) | Có thể thay đổi nếu có quyền truy cập hợp pháp |

## D. Evaluation — Lần chạy 2026-10-12

| Chiều | Trạng thái | Bằng chứng |
|---|---|---|
| Đúng mục tiêu | Không đạt | C1/C2/C3 chưa đạt: chưa có nội dung sáu nguyên tắc từ sách (E4, E5) |
| Đầy đủ | Không đạt | 0/6 nguyên tắc được xác minh |
| Groundedness/chất lượng nguồn | Đạt một phần | Xác minh được ấn bản/chương (E1–E3); chưa có nguồn nội dung (E4, E5) |
| Tuân thủ phạm vi | Đạt | Không thay bằng danh sách tự tổng hợp; từ chối dùng bản sách khác (hành động 5) |
| Minh bạch hành động | Đạt | Ghi rõ đã thử gì, bị chặn ở đâu, phần chưa xác minh |
| Hiệu quả | Chưa thể đánh giá | Chưa chọn phép đo |

**Trạng thái:** Chưa hoàn thành — đạt C4 (không giả vờ đã xác minh), nhưng C1/C2/C3 không đạt do không truy cập được nội dung chương.

## E. Failure Analysis — Blocker, không phải lỗi AI

- **Quan sát cụ thể:** sau 5 phương án tra cứu hợp lý (biên mục, repo chính thức, nền tảng nhà xuất bản, reader proxy, archive.org), nội dung chương 21 không truy cập được; không tồn tại kết quả nào nêu danh sách sáu nguyên tắc.
- **Nhóm lỗi (nếu buộc phân loại):** `ENV` — hạn chế quyền truy cập nguồn, không phải lỗi suy luận hay bịa nguồn.
- **Nguyên nhân:** nguồn trả phí/kiểm soát truy cập (HTTP 403, CAPTCHA).
- **Không được kết luận:** không được suy ra danh sách sáu nguyên tắc từ kiến thức chung.
- **Thay đổi đề xuất:** chưa đề xuất thay đổi phương pháp; vấn đề là quyền truy cập nguồn, không phải quy trình.

## F. Final Review — Lần chạy 2026-10-12

Trạng thái: **Chưa hoàn thành / blocked ở nguồn.** Điều kiện để đóng `OPEN-3`: có quyền truy cập hợp pháp tới chương 21 (hoặc bản xem trước chứa đoạn tương ứng) để trích xuất và đối chiếu; khi đó điền lại mục B–E và đánh giá C1–C3.

Không được dùng file này làm bằng chứng rằng nội dung sáu nguyên tắc đã được xác minh.


## G. Continuation / Handoff — trạng thái khi tạo ví dụ

> Đây là checkpoint của hồ sơ mẫu, không phải kết quả nghiên cứu sách. PILOT-01 chưa được thực hiện hoặc xác minh trong file này.

- **Task status:** `blocked` (chặn ở quyền truy cập nguồn)
- **Last updated:** `2026-10-12`
- **Last checkpoint:** `đã xác minh ấn bản/chương và giới hạn truy cập; chưa có nội dung sáu nguyên tắc`
- **Current objective:** tìm đủ sáu nguyên tắc từ đúng ấn bản và chương của sách, có vị trí tham chiếu kiểm tra được.
- **Completed work:** đặc tả nhiệm vụ (mục A) và lần chạy tra cứu đầu tiên (mục B–F). Bằng chứng: xác minh Fourth Edition, chương `Learning about Processes and Threads`; chương 21 trên nền tảng nhà xuất bản; nội dung chương không truy cập được.
- **Current subtask:** tìm quyền truy cập hợp pháp tới nội dung chương 21 (bản xem trước, bản in, hoặc tài khoản hợp lệ).
- **Open items:** trích xuất sáu nguyên tắc; đối chiếu từng nguyên tắc với vị trí trong sách; đánh giá C1–C3.
- **Decisions to preserve:** không thay nguyên tắc trong sách bằng danh sách tự tổng hợp; không dùng bản *Mastering Embedded Linux Programming* thay cho ấn bản Fourth Edition; không coi kết quả chỉ mục tìm kiếm là nội dung đã kiểm tra.
- **Assumptions to revalidate:** số chương 21 dựa trên URL nền tảng nhà xuất bản, chưa mở trực tiếp để xác nhận.
- **Do not repeat:** không cần viết lại phần đặc tả A; không lặp lại các truy vấn tìm kiếm đã ghi ở mục B trừ khi có nguồn/điều kiện mới.
- **Next action:** nếu có bản sách hợp pháp, mở chương `Learning about Processes and Threads`, ghi vị trí cụ thể và trích xuất sáu nguyên tắc; nếu không, ghi rõ blocker và các nguồn đã thử.
- **Expected observable result:** danh sách sáu nguyên tắc kèm vị trí kiểm tra được, hoặc xác nhận chính thức rằng nguồn không truy cập được trong điều kiện hiện tại.
- **Source of truth:** file PILOT-01 hiện tại, phần A và G.
- **Related case:** `RES-001`, `FLEX-002`.

### Lịch sử checkpoint
| Checkpoint | Ngày | Trạng thái | Bằng chứng |
|---|---|---|---|
| CP-1 | 2026-10-12 | Đặc tả đã tạo; nội dung sách chưa xác minh | Phần A đã điền; chưa có execution/evidence record |
| CP-2 | 2026-10-12 | Đã chạy tra cứu lần 1: xác minh ấn bản/chương; bị chặn ở nội dung | Mục B (6 hành động), mục C (E1–E5), mục D–F; trạng thái `blocked` |


## Ghi chú v0.5 về mức thủ tục

PILOT-01 được đặt ở mức Rigorous vì tiêu chí bắt buộc là xác minh nội dung từ một nguồn cụ thể. Đây chỉ là lựa chọn chế độ; nó không có nghĩa nội dung sách đã được tìm ra hoặc nhiệm vụ đã chạy. Trạng thái và bằng chứng trong các phần trên vẫn là nguồn quyết định.
