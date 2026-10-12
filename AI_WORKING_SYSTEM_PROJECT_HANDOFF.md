# AI Working System — Project Handoff / Continuation Brief

> **Mục đích của file này:** bàn giao bối cảnh, mục tiêu, các quyết định đã thống nhất, trạng thái hiện tại và bước tiếp theo cho một AI khác. AI nhận bàn giao không nên bắt đầu dự án lại từ đầu.
>
> **Ngày lập:** 2026-10-12 — cập nhật lần cuối 2026-10-12 (đã chạy pilot Quick/Rigorous; xem 7.2 và mục 8)
> **Ngôn ngữ làm việc:** tiếng Việt  
> **Project ID / Task ID chính:** `SYS-001`  
> **Phiên bản hệ thống hiện tại:** `v0.5`  
> **Trạng thái tổng thể:** `in_progress / pilot` — bộ tài liệu đã được tạo, nhưng hiệu quả của quy trình chưa được xác minh bằng thử nghiệm thực tế.

---

## 0. Chỉ dẫn quan trọng dành cho AI nhận bàn giao

Bạn đang tiếp tục một dự án đã có lịch sử và quyết định trước đó. Hãy tuân thủ các điều sau:

1. **Không khởi động lại từ đầu.** Giữ Task ID `SYS-001`; tiếp tục từ trạng thái và `Next action` trong hồ sơ nhiệm vụ chính nếu file đó có sẵn.
2. **Đọc tài liệu hiện có trước khi đề xuất thay đổi.** Trong repository dự án, trước tiên đọc `README.md`, `WORKING_AGREEMENT.md`, `tasks/SYS-001_ai-working-system-development.md` và `research/SOURCES_AND_METHOD.md`. Các file còn lại được liệt kê ở phần 6.
3. **Ưu tiên phương pháp đã tồn tại trước khi đề xuất nguyên tắc mới.** Tìm và đọc tài liệu nguồn phù hợp; chỉ đề xuất thay đổi riêng cho dự án sau khi hiểu phương pháp sẵn có và có căn cứ hoặc một vấn đề quan sát được.
4. **Không nhầm việc tạo tài liệu với việc kiểm chứng hiệu quả.** v0.5 hiện là bản pilot. Các evaluation cases là seed/draft, chưa phải benchmark đã được xác thực.
5. **Không tuyên bố đã đọc nguồn, chạy lệnh, build/test, sửa file hay cập nhật GitHub nếu chưa thực sự làm và xác minh được.** Phân biệt rõ: đã đề xuất, đã thực hiện, đã quan sát, đã xác minh.
6. **Giữ tính linh hoạt.** Không bắt mọi nhiệm vụ dùng full Task Run. Chọn chế độ thủ tục nhỏ nhất đáp ứng mục tiêu, rủi ro và nhu cầu lưu vết; có thể tăng/giảm mức khi bối cảnh thay đổi.
7. **Bảo vệ yêu cầu gốc của người dùng.** Không thay một yêu cầu nguồn-cụ-thể bằng một câu trả lời kiến thức chung dễ hơn. Không hỏi người dùng lặp lại thông tin đã có hoặc thông tin có thể tìm bằng công cụ thích hợp.
8. **Không áp đặt thay đổi lên quy tắc chung một cách âm thầm.** Những thay đổi lớn với Working Agreement, rubric hoặc quy trình phải có căn cứ, ghi changelog và khi phù hợp được thử bằng evaluation cases.
9. **Nếu thiếu quyền truy cập file hoặc công cụ**, nói rõ chính xác trở ngại, tiếp tục phần có thể làm và không giả vờ rằng đã truy cập được. File handoff này không tự cấp quyền truy cập repository.
10. Khi kết thúc một checkpoint có ý nghĩa, cập nhật hồ sơ `SYS-001` và các artifact bị tác động nếu môi trường cho phép. Nếu không thể ghi file, cung cấp nội dung cập nhật và nói rõ file chưa được lưu.

---

## 1. Mục tiêu của dự án

AI Working System là một **phương pháp làm việc cá nhân, có thể áp dụng với nhiều nhà cung cấp AI**, nhằm giúp người dùng giao nhiệm vụ, kiểm tra quá trình thực hiện và đánh giá kết quả có căn cứ, đồng thời tránh biến các câu hỏi đơn giản thành một quy trình rườm rà.

Đây không chỉ là bộ prompt, cũng chưa phải phần mềm tự động hóa. Hiện tại, đây là một bộ tài liệu/quy trình vận hành có thể dần được sử dụng thủ công, áp dụng với các AI khác nhau, và về sau tích hợp vào GitHub hoặc các agent nếu có nhu cầu và quyền truy cập phù hợp.

### 1.1. Kết quả dài hạn mong muốn

- Người dùng chỉ cần mô tả mục tiêu; AI có thể tự cấu trúc nhiệm vụ ở mức phù hợp.
- AI không âm thầm thay yêu cầu cụ thể bằng một câu trả lời tổng quát hơn.
- Nguồn, hành động và kết quả quan trọng có thể được kiểm tra.
- AI nói rõ nội dung nào đã xác minh, nội dung nào là suy luận/giả định, nội dung nào chưa thể xác minh.
- Công việc nhiều bước có thể tiếp tục qua các phiên hội thoại hoặc chuyển sang AI khác mà không mất quyết định/trạng thái.
- Lỗi thực tế được lưu lại và dùng làm đầu vào cho việc cải tiến, thay vì chỉ sửa prompt theo cảm tính.
- Quy trình hoạt động với nhiều AI, không phụ thuộc vào API hoặc tính năng độc quyền của một nhà cung cấp.
- Mức độ ghi chép và kiểm chứng phù hợp với nhiệm vụ; không thủ tục hóa tất cả tương tác.
- Những cải tiến mới chỉ được giữ lại khi được hỗ trợ bởi tài liệu đáng tin hoặc kết quả thử nghiệm thích hợp.

