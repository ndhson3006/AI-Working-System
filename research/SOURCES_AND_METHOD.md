# Sources and Method — Cơ sở nghiên cứu của AI Working System v0.4

**Ngày kiểm tra các liên kết:** 2026-10-11  
**Mục đích:** ghi rõ nguồn phương pháp, phần được kế thừa, phần được điều chỉnh và giới hạn. Các nguồn sau được đưa vào làm cơ sở tham khảo; việc tổng hợp không có nghĩa những tổ chức đó chứng nhận bộ tài liệu này.

## 1. Nguồn chính

### S1. Anthropic — Demystifying evals for AI agents (2026-01-09)
URL: https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents

Các khái niệm được dùng:
- task/test case có đầu vào và tiêu chí thành công;
- trial là một lần thử;
- grader đánh giá một phần hiệu năng;
- transcript/trace ghi lại tương tác và công cụ có thể quan sát;
- outcome là trạng thái thực tế cuối cùng;
- evaluation suite là tập nhiệm vụ đo năng lực/hành vi cụ thể.

Các khuyến nghị phù hợp:
- bắt đầu từ nhiệm vụ và lỗi thực tế;
- yêu cầu mô tả nhiệm vụ rõ và có lời giải tham chiếu khi phù hợp;
- giữ tập kiểm thử cân bằng, đo cả khi hành vi nên xảy ra và không nên xảy ra;
- kết hợp grader xác định, LLM và con người tùy bài toán;
- kiểm tra transcript khi case trượt để phân biệt lỗi agent với lỗi evaluator;
- có capability evals và regression evals;
- duy trì và cập nhật bộ đánh giá.

**Giới hạn khi vận dụng:** bài viết chủ yếu nói về đánh giá AI agents/hệ thống triển khai. Tài liệu này chuyển một số khái niệm sang quy trình cá nhân dùng giao diện AI; những trường dữ liệu/nội quy mới là cách điều chỉnh, không phải trích nguyên văn.

### S2. Anthropic — Building effective agents
URL: https://www.anthropic.com/engineering/building-effective-agents

Dùng làm cơ sở cho việc chọn workflow đơn giản đáp ứng yêu cầu, phân biệt workflow và agent, cũng như tránh tăng độ phức tạp nếu chưa có lý do.

**Giới hạn:** các mẫu kiến trúc agent không phải trình tự bắt buộc cho mọi cuộc hội thoại của người dùng.

### S3. OpenAI — Evaluation best practices
URL: https://developers.openai.com/api/docs/guides/evaluation-best-practices

Dùng làm đối chiếu độc lập về việc định nghĩa mục tiêu, thiết kế dữ liệu/tiêu chí đánh giá, so sánh kết quả và lặp lại quá trình đánh giá. Cũng nhấn mạnh sự cần thiết của các tiêu chí cụ thể và kiểm tra chất lượng bộ đánh giá.

**Lưu ý về tính độc lập:** đây là tài liệu của nhà cung cấp có dịch vụ AI riêng. Trong hệ thống này, ta kế thừa cách tiếp cận, không phụ thuộc vào API hay nền tảng riêng của nhà cung cấp.

### S4. NIST — AI Risk Management Framework (AI RMF)
URL: https://www.nist.gov/itl/ai-risk-management-framework

### S5. NIST — AI RMF Playbook
URL: https://airc.nist.gov/airmf-resources/playbook/

Dùng để bổ sung cách nhìn về bối cảnh, rủi ro, quản trị, đo lường và xử lý rủi ro thông qua các chức năng GOVERN, MAP, MEASURE và MANAGE.

**Giới hạn:** NIST AI RMF hướng vào quản lý rủi ro của hệ thống AI ở phạm vi rộng hơn. Playbook là tài liệu hướng dẫn tự nguyện, không phải checklist theo thứ tự bắt buộc. Trong bộ này chỉ dùng các phần có liên quan, không tuyên bố tuân thủ toàn bộ NIST AI RMF.

### S6. Microsoft — Guidelines for Human-AI Interaction / HAX Toolkit
URL: https://www.microsoft.com/en-us/haxtoolkit/ai-guidelines/
Toolkit: https://www.microsoft.com/en-us/haxtoolkit/

Dùng làm tham khảo bổ trợ cho trải nghiệm tương tác, xử lý trường hợp AI sai, phản hồi và quyền kiểm soát của con người.

**Giới hạn:** toolkit hướng chủ yếu đến đội ngũ thiết kế sản phẩm AI, nên chỉ vận dụng những nguyên tắc giao tiếp và hỗ trợ phục hồi lỗi có thể chuyển sang quy trình cá nhân.

### S7. Stanford CRFM — HELM (repository)
URL: https://github.com/stanford-crfm/helm

