# Evaluation Rubric — v0.5

## 1. Mục đích, phạm vi và cách dùng linh hoạt

Không dùng rubric đầy đủ cho mọi tác vụ. Quick thường chỉ cần kiểm tra yêu cầu trực tiếp; Standard nên kiểm tra tiêu chí thành công và các khẳng định quan trọng; Rigorous dùng rubric chi tiết khi cần truy xuất, kiểm thử, so sánh hoặc kiểm soát rủi ro.

Với Standard/Rigorous, chỉ đánh giá các chiều có ý nghĩa. `Không áp dụng` là trạng thái hợp lệ khi chiều đó không liên quan; không phạt vì bỏ một phép đo không cần thiết. Không bắt buộc các chiều có trọng số như nhau và không tạo tổng điểm nếu chưa có cơ sở.



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

## 3. Các chiều đánh giá (chọn theo nhiệm vụ, không bắt buộc tất cả)

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

### R8. Mức độ tương xứng của quy trình (chỉ cần khi đánh giá chính hệ thống làm việc)

**Câu hỏi:** mức thủ tục, ghi chép, tìm kiếm và kiểm tra có tương xứng với độ phức tạp/rủi ro và mục tiêu hay không?

- **Đạt:** dùng đủ các kiểm tra quan trọng nhưng không thêm bước/hồ sơ không mang lại giá trị rõ.
- **Đạt một phần:** có thủ tục lặp lại hoặc thiếu một bước có ích nhưng chưa làm sai kết luận chính.
- **Không đạt:** hoặc bỏ kiểm tra thiết yếu, hoặc buộc quy trình nặng nề không cần thiết đến mức làm cản trở nhiệm vụ.
- **Chưa thể đánh giá:** không có dữ liệu về thao tác/công sức hoặc không thể suy ra từ hồ sơ.
- **N/A:** chỉ đánh giá chất lượng nội dung mà không có mục tiêu so sánh quy trình.

Không chấm R8 dựa trên độ dài câu trả lời đơn thuần; đánh giá xem các bước có phục vụ mục tiêu/rủi ro thực tế hay không.

### R9. Hình thức trả lời — chỉ áp dụng, không báo cáo (chỉ khi đánh giá chỉ dẫn cho AI hoặc kết quả có giao ước trả lời)

**Câu hỏi:** AI có **áp dụng** quy tắc trong im lặng thay vì **báo cáo** việc tuân thủ, và có giữ câu trả lời trong phạm vi được hỏi không?

**Bằng chứng:** nội dung câu trả lời — sự hiện diện/vắng mặt của phần mở bài, tên chế độ, mục "quy trình đã theo", cảnh báo/gợi ý không được hỏi, và nội dung lan ra ngoài câu hỏi.

- **Đạt:** trả lời thẳng; không mở bài; không nhắc lại yêu cầu; không nêu tên chế độ; không báo cáo tuân thủ; không trả lời lan; độ dài tương xứng độ khó.
- **Đạt một phần:** có một dấu hiệu nhỏ (ví dụ một câu nhắc quy trình) nhưng không làm loãng câu trả lời.
- **Không đạt:** trình bày quy trình, nêu tên chế độ, liệt kê quy tắc đã tuân thủ, hoặc trả lời lan sang nội dung không được hỏi.
- **Chưa thể đánh giá:** chỉ có mô tả gián tiếp, không có bản ghi câu trả lời thật.
- **N/A:** nhiệm vụ chỉ cần nội dung, không có giao ước về hình thức trả lời; hoặc người dùng đã yêu cầu rõ phải trình bày quy trình.

**Lưu ý:** đây **không** phải chiều về độ ngắn. Trả lời dài vẫn đạt nếu độ khó câu hỏi đòi hỏi. Điểm này đo việc **không thông báo**, không đo số chữ. Ngược lại, một câu trả lời ngắn nhưng kèm "tôi đã áp dụng chế độ X" là không đạt. Lỗi thật đầu tiên được phát hiện bằng chiều này: `F-004` (snippet v0.5 với AI khác nhà cung cấp) và case `PORT-002`.

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


## 8. Quy tắc chống cứng nhắc

- Không yêu cầu mọi Task Run phải có đủ bảy/tám chiều đánh giá. Chọn chiều liên quan từ tiêu chí thành công và loại nhiệm vụ.
- Không yêu cầu mọi nhiệm vụ có web search, transcript, checkpoint, Failure Analysis hoặc tổng điểm. Chỉ áp dụng khi yêu cầu/điều kiện thực tế cần chúng.
- Một quy trình đơn giản được xem là phù hợp nếu nó chứng minh đủ các tiêu chí bắt buộc. Một quy trình chi tiết không được ưu tiên chỉ vì ghi lại nhiều thao tác hơn.
- Không bỏ qua kiểm tra quan trọng chỉ để nhanh hơn. Tính tương xứng là cân bằng giữa độ tin cậy, rủi ro, thời gian và chi phí.
- Nếu đánh giá rằng quy trình quá nặng hoặc quá nhẹ, ghi rõ dấu hiệu quan sát được và thử nghiệm thay đổi trước khi sửa Working Agreement chung.