### 1.2. Nguồn gốc vấn đề

Một tình huống thực tế mở đầu dự án: người dùng yêu cầu tìm **sáu nguyên tắc thiết kế chương trình đa tiến trình/đa luồng** trong *Mastering Embedded Linux Development* của Frank Vasquez và Chris Simmonds. Các phản hồi ban đầu đã đưa ra kiến thức tổng quát thay vì xác minh đúng danh sách trong nguồn gốc. Việc này bộc lộ vấn đề quan trọng: một AI có thể trả lời trôi chảy mà vẫn không hoàn thành yêu cầu nguồn-cụ-thể.

Từ đó, người dùng muốn một cách làm có khả năng:

- tự tìm nguồn phù hợp thay vì yêu cầu người dùng cung cấp mọi thứ;
- bám đúng tác phẩm/phiên bản/chương nếu nhiệm vụ yêu cầu như vậy;
- không dừng quá sớm khi nguồn đầu tiên chưa đủ;
- phân biệt hành động AI báo cáo với hành động/kết quả có bằng chứng;
- giữ trạng thái và cải tiến qua các nhiệm vụ;
- áp dụng được cho ChatGPT, Claude, Gemini, Copilot và các AI khác.

**PILOT-01 về sáu nguyên tắc trong sách vẫn chưa được xác minh hoàn tất.** Không được viết rằng sáu nguyên tắc đã được tìm ra hoặc xác minh trừ khi có nguồn đúng ấn bản và bằng chứng tương ứng.

---

## 2. Những yêu cầu và sở thích làm việc đã thống nhất với người dùng

Các điểm dưới đây là yêu cầu dự án quan trọng, cần duy trì trong những lượt tiếp theo.

### 2.1. Nghiên cứu trước, sáng tạo sau

Người dùng đã nói rõ rằng mục tiêu không phải yêu cầu AI tự nghĩ ra nguyên tắc mới. Trình tự phải là:

1. Tìm các phương pháp/framework/tài liệu đã tồn tại.
2. Đọc nguồn gốc hoặc tài liệu có thẩm quyền, hiểu đúng phạm vi và giới hạn.
3. Đối chiếu những phương pháp liên quan.
4. Chọn phần phù hợp với mục tiêu của dự án.
5. Áp dụng vào nhiệm vụ thực tế.
6. Chỉ sau đó mới thử đề xuất thay đổi hoặc thành phần mới, với lý do và bằng chứng rõ ràng.

Không dùng tên một framework nổi tiếng làm bằng chứng rằng nó phù hợp. Không sao chép máy móc một framework hướng đến thiết kế sản phẩm AI nếu mục tiêu ở đây là phương pháp làm việc cá nhân với các AI đã có.

### 2.2. Chủ động nghiên cứu và không yêu cầu người dùng làm việc thay AI

- Nếu thông tin có thể được tra cứu bằng công cụ hiện có, AI nên chủ động tìm kiếm trước khi yêu cầu người dùng đưa link/nội dung.
- Nếu nguồn đầu tiên không đủ, thử những lựa chọn hợp lý khác thay vì dừng sớm.
- Không yêu cầu người dùng cung cấp lại bối cảnh đã có trong cuộc hội thoại hoặc Task Run.
- Không nói đã nghiên cứu/đọc/kiểm tra nguồn nếu chỉ mới xem snippet hoặc chưa truy cập được nội dung cần thiết.
- Nếu nguồn trả phí, không truy cập được hoặc thiếu bản đúng, báo giới hạn và tìm những lựa chọn hợp pháp/khả dụng khác; không lấp chỗ trống bằng phỏng đoán.

### 2.3. Chất lượng quan trọng hơn hình thức tuân thủ

- Không đánh trượt một kết quả tốt chỉ vì thiếu một trường thủ tục không liên quan.
- Không coi việc điền đủ template, có nhiều nguồn hoặc câu trả lời dài là bằng chứng của chất lượng.
- Không bắt buộc cùng một quy trình/chuỗi bước khi nhiều cách giải đều đáp ứng tiêu chí và người dùng không yêu cầu quy trình cố định.
- Không đặt trọng số/điểm tổng hoặc ngưỡng đạt theo cảm tính khi chưa có cơ sở.

### 2.4. Tính linh hoạt và hiệu quả

- Ưu tiên cách thực hiện đơn giản nhất mà vẫn đáp ứng mục tiêu, độ rủi ro và yêu cầu lưu vết.
- Câu hỏi nhỏ thường không cần Task Run hoặc tìm kiếm sâu.
- Nhiệm vụ nguồn-cụ-thể, có cập nhật theo thời gian, cần kiểm thử thực tế, có rủi ro đáng kể hoặc kéo dài qua nhiều phiên thường cần kiểm chứng/ghi chép nhiều hơn.
- Có thể tăng hoặc giảm mức thủ tục trong khi làm nếu phát hiện bối cảnh khác với giả định ban đầu.
- Tính linh hoạt không có nghĩa giảm độ chính xác, bỏ tiêu chí bắt buộc hay vi phạm giới hạn quyền.

### 2.5. Debugging kỹ thuật

Người dùng có kinh nghiệm Embedded Linux/firmware và ưu tiên debug theo giả thuyết, tương tác từng bước, không phải checklist dài. Đặc biệt:

