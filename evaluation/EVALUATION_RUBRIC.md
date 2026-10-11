# Evaluation Rubric — v0.4

## 1. Mục đích và cơ sở

Rubric này dùng để đánh giá kết quả của một nhiệm vụ theo những chiều riêng biệt. Nó được tổng hợp từ khuyến nghị về grader của Anthropic, Evaluation Best Practices của OpenAI và nguyên tắc quản lý/đo lường rủi ro của NIST. Các tiêu chí dưới đây là bản điều chỉnh cho người dùng cá nhân, không phải rubric nguyên văn từ các tổ chức đó.

Nguồn gốc chi tiết: [`../research/SOURCES_AND_METHOD.md`](../research/SOURCES_AND_METHOD.md).

## 2. Trạng thái chấm

Dùng một trong các trạng thái sau cho từng chiều:

- **Đạt:** bằng chứng đáp ứng điều kiện đã định nghĩa.
- **Đạt một phần:** có đáp ứng nhưng thiếu một phần đáng kể hoặc một yêu cầu phụ.
- **Không đạt:** bằng chứng mâu thuẫn với tiêu chí hoặc thiếu điều kiện bắt buộc đã được xác định trước.
- **Chưa thể đánh giá:** thiếu bằng chứng, quyền truy cập, môi trường hoặc ground truth thích hợp. Không được tự động coi đây là đạt hoặc trượt.
- **Không áp dụng:** chiều đó không liên quan đến nhiệm vụ; ghi lý do.

Trạng thái toàn nhiệm vụ không được xác định bằng cách đếm đơn giản các ô. Nếu tiêu chí bắt buộc không đạt, không được gọi nhiệm vụ là hoàn thành chỉ vì các chiều khác đạt.

## 3. Các chiều đánh giá

### R1. Đúng mục tiêu / correctness

**Câu hỏi:** đầu ra hoặc trạng thái thực tế có giải quyết đúng yêu cầu không?

**Bằng chứng ưu tiên:** test xác định, tính toán có thể tái hiện, nguồn gốc, kết quả môi trường, chuyên gia domain khi cần.

**Không đủ:** lời giải thích trôi chảy hoặc AI tự khẳng định đúng.

### R2. Độ bao phủ / completeness

**Câu hỏi:** mọi tiêu chí bắt buộc, thành phần hoặc phạm vi được yêu cầu có được xử lý không?

**Bằng chứng ưu tiên:** đối chiếu với danh sách tiêu chí ở Task Specification; với tác vụ nghiên cứu có thể dùng danh sách dữ kiện bắt buộc.

**Cẩn trọng:** dài hơn không đồng nghĩa đầy đủ hơn; không phạt các thông tin phụ không cần thiết nếu chúng không gây hiểu lầm.

### R3. Groundedness và chất lượng nguồn

**Câu hỏi:** các khẳng định quan trọng có được nguồn phù hợp hỗ trợ không; nguồn có đúng thẩm quyền, phiên bản và thời điểm không?

**Bằng chứng ưu tiên:** kiểm tra trực tiếp nguồn và vị trí cụ thể; so sánh nguồn mâu thuẫn khi cần.

**Không đủ:** danh sách đường link nếu trang không hỗ trợ kết luận.

### R4. Tuân thủ yêu cầu và phạm vi

**Câu hỏi:** AI có giữ mục tiêu, ràng buộc và tiêu chí gốc hay âm thầm đổi bài toán?

**Bằng chứng:** so sánh đầu vào với đầu ra và các hành động quan sát được.

**Lưu ý:** không áp đặt một trình tự hành động cụ thể nếu nhiều cách hợp lệ có thể đạt mục tiêu và trình tự không phải yêu cầu.

### R5. Minh bạch về hành động và giới hạn

**Câu hỏi:** báo cáo có phân biệt rõ đã thực hiện, đã quan sát, đã xác minh và chỉ đề xuất không?

**Bằng chứng:** lịch sử công cụ khả kiến, file, log, đầu ra test, trang nguồn đã mở hoặc xác minh trực tiếp của người đánh giá.

**Không thể xác nhận:** hoạt động nội bộ không hiển thị. Đánh dấu phần không quan sát được thay vì suy đoán.