Dùng tham khảo về hướng đánh giá minh bạch, có thể tái lập và đa chiều. Repository ghi HELM đã chuyển sang maintenance mode từ 2026-06-01, vì vậy nó được dùng làm tài liệu phương pháp, không phải nền tảng phụ thuộc để vận hành hệ thống cá nhân.

## 2. Bản đồ phương pháp → file trong bộ tài liệu

| Thành phần trong bộ v0.4 | Cơ sở tham khảo chính | Phần được điều chỉnh cho cá nhân |
|---|---|---|
| Working Agreement | NIST RMF; Microsoft HAX | Quy tắc duy trì mục tiêu, kiểm tra bằng chứng, thận trọng với lời tự thuật và quyền quyết định |
| Task Specification | Anthropic Evals; OpenAI evaluation best practices | Mẫu đặc tả dùng trước từng nhiệm vụ |
| Execution Record | Anthropic định nghĩa transcript, tool calls và outcome | Ghi sự kiện quan sát được, tách khỏi lời tự thuật AI |
| Evaluation Rubric | Anthropic grader types; OpenAI eval best practices | Các chiều R1–R7 và trạng thái tiếng Việt |
| Evaluation Case Set | Anthropic capability/regression evals và balanced sets | Các case seed theo nhu cầu người dùng nhiều AI; hiện ở trạng thái draft |
| Model Comparison Protocol | Anthropic trials/eval sets; HELM về tính tái lập và đa chiều | Ghi lại khác biệt công cụ, model, prompt và điều kiện so sánh |
| Failure and Change Log | Anthropic transcript review/regression; NIST MEASURE/MANAGE | Sổ theo dõi lỗi và thay đổi cá nhân |

## 3. Điều đã có cơ sở và điều chưa được chứng minh

### Được hỗ trợ bởi các nguồn
- Đánh giá cần có nhiệm vụ và tiêu chí thành công rõ.
- Có thể dùng nhiều kiểu grader; mỗi kiểu có ưu và nhược điểm.
- Kiểm tra đầu ra/outcome khác với chỉ đọc lời AI báo cáo.
- Nên kiểm tra transcript và cả chất lượng của chính rubric.
- Cần cả case năng lực và case hồi quy; bộ test cần được bảo trì.
- Bối cảnh và rủi ro cần ảnh hưởng đến cách đánh giá.

### Là phần tổng hợp/điều chỉnh của v0.4
- Cấu trúc thư mục và sáu tài liệu vận hành.
- Taxonomy mã lỗi trong Failure and Change Log.
- Các chiều R1–R7 và trạng thái đánh giá tiếng Việt.
- Seed cases dành riêng cho cá nhân sử dụng nhiều AI.

### Chưa được kiểm chứng bằng thử nghiệm của dự án
- Bộ chiều rubric có đầy đủ cho mọi loại nhiệm vụ hay không.
- Trọng số hoặc ngưỡng chấm tốt nhất.
- Số case thích hợp để đánh giá đáng tin trong từng lĩnh vực.
- Mức cải thiện thực tế so với cách sử dụng AI thông thường.
- Mức độ tương đương khi so sánh các sản phẩm AI có công cụ khác nhau.

## 4. Nguyên tắc cập nhật

1. Không thêm nguyên tắc chỉ vì nó nghe hợp lý; yêu cầu chỉ rõ nguồn hoặc một lỗi/nhu cầu quan sát được mà nó giải quyết.
2. Khi nguồn mới mâu thuẫn với tài liệu hiện tại, ghi lại sự khác biệt trước khi sửa.
3. Thay đổi hướng dẫn phải có phiên bản; nếu thay đổi để sửa lỗi, liên kết với Failure ID và case kiểm thử liên quan.
4. Không dùng nội dung do một nhà cung cấp công bố như bằng chứng họ chứng nhận hoặc ủng hộ bộ tài liệu này.
5. Kiểm tra lại URL và phiên bản nguồn trước khi dựa vào tài liệu cho quyết định có hệ quả quan trọng.


## Bổ sung v0.4 — Continuation / Handoff

Mục continuation/handoff là phần điều chỉnh cho nhu cầu làm việc dài hạn của người dùng, không phải một thành phần nguyên văn của một framework nguồn duy nhất. Nó vận dụng các nguyên tắc đã có trong tài liệu dự án: hồ sơ đánh giá có thể tái lập, lưu kết quả và bằng chứng, duy trì bộ case theo thời gian và ghi nhận thay đổi. Mục này cần được đánh giá thực nghiệm bằng case `CONT-001`; chưa có bằng chứng trong bản phát hành này cho thấy nó đã cải thiện tỷ lệ tiếp tục chính xác hoặc giảm công việc lặp lại.