- bắt đầu từ trạng thái thật và dữ kiện đã xác nhận;
- không dùng ngữ cảnh cũ nếu nó mâu thuẫn với cập nhật hiện tại;
- trước một bước kiểm tra, nêu ngắn gọn giả thuyết/mục đích và tại sao kết quả có thể thay đổi hướng chẩn đoán;
- thường chỉ đưa một bước/lệnh cần thiết rồi chờ kết quả, nếu đó là cách người dùng đang yêu cầu;
- không lặp các kiểm tra đã xác nhận nếu không có lý do mới;
- không thay đổi kiến trúc/cấu hình hoặc đề xuất sửa chữa lớn khi chưa có bằng chứng.

Đây là hướng dẫn tương tác áp dụng khi làm nhiệm vụ kỹ thuật; không có nghĩa mọi nhiệm vụ nghiên cứu tài liệu đều phải đi theo từng bước chờ người dùng.

---

## 3. Lịch sử phiên bản và lý do thay đổi

### v0.3 — Cấu trúc ban đầu

Tạo bộ tài liệu khởi đầu gồm quy tắc chung, Task Run template, rubric, evaluation case seed set, quy trình so sánh AI, failure/change log, tài liệu nguồn/phương pháp và ví dụ PILOT-01.

Mục tiêu là chuyển từ prompt rời rạc sang hồ sơ nhiệm vụ có mục tiêu, tiêu chí thành công, bằng chứng, đánh giá và cải tiến.

### v0.4 — Continuation / Handoff

Người dùng hỏi cách tiếp tục chính công việc hiện tại qua nhiều lượt/AI. v0.4 bổ sung mục `G. Continuation / Handoff` vào full Task Run Template, với các trường như:

- trạng thái và checkpoint cuối;
- việc đã hoàn thành và bằng chứng;
- việc đang làm và việc còn mở;
- quyết định/giả định cần giữ;
- bước tiếp theo cụ thể;
- file liên quan và source of truth;
- lịch sử checkpoint;
- chỉ dẫn cho AI nhận bàn giao.

Tạo `tasks/SYS-001_ai-working-system-development.md` để chính dự án có một hồ sơ trạng thái bền vững, cùng case `CONT-001` để kiểm tra việc tiếp tục từ file đã lưu.

Giới hạn: cơ chế được thiết kế và đưa vào tài liệu, nhưng chưa có kết quả thử nghiệm chứng minh nó đã giảm lặp việc hoặc tăng độ chính xác khi bàn giao.

### v0.5 — Tính linh hoạt

Người dùng lo ngại v0.4 quá cứng nhắc. v0.5 bổ sung:

- `Quick`: trả lời trực tiếp cho việc đơn giản; Task Run thường không cần.
- `Standard`: dùng đặc tả ngắn và mini template khi cần giữ hồ sơ.
- `Rigorous`: dùng full Task Run và các phần xác minh/đánh giá cần thiết cho việc phức tạp, nguồn-cụ-thể, rủi ro, kiểm thử hoặc kéo dài.
- `TASK_RUN_MINI_TEMPLATE.md` cho Standard; giữ full `TASK_RUN_TEMPLATE.md` cho Rigorous hoặc công việc cần handoff.
- Làm rõ các mục không liên quan có thể bỏ qua hoặc đánh dấu `N/A` khi hữu ích.
- Cho phép chuyển mode khi bối cảnh thay đổi.
- Bổ sung chiều rubric `R8 — Mức độ tương xứng của quy trình`.
- Thêm case seed `FLEX-001` đến `FLEX-004`.

**Các mode Quick/Standard/Rigorous là thiết kế do dự án điều chỉnh, không phải taxonomy nguyên văn của Anthropic/NIST/OpenAI.** Hiệu quả của chúng vẫn cần được thử nghiệm.

### Quy tắc versioning hiện tại

Theo `CHANGELOG.md`:

- patch: sửa lỗi diễn đạt/cấu trúc không đổi phương pháp;
- minor: thay đổi phương pháp/template/rubric hoặc hành vi vận hành;
- major: chỉ khi hệ thống đủ ổn định, đã có thử nghiệm và tiêu chí chấp nhận rõ.

Không ghi đè phiên bản cũ. Mỗi bản cần nói rõ thay đổi và trạng thái kiểm chứng. Một số phiên bản `0.x` là version nội bộ, không phải chứng nhận chất lượng bên ngoài.

---

## 4. Cơ sở phương pháp hiện tại

Dự án chủ trương kế thừa phương pháp có sẵn và phân biệt rõ điều gì là từ nguồn, điều gì là điều chỉnh của dự án. Tài liệu chi tiết: `research/SOURCES_AND_METHOD.md`.

### S1. Anthropic — Demystifying evals for AI agents
https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents

Khái niệm tham khảo: task/test case, trial, grader, transcript/trace, outcome, evaluation suite; lấy nhiệm vụ và lỗi thực tế làm đầu vào; có tiêu chí thành công rõ; cân bằng trường hợp hành vi nên/không nên xảy ra; phối hợp grader xác định, LLM và con người tùy trường hợp; xem transcript khi case trượt; dùng capability evals và regression evals; duy trì test suite.

Giới hạn: bài tập trung vào agent và hệ thống triển khai. Việc chuyển những khái niệm đó thành file Task Run cho người dùng giao diện AI là điều chỉnh riêng của dự án.

### S2. Anthropic — Building effective agents
https://www.anthropic.com/engineering/building-effective-agents

Cơ sở tham khảo cho việc chọn workflow đơn giản phù hợp, phân biệt workflow với agent và không tăng độ phức tạp khi chưa có lý do. Đây là một căn cứ liên quan đến tính linh hoạt nhưng không cung cấp trực tiếp ba mode của v0.5.

