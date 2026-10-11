# Model Comparison Protocol — v0.4

## Mục tiêu

So sánh các AI trên cùng loại nhiệm vụ mà không nhầm khác biệt mô hình với khác biệt về prompt, công cụ, nguồn dữ liệu hoặc điều kiện chạy. Phương pháp này dành cho so sánh cá nhân; không tạo ra benchmark khoa học chỉ từ vài tác vụ.

## 1. Xác định câu hỏi so sánh

Trước tiên chọn một câu hỏi cụ thể, ví dụ:
- AI nào tìm đúng nội dung tài liệu gốc ổn định hơn?
- AI nào tuân thủ phạm vi tốt hơn?
- Một thay đổi trong Working Agreement có làm giảm một loại lỗi nhất định không?

Không bắt đầu bằng mục tiêu mơ hồ “AI nào thông minh hơn?”.

## 2. Chuẩn bị nhiệm vụ

- Dùng cùng yêu cầu nguyên gốc và tiêu chí đánh giá đã cố định.
- Cung cấp cùng tài liệu đầu vào và cùng bối cảnh liên quan.
- Ghi chính xác những công cụ mỗi AI được phép dùng.
- Không sửa rubric sau khi đã xem đầu ra trừ khi phát hiện rubric sai; nếu sửa, tạo phiên bản mới và đánh giá lại các kết quả bị ảnh hưởng.
- Chọn các case đại diện cho mục tiêu cần đo; thêm case đối chứng nếu có nguy cơ tối ưu lệch một hành vi.

## 3. Ghi lại điều kiện

Cho mỗi lần chạy, ghi:
- Tên nhà cung cấp, tên model và phiên bản hiển thị nếu có;
- Ngày/giờ chạy;
- Chế độ suy luận hoặc cài đặt ảnh hưởng đáng kể nếu người dùng nhìn thấy;
- Công cụ được bật (web search, file access, code execution, shell, v.v.);
- File/dữ liệu được cấp;
- Prompt và phiên bản tài liệu quy tắc;
- Thời gian thực tế nếu đo được;
- Các giới hạn khiến việc so sánh không hoàn toàn tương đương.

Nếu không biết phiên bản chính xác, ghi `không hiển thị`; đừng đoán.

## 4. Thực hiện

1. Tạo bản sao sạch của hội thoại hoặc phiên chạy cho mỗi model.
2. Cấp cùng prompt và đầu vào; không cung cấp cho model sau câu trả lời của model trước.
3. Không can thiệp giữa các lần chạy, trừ khi quy trình thử nghiệm quy định có tương tác tiếp diễn. Nếu có tương tác, ghi lại mọi lượt.
4. Nếu nhiệm vụ có tính biến thiên và mức độ ổn định là điều muốn đo, chạy lặp lại; số lần chạy cần được nêu trước và phù hợp với nguồn lực, không mặc định một con số duy nhất cho mọi bài toán.
5. Lưu đầu ra đầy đủ và bằng chứng có thể quan sát. Tránh chỉ giữ bản tóm tắt đã được chọn lọc.

## 5. Chấm điểm

- Chấm từng chiều theo `../evaluation/EVALUATION_RUBRIC.md`.
- Khi có thể, người đánh giá nên chấm đầu ra theo cùng rubric mà không biết tên model trước khi quyết định; ghi rõ nếu không làm mù được.
- Kiểm tra nguồn gốc và outcome bằng phương pháp độc lập thích hợp.
- Không để model được so sánh là nguồn đánh giá duy nhất cho đầu ra của chính nó.
- Báo cáo mỗi model theo từng chiều, từng case và các điều kiện thực hiện; không xếp hạng tổng thể nếu không có lý do, cách tính và trọng số được định nghĩa trước.

## 6. Khi điều kiện không tương đương

Ví dụ: một model có web search, model khác không có; một model đọc được file gốc, model khác chỉ nhận snippet. Có hai cách:

- **So sánh trải nghiệm thực tế:** giữ nguyên những gì người dùng thực sự có với mỗi sản phẩm và kết luận rằng so sánh phản ánh cả model, giao diện, công cụ và tích hợp.
- **So sánh có kiểm soát:** cấp cùng nguồn/đầu vào và dùng khả năng công cụ tương đương nếu khả thi.

Không tuyên bố đây là so sánh thuần túy giữa các mô hình khi điều kiện khác nhau.

## 7. Báo cáo kết quả

- Câu hỏi so sánh và tập case sử dụng;
- Điều kiện mỗi lần chạy;
- Bảng kết quả theo từng chiều/case;
- Các khác biệt đáng quan tâm và bằng chứng;
- Kết quả chưa chắc chắn hoặc không thể đánh giá;
- Giới hạn về cỡ mẫu, tính biến thiên và tính tương đương;
- Quyết định thực tế (nếu có), cùng lý do.

## 8. Mẫu bảng chạy

| Case ID | Model / phiên bản | Run ID | Công cụ và đầu vào | Kết quả task | Kết quả từng rubric | Thời gian (nếu đo) | Ghi chú giới hạn |
|---|---|---|---|---|---|---|---|
| `[id]` | `[model]` | `[run]` | `[điều kiện]` | `[trạng thái]` | `[ghi rõ]` | `[nếu có]` | `[ghi chú]` |