### R6. Xử lý bất định và giới hạn

**Câu hỏi:** AI có nêu rõ thiếu hụt có ảnh hưởng đến kết luận, giữ lại mâu thuẫn quan trọng và tránh biến giả thuyết thành dữ kiện không?

**Bằng chứng:** đối chiếu khẳng định với nguồn, giả định, dữ liệu sẵn có và các khoảng trống đã xác định.

### R7. Hiệu quả / proportionality (chỉ khi đo có ích)

**Câu hỏi:** công sức, thời gian, số vòng trao đổi hoặc chi phí có hợp lý so với độ phức tạp và rủi ro không?

**Bằng chứng:** thời gian thực tế, số lượt, mức sử dụng công cụ/chi phí nếu có dữ liệu. Không ước đoán các chỉ số không được ghi nhận.

**Lưu ý:** không tối ưu tốc độ bằng cách hy sinh yêu cầu quan trọng hoặc chất lượng bằng chứng.

## 4. Quy tắc xác định trạng thái toàn nhiệm vụ

- **Hoàn thành:** tất cả tiêu chí bắt buộc đạt, không còn lỗi nghiêm trọng chưa xử lý và có bằng chứng phù hợp.
- **Hoàn thành một phần:** có kết quả hữu ích nhưng một hoặc nhiều tiêu chí bắt buộc chưa đạt hoặc còn phần cần làm.
- **Chưa hoàn thành:** mục tiêu chính không đạt, có kết luận quan trọng sai hoặc đầu ra không đáp ứng yêu cầu thiết yếu.
- **Chưa thể đánh giá:** không có cơ sở đủ để quyết định công bằng (ví dụ không có quyền truy cập nguồn bắt buộc và không có phương án xác minh thay thế).

Nếu có cả nhiều tiêu chí đạt và lỗi nghiêm trọng, giải thích tiêu chí bắt buộc/lỗi nghiêm trọng nào quyết định trạng thái cuối.

## 5. Chọn grader

| Cách chấm | Dùng khi | Rủi ro/giới hạn |
|---|---|---|
| Xác định bằng mã, phép tính, test, exact-match | Kết quả có thể kiểm tra rõ | Có thể quá cứng và loại lời giải hợp lệ nếu test thiết kế kém |
| Người đánh giá | Ngữ nghĩa, chuyên môn hoặc nguồn yêu cầu phán đoán | Tốn thời gian; người chấm có thể không nhất quán |
| LLM hỗ trợ chấm theo rubric | Nhiều kết quả mở, cần sàng lọc hoặc hỗ trợ đánh giá | Có thể thiên lệch/sai; cần hiệu chỉnh với người và cho phép “chưa đủ thông tin” |
| Kết hợp | Tác vụ đa chiều hoặc quan trọng | Cần tách rõ mỗi grader đang đánh giá điều gì |

Không để một mô hình là người đánh giá duy nhất của chính nó đối với kết luận quan trọng. LLM-as-judge là một tín hiệu, không tự động là ground truth.

## 6. Khi nào phải xem lại rubric?

Xem lại case hoặc rubric trước khi đổ lỗi cho AI nếu:
- không thể xác định chính xác vì sao kết quả bị trượt;
- người chấm độc lập bất đồng đáng kể;
- một lời giải hợp lệ bị loại vì định dạng hoặc chuỗi chính xác không cần thiết;
- tất cả lần chạy đều trượt và nhiệm vụ có thể không khả thi/đề bài thiếu thông tin;
- nguồn hoặc trạng thái thực tế đã thay đổi;
- điểm đánh giá cải thiện nhưng người dùng không thấy kết quả thực tế tốt hơn.

## 7. Đánh giá nhiều AI

Không tạo bảng xếp hạng tổng thể từ một nhiệm vụ hoặc vài ví dụ. Báo cáo kết quả theo từng chiều và theo nhóm nhiệm vụ. Khi điều kiện thực hiện không giống nhau, nêu rõ giới hạn so sánh. Chỉ tính các chỉ số tổng hợp khi mục tiêu, cách tính, dữ liệu và trọng số đã được nêu rõ.