### S3. OpenAI — Evaluation best practices
https://developers.openai.com/api/docs/guides/evaluation-best-practices

Tham khảo cách xác định mục tiêu, tạo dữ liệu đánh giá, định nghĩa metric, chạy và so sánh kết quả, đánh giá liên tục. Dùng để đối chiếu phương pháp; hệ thống không nên phụ thuộc vào API hoặc sản phẩm đánh giá riêng của một nhà cung cấp.

### S4–S5. NIST — AI Risk Management Framework và Playbook
https://www.nist.gov/itl/ai-risk-management-framework  
https://airc.nist.gov/airmf-resources/playbook/

Bổ sung bối cảnh và rủi ro, GOVERN/MAP/MEASURE/MANAGE, đo lường và xử lý rủi ro. NIST hướng đến quản lý rủi ro hệ thống AI rộng hơn; không tuyên bố AI Working System tuân thủ toàn bộ NIST AI RMF. Playbook là hướng dẫn linh hoạt, không phải danh sách bắt buộc theo trình tự.

### S6. Microsoft — HAX Toolkit / Guidelines for Human-AI Interaction
https://www.microsoft.com/en-us/haxtoolkit/ai-guidelines/  
https://www.microsoft.com/en-us/haxtoolkit/

Nguồn bổ trợ về tương tác người-AI, phản hồi, phục hồi từ lỗi và quyền kiểm soát của con người. HAX hướng chủ yếu đến thiết kế sản phẩm nên chỉ chuyển những nội dung phù hợp sang phương pháp cá nhân.

### S7. Stanford CRFM — HELM
https://github.com/stanford-crfm/helm

Tham khảo đánh giá đa chiều, minh bạch và có thể tái lập. `SOURCES_AND_METHOD.md` ghi dự án HELM đã chuyển sang maintenance mode vào 2026-06-01; xác minh lại trạng thái trước khi dựa vào chi tiết hiện hành.

### Phân biệt quan trọng

**Có cơ sở từ nguồn:** nhiệm vụ và tiêu chí thành công rõ, nhiều dạng grader, kiểm tra outcome thay vì chỉ dựa vào lời báo cáo, đọc transcript khi lỗi, capability/regression cases, đánh giá liên tục và tính đến bối cảnh/rủi ro.

**Là điều chỉnh của dự án:** cấu trúc folder/file, Working Agreement, các chiều rubric R1–R8, taxonomy lỗi, continuation/handoff, Quick/Standard/Rigorous, Mini Task Run, FLEX cases và quy tắc versioning.

**Chưa được thực nghiệm trong dự án:** mức độ đầy đủ của rubric cho mọi ngành; trọng số/ngưỡng chấm tối ưu; số case thích hợp; mức cải thiện so với cách làm thông thường; hiệu quả của handoff; lợi ích định lượng của v0.5 so với v0.4.

Trước khi sử dụng nguồn để quyết định có hệ quả quan trọng, AI nhận bàn giao cần kiểm tra lại nguồn gốc và phiên bản hiện hành, thay vì chỉ dựa vào bản tóm tắt này.

---

## 5. Mô hình vận hành v0.5

### 5.1. Ba mode

| Mode | Dùng khi | Hồ sơ gợi ý |
|---|---|---|
| `Quick` | Câu hỏi đơn giản, ít rủi ro, phạm vi rõ, không cần lưu trạng thái | Thường không cần Task Run; trả lời trực tiếp |
| `Standard` | Có nhiều yêu cầu, nghiên cứu/tổng hợp/viết/phân tích, hoặc cần giữ lại kết quả | `templates/TASK_RUN_MINI_TEMPLATE.md` khi cần hồ sơ |
| `Rigorous` | Cần nguồn/phiên bản chính xác, kiểm thử thực tế, rủi ro đáng kể, so sánh AI hoặc tiếp tục nhiều phiên | `templates/TASK_RUN_TEMPLATE.md` và chỉ các phần rubric/case/log phù hợp |

Nếu người dùng không chỉ định mode, chọn mức thủ tục nhỏ nhất vẫn đáp ứng mục tiêu, rủi ro, yêu cầu kiểm chứng và nhu cầu lưu vết. Mode khác nhau ở lượng thủ tục, **không khác nhau ở nghĩa vụ chính xác/trung thực**.

Có thể nâng mức khi phát hiện nguồn chuyên biệt, cập nhật hiện hành, mâu thuẫn, thiếu dữ kiện quan trọng, tác động nguy hiểm hoặc nhu cầu continuation. Có thể giản lược các phần không đóng góp vào chất lượng, nhưng không được bỏ yêu cầu bắt buộc của người dùng hoặc tiêu chí xác minh thiết yếu.

### 5.2. Các nguyên tắc bất biến

- Giữ nguyên yêu cầu gốc và tiêu chí bắt buộc.
- Không bịa dữ kiện/nguồn/hành động/kết quả build/test/trạng thái file.
- Phân biệt `reported`, `observed`, `verified`, `inferred`, `assumed`, `unverified` khi cần.
- Không coi lời tự thuật của AI là bằng chứng độc lập.
- Ưu tiên nguồn gốc và đúng phiên bản khi nội dung cụ thể của nguồn được yêu cầu.
- Không ép một trình tự duy nhất nếu nhiều cách giải hợp lệ đều đáp ứng tiêu chí.
- Không tạo điểm tổng khi chưa có trọng số/cách chấm có căn cứ.
- Nêu điều không thể xác minh; không bắt buộc mọi kết quả phải là pass/fail.
- Người dùng giữ quyền quyết định cuối cùng.
- Giữ trạng thái công việc đủ để tiếp tục; không lặp việc đã xác minh mà không có lý do mới.

### 5.3. Bộ tài liệu vận hành

- **Working Agreement:** quy tắc xuyên suốt.
- **Task Specification:** mục tiêu, phạm vi, đầu vào, tiêu chí hoàn thành.
- **Execution Record:** hành động/nguồn/kết quả có ý nghĩa.
- **Evidence Record:** căn cứ cho kết luận.
- **Evaluation Rubric:** các chiều đánh giá liên quan; không bắt buộc chấm mọi chiều.
- **Evaluation Case Set:** bài thử năng lực, hồi quy, hành vi cân bằng, handoff và tính linh hoạt.
- **Failure and Change Log:** lỗi thật, giả thuyết nguyên nhân, thay đổi và cách kiểm tra.
- **Model Comparison Protocol:** điều kiện so sánh nhiều AI.
- **Continuation / Handoff:** trạng thái và bước tiếp theo cho việc dài hạn.

Không phải tất cả thành phần đều phải dùng trong mọi nhiệm vụ. README là hướng dẫn nhanh; Working Agreement là quy tắc chung; Task Run là hồ sơ của nhiệm vụ cụ thể; evaluation/change files dùng khi thật sự đánh giá hoặc cải tiến.

---

## 6. Tập tin chính của v0.5 và vai trò

Gốc trong repository: `/home/ndhson/devbix/work/AI-Working-System/`. **Repository là nguồn sự thật duy nhất** kể từ 2026-10-12; gói `AI_Working_System_v0.5/` và `AI_Working_System_v0.5.zip` đã ngừng dùng (xem mục 7.1).

| File | Vai trò |
|---|---|
| `README.md` | Hướng dẫn nhanh, chọn mode, cấu trúc folder, giới hạn và vòng lặp cải tiến |
| `WORKING_AGREEMENT.md` | Quy tắc làm việc chung, lựa chọn mode, minh bạch bằng chứng, debugging và handoff |
| `CHANGELOG.md` | Lịch sử thay đổi v0.3/v0.4/v0.5, quy tắc versioning |
| `MIGRATION_v0.3_to_v0.4.md` | Tài liệu lịch sử về chuyển sang handoff; không phải chính sách mới nhất |
| `MIGRATION_v0.4_to_v0.5.md` | Giải thích đổi sang workflow linh hoạt |
| `FILE_INVENTORY.md` | Danh sách file, kích thước và hash rút gọn để kiểm tra nhanh |
| `MANIFEST.json` | Phiên bản, trạng thái, thay đổi và file được khai báo trong gói |
| `templates/TASK_RUN_MINI_TEMPLATE.md` | Hồ sơ Standard rút gọn |
| `templates/TASK_RUN_TEMPLATE.md` | Hồ sơ đầy đủ cho Rigorous/nhiệm vụ kéo dài |
| `templates/EVALUATION_CASE_TEMPLATE.md` | Khung chi tiết hóa một evaluation case |
| `evaluation/EVALUATION_RUBRIC.md` | Rubric R1–R8; chọn chiều phù hợp, chưa có trọng số tổng thống nhất |
| `evaluation/EVALUATION_CASE_SET.md` | Seed cases cho research, technical, behavior, efficiency/regression, continuation, flexibility |
| `comparison/MODEL_COMPARISON_PROTOCOL.md` | Ghi điều kiện và so sánh AI tương đối công bằng |
| `improvement/FAILURE_CHANGE_LOG.md` | Nhật ký lỗi/giả thuyết/thay đổi/case cần chạy lại |
| `research/SOURCES_AND_METHOD.md` | Các nguồn tham chiếu, phần kế thừa/điều chỉnh và giới hạn |
| `examples/PILOT-01_book_six_principles.md` | Ví dụ nghiên cứu nội dung nguồn-cụ-thể từ sách; đã chạy 1 lần, `blocked` ở nguồn, chưa xác minh sáu nguyên tắc |
| `scripts/verify_package.sh` | Kiểm tra kích thước/hash trong inventory, liên kết Markdown tương đối và chênh lệch manifest |
| `tasks/SYS-001_ai-working-system-development.md` | **Task Run chính của dự án này; source of truth cho trạng thái và next action** |
| `tasks/SYS-002_doc_consistency_check.md` | Ví dụ Task Run Standard đã chạy (mini template) |

**Nguồn sự thật:** repository `ndhson3006/AI-Working-System` (nhánh `main`). Gói `AI_Working_System_v0.5.zip` và thư mục `/home/ndhson/AI_Working_System_v0.5/` **đã ngừng dùng** ngày 2026-10-12 — chúng là snapshot trước pilot và đã lệch khỏi repo ở 10 file. Không dùng chúng làm căn cứ nữa. Lịch sử lệch này ghi ở `F-003` trong `improvement/FAILURE_CHANGE_LOG.md`.

---

## 7. Trạng thái hiện tại — sự thật, chưa xác minh, việc còn mở

### 7.1. Đã có (artifact được tạo)

- Bộ tài liệu v0.3, v0.4 và v0.5 được tạo trong phiên làm việc.
- v0.4 có continuation/handoff trong full template và hồ sơ `SYS-001`.
- v0.5 có Quick/Standard/Rigorous, mini template, nguyên tắc bỏ qua mục không phù hợp, R8 và FLEX cases.
- **Nguồn sự thật:** repository (nhánh `main`), commit `v0.5` ngày 2026-10-12. Gói phát hành `AI_Working_System_v0.5/` và `.zip` đã **ngừng dùng** — snapshot trước pilot, lệch 10 file so với repo.
- Pilot đã chạy ngày 2026-10-12: `FLEX-001` (Quick), `FLEX-002`/`PILOT-01` (Rigorous), `SYS-002` (Standard), `CONT-001` (handoff).
- Lỗi đồng bộ artifact đã được phát hiện và sửa (`F-001`); `scripts/verify_package.sh` được thêm làm kiểm tra hồi quy.
- **Lệch repo-vs-gói hiện tại:** sau các pilot, repo mới hơn gói ở nhiều file (`PILOT-01` 12241 vs 7394 B; `README.md` 9246 vs 8440; `CHANGELOG.md` 5423 vs 4051; `SYS-001` 17972 vs 12840). `verify_package.sh` **không** phát hiện được loại lệch này vì nó chỉ kiểm tra nhất quán nội bộ một thư mục. Trạng thái `open`.
- **Chưa commit:** git HEAD vẫn là `34b51d7 "update v0.4"`. Toàn bộ v0.5, các pilot và bản sửa `F-001` nằm ở working tree chưa commit.
- Lần tạo gói v0.5 đã có kiểm tra cấu trúc ZIP và các liên kết Markdown nội bộ, theo lịch sử thực hiện được ghi trong Task Run.

Đây là trạng thái của artifact, không phải bằng chứng rằng phương pháp đã cải thiện hiệu suất.

### 7.2. Chưa được xác minh bằng pilot

- v0.5 có làm giảm thủ tục cho câu hỏi đơn giản không — **đã chạy 1 lần (`FLEX-001`) và quan sát thấy có; chưa đủ để kết luận chung**.
- mode lựa chọn có chính xác khi chuyển giữa câu hỏi đơn giản và nhiệm vụ nguồn-cụ-thể không — **đã có 1 lần mỗi mức Quick/Standard/Rigorous; chưa có đối chứng v0.4 và chưa đo thời gian/lượt**.
- mini template có lưu đủ thông tin với ít công sức hơn không — **đã chạy 1 lần (`SYS-002`): dùng 4/6 mục, đủ cho nhiệm vụ nhỏ; chưa đo thời gian**.
- handoff có giúp AI khác tiếp tục đúng mà không lặp công việc hay làm mất quyết định không — **đã chạy 1 lần (`CONT-001`, `RUN-CONT-001-1`): 5/5 điều kiện đạt, nhưng dùng cùng mô hình nên chưa chứng minh được handoff khác nhà cung cấp**.
- rubric có được nhiều người chấm/AI áp dụng nhất quán không — **chưa đo**.
- sửa quy trình có cải thiện lỗi mục tiêu mà không gây hồi quy không — **chưa thử**.
- kết quả PILOT-01 có đủ sáu nguyên tắc đúng từ ấn bản sách không — **`blocked`**: đã xác minh ấn bản (Fourth Edition, 2025) và chương (`Learning about Processes and Threads`, chương 21 trên nền tảng nhà xuất bản), nhưng nội dung chương không truy cập được (HTTP 403/CAPTCHA). Xem `F-002`.
- hệ thống chưa được đẩy lên GitHub trong lịch sử hiện có; không được nói rằng đã tích hợp/triển khai GitHub.

### 7.2b. Đã xác minh được trong phiên 2026-10-12

- Bản repo của `examples/PILOT-01_book_six_principles.md` từng lệch khỏi bản trong gói v0.5 (thiếu tiêu đề `— v0.5`, trường `Mode`, mục ghi chú mức thủ tục). Đã khôi phục khớp gói; ghi nhận `F-001`.
- Đã thêm `scripts/verify_package.sh` kiểm tra kích thước/hash trong inventory, liên kết Markdown tương đối và chênh lệch manifest; chạy sạch sau khi sửa.
- `RUN-CONT-001-1`: tác nhân ở ngữ cảnh mới giữ đúng Task ID/mục tiêu, chọn đúng next action, phân biệt `confirmed` với `reported`/`assumed`; đồng thời phát hiện chỉ dẫn lỗi thời trong mục F/G6 (`F-003`) và việc repo đi trước gói. Người chấm đã tự chạy lại lệnh để xác minh các phát hiện.
- **Giới hạn:** kết quả `CONT-001` này không phải bằng chứng độc lập về chất lượng hệ thống — cùng mô hình đọc hồ sơ do chính nó viết; chưa có AI/người thứ hai độc lập.

### 7.3. Các case hiện có — đều là seed/draft

- Nghiên cứu/truy nguồn: `RES-001` tới `RES-004`.
- Thực hiện/xác minh kỹ thuật: `TECH-001` tới `TECH-003`.
- Tuân thủ/giới hạn: `BEH-001` tới `BEH-003`.
- Tương xứng/hồi quy: `EFF-001`, `REG-001`.
- Tiếp tục công việc: `CONT-001` (đã chuyển sang `pilot`, đã chạy 1 lần).
- Tính linh hoạt: `FLEX-001` tới `FLEX-004`. `FLEX-001` và `FLEX-002` đã chuyển sang `pilot` (đã chạy 1 lần, 2026-10-12); `FLEX-003`, `FLEX-004` vẫn `draft`.

Các case phải có đầu vào cụ thể, điều kiện môi trường, tiêu chí và ground truth/phương pháp xác minh trước khi được coi là `active`. Không trình bày những case draft như benchmark đã được kiểm định.

### 7.4. Hồ sơ trạng thái chính

Mở `tasks/SYS-001_ai-working-system-development.md`. File đó ghi:

- `Task status: in_progress`;
- current mode: `Rigorous`;
- `Next action`: lặp `CONT-001` với một AI/phiên **khác nhà cung cấp/mô hình**; chạy `FLEX-003`/`FLEX-004`; xử lý `F-003` và lệch repo-vs-gói. Mức Standard đã chạy xong (`SYS-002`) — **không lặp lại**;
- các việc còn mở: `OPEN-1` chạy pilot các mức (cả ba mức đã chạy 1 lần, chưa đo thời gian/lượt); `OPEN-2` kiểm tra continuation/handoff (đã chạy 1 lần, còn thiếu AI khác nhà cung cấp); `OPEN-3` hoàn thiện PILOT-01 nếu có thể truy cập nguồn (blocked); `OPEN-4` nghiên cứu rubric/failure analysis; `OPEN-5` chạy FLEX cases (`FLEX-001`/`FLEX-002` đã chạy, `FLEX-003`/`FLEX-004` chưa).

**Nếu trạng thái trong hồ sơ này khác với file SYS-001 mới nhất của repository**, đọc và ưu tiên hồ sơ mới nhất, ghi lại mâu thuẫn nếu có. Handoff này là snapshot tại ngày lập, không phải tự động mới hơn mọi chỉnh sửa sau này.

---

## 8. Lộ trình nghiên cứu/triển khai tiếp theo

Không tiếp tục tạo framework mới ngay. Giai đoạn kế tiếp là **pilot và học từ bằng chứng**.

### Bước 1 — Pilot `FLEX-001` / mode Quick — ĐÃ CHẠY 1 LẦN (2026-10-12)

Chạy một câu hỏi kiến thức ổn định, ví dụ `grep -n pattern file` trong Bash dùng làm gì.

Quan sát:
- AI có trả lời trực tiếp và đúng không? — có.
- Có tìm kiếm, lập Task Run hoặc tạo báo cáo thừa không? — không.
- Có giữ rõ điều kiện/giới hạn quan trọng không? — có.
- Thời gian/lượt trao đổi chỉ ghi nếu đo được, không phỏng đoán. — **không đo được trong phiên này; ghi là chưa đo.**

Kết quả chi tiết: `evaluation/EVALUATION_CASE_SET.md`, mục `RUN-FLEX-001-1`. Một lần chạy không đủ để kết luận.

### Bước 2 — Pilot `RES-001` / `FLEX-002` ở mức Rigorous — ĐÃ CHẠY 1 LẦN, BỊ CHẶN Ở NGUỒN (2026-10-12)

Dùng nhiệm vụ tìm sáu nguyên tắc trong *Mastering Embedded Linux Development*. Trước khi kết luận:
- xác minh đúng ấn bản, chương và nguồn truy cập được — **đã xác minh**: Fourth Edition (Packt, 2025), chương `Learning about Processes and Threads`, chương 21 trên nền tảng nhà xuất bản;
- ưu tiên nguồn gốc hoặc preview hợp pháp đủ hỗ trợ kết luận — **không truy cập được**: Packt/O'Reilly trả HTTP 403, reader proxy trả CAPTCHA;
- ghi vị trí hỗ trợ từng nguyên tắc — **chưa làm được** vì thiếu nội dung;
- không thay nguồn gốc bằng danh sách tự tổng hợp — **đã tuân thủ**;
- nếu nguồn đúng không thể truy cập, đánh dấu chưa xác minh, không dựng đáp án — **đã tuân thủ**, trạng thái `blocked`.

Kết quả chi tiết: mục B–G của `examples/PILOT-01_book_six_principles.md`; `F-002` trong Failure/Change Log.

### Bước 3 — Chạy `CONT-001` — **đã chạy 1 lần ngày 2026-10-12**

Tạo checkpoint thật trong một Task Run có: một việc hoàn thành được dẫn chứng, một việc còn mở, quyết định cần giữ và next action cụ thể. Chuyển file đó sang một phiên/AI khác (nếu có thể), rồi xem AI có:
- giữ đúng Task ID/goal/criteria;
- đọc và dùng evidence đúng;
- không lặp việc đã xong;
- tiếp tục từ next action;
- phân biệt confirmed với reported/assumed;
- cập nhật trạng thái thật, không tuyên bố ghi file khi chưa có quyền.

**Kết quả `RUN-CONT-001-1`:** cả 6 hành vi trên đều đạt. Tác nhân ở ngữ cảnh mới còn phát hiện chỉ dẫn lỗi thời trong hồ sơ (mục F/G6 vẫn yêu cầu chạy Standard dù đã xong) — ghi là `F-003`.

**Việc còn lại của bước này:** lặp lại với một AI/phiên **khác nhà cung cấp hoặc khác mô hình**. Lần chạy trên dùng cùng mô hình nên chưa loại trừ được khả năng cùng một mô hình chia sẻ cùng cách đọc hiểu hồ sơ. Chi tiết: `RUN-CONT-001-1` trong `evaluation/EVALUATION_CASE_SET.md`.

### Bước 4 — Ghi kết quả, không vội kết luận

Với mỗi pilot, ghi:
- đầu vào chính xác;
- chế độ được chọn và lý do;
- điều kiện/công cụ/mô hình nếu so sánh AI;
- kết quả và bằng chứng;
- thủ tục thừa hoặc thiếu;
- điểm chưa thể đánh giá.

Sau đó cập nhật `SYS-001`, evaluation case tương ứng và Failure/Change Log nếu thật sự có lỗi/đề xuất thay đổi. Không cần ghi lỗi nếu không có vấn đề đáng kể.

### Bước 5 — Chỉ thay đổi version khi có căn cứ

Nếu pilot chỉ cho thấy câu chữ/format chưa rõ, chỉnh nhỏ và ghi changelog. Nếu thay đổi quy tắc vận hành, rubric hoặc template có ý nghĩa, tạo phiên bản mới theo `CHANGELOG.md` và giữ v0.5 làm tham chiếu. Không tăng version chỉ vì muốn “làm mới”.

---

## 9. Thang độ tin cậy của thông tin trong hồ sơ bàn giao

Dùng các từ trạng thái một cách nhất quán:

- **Artifact created:** file/gói đã được tạo; không đồng nghĩa phương pháp đã tốt.
- **Reported:** AI hoặc một hồ sơ nói rằng điều gì đó đã xảy ra; cần kiểm tra khi quan trọng.
- **Observed:** hành động/kết quả có thể thấy trong log, tool output hoặc môi trường.
- **Verified:** bằng chứng thích hợp đã được kiểm tra trực tiếp.
- **Inferred:** kết luận suy ra từ dữ kiện; cần nêu căn cứ.
- **Assumption:** giả định chưa xác nhận.
- **Draft:** bài kiểm thử/tiêu chí chưa hoàn chỉnh, chưa được dùng làm benchmark.
- **Pilot:** đã bắt đầu thử nghiệm, nhưng chưa đủ bằng chứng cho kết luận tổng quát.
- **Validated:** chỉ dùng khi có quy trình kiểm định và dữ liệu tương ứng được mô tả; không dùng chỉ vì đã thử một lần.

Đừng nâng cấp trạng thái chỉ dựa trên câu trả lời của chính AI đã tạo artifact.

---

## 10. Thứ tự ưu tiên khi các tài liệu mâu thuẫn

Khi cần giải quyết mâu thuẫn, dùng thứ tự thực tế sau:

1. Chỉ dẫn mới nhất, trực tiếp của người dùng — trong phạm vi an toàn và quyền hạn.
2. Task Run `SYS-001` mới nhất cho mục tiêu/trạng thái dự án; nếu mục tiêu đổi theo chỉ dẫn trực tiếp, cập nhật hồ sơ với lý do.
3. File nguồn chính của thành phần cụ thể: `WORKING_AGREEMENT.md` cho quy tắc, `README.md` cho cách dùng, template cho cấu trúc hồ sơ, rubric cho tiêu chí đánh giá, `SOURCES_AND_METHOD.md` cho nguồn và giới hạn.
4. `CHANGELOG.md` và migration guides để hiểu lịch sử, không thay thế quy tắc hiện hành.
5. File handoff này như bản tổng hợp bối cảnh; nếu khác với artifact hiện hành, xác minh và cập nhật handoff thay vì coi snapshot này là bất biến.
6. Lịch sử hội thoại để làm rõ ý định/diễn tiến; không dùng memory hoặc lời tóm tắt thay cho bằng chứng nguồn khi cần xác minh.

---

## 11. Prompt ngắn để nhận và tiếp tục dự án

AI nhận bàn giao có thể bắt đầu bằng chỉ dẫn sau:

> Bạn đang tiếp tục dự án AI Working System, Task `SYS-001`, hiện ở v0.5/pilot. Đọc file `AI_WORKING_SYSTEM_PROJECT_HANDOFF.md` để hiểu lịch sử và quyết định đã thống nhất. Sau đó đọc `tasks/SYS-001_ai-working-system-development.md`, `README.md`, `WORKING_AGREEMENT.md` và `research/SOURCES_AND_METHOD.md` trong gói hoặc repository nếu được cung cấp. Không bắt đầu lại từ đầu. Mục tiêu là xây dựng phương pháp làm việc với nhiều AI dựa trên nguồn/phương pháp đã có, kiểm chứng bằng nhiệm vụ thực tế và giữ quy trình linh hoạt theo rủi ro. Hiện v0.5 chưa được chứng minh tốt hơn v0.4; hầu hết evaluation case vẫn là draft. Bốn pilot Quick/Standard/Rigorous/`CONT-001` đã chạy một lần mỗi loại. **Trước khi làm bất cứ next action nào, đối chiếu nó với bảng việc đã xong và việc còn mở — hồ sơ từng chứa chỉ dẫn lỗi thời (`F-003`).** Lưu ý repo hiện đi trước gói v0.5 và chưa được commit. Chủ động tra cứu nguồn nếu cần; không bịa hành động/bằng chứng; cập nhật cùng Task Run khi có checkpoint. Nếu repository/file không truy cập được, nói rõ và không giả vờ đã đọc.

---

## 12. Tóm tắt ngắn nhất

**Dự án này không tìm cách ép AI vào một checklist cố định. Nó xây dựng một phương pháp làm việc đa-AI, dựa trên nghiên cứu có sẵn, có thể kiểm chứng và cải tiến từ lỗi thật, nhưng dùng ít thủ tục nhất có thể khi nhiệm vụ đơn giản.**

v0.5 đã có cấu trúc tài liệu và cơ chế linh hoạt. Bốn pilot đầu tiên đã chạy (`FLEX-001`, `FLEX-002`/`RES-001`, `SYS-002`, `CONT-001`) và đã phát hiện được một vấn đề thật trong chính hồ sơ handoff (`F-003`). Công việc tiếp theo vẫn không phải viết thêm nguyên tắc từ suy đoán, mà là: lặp `CONT-001` với AI khác nhà cung cấp, chạy `FLEX-003`/`FLEX-004`, xử lý lệch repo-vs-gói, và chỉ thay đổi hệ thống khi kết quả/bằng chứng cho thấy cần thiết.
