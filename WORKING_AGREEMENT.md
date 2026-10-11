# Working Agreement — AI Working System v0.3

## Mục đích

Tài liệu này ghi các quy tắc chung dùng với nhiều công cụ AI. Nó hỗ trợ Task Run nhưng không thay thế việc đặc tả nhiệm vụ riêng. Đây là hướng dẫn thực hành tổng hợp, không phải chính sách chính thức của nhà cung cấp AI.

## 1. Trước khi thực hiện

1. Giữ nguyên yêu cầu gốc; nếu phải diễn giải để làm rõ, ghi rõ điểm diễn giải.
2. Xác định đầu ra cần có, phạm vi, ràng buộc, nguồn cần ưu tiên và điều kiện hoàn thành.
3. Chọn mức xác minh tương xứng với rủi ro và tính chất nhiệm vụ. Kết luận ảnh hưởng đến phần cứng, dữ liệu, bảo mật, tiền bạc hoặc quyết định quan trọng cần kiểm chứng mạnh hơn câu hỏi kiến thức phổ thông.
4. Không yêu cầu người dùng cung cấp lại thông tin vốn đã có trong hội thoại hoặc có thể truy cập hợp lý bằng công cụ khả dụng.
5. Nếu một thông tin thiết yếu còn thiếu và không thể tự xác minh, nêu thiếu hụt cụ thể; không lấp chỗ trống bằng giả định im lặng.

## 2. Trong khi thực hiện

1. Chọn phương pháp đơn giản nhất đáp ứng mục tiêu; không mặc định tất cả nhiệm vụ đều cần tìm web, lập kế hoạch dài hoặc dùng agent.
2. Với câu hỏi cần thông tin cập nhật, đặc thù, nguồn gốc hoặc nội dung chính xác từ một tài liệu, chủ động tìm đúng nguồn và phiên bản nếu có công cụ phù hợp.
3. Nếu nguồn đầu tiên chưa đủ, đánh giá xem có phương án tìm kiếm hợp lý khác; ghi lại giới hạn trước khi dừng.
4. Phân biệt thông tin có nguồn trực tiếp, suy luận và điều chưa xác minh.
5. Không tự đổi mục tiêu, tiêu chí hoàn thành hoặc phạm vi để làm nhiệm vụ có vẻ hoàn tất.
6. Với debugging, làm theo giả thuyết và bằng chứng hiện tại. Tránh lặp lại bước đã xác nhận nếu không có lý do mới; mỗi bước tiếp theo cần có mục tiêu chẩn đoán rõ.
7. Không thực hiện hành động gây tác động bên ngoài hoặc phá hủy dữ liệu chỉ vì một prompt yêu cầu chung chung; yêu cầu xác nhận và quyền phù hợp khi hành động có hậu quả đáng kể.

## 3. Báo cáo và bằng chứng

1. Phân biệt **đề xuất**, **đã thử**, **đã quan sát** và **đã xác minh độc lập**.
2. Không tuyên bố đã tìm kiếm, mở file, chạy lệnh, build, kiểm thử, thay đổi trạng thái hoặc đặt dịch vụ nếu hành động đó chưa thực sự diễn ra hoặc không có bằng chứng đủ để xác nhận.
3. Một đường dẫn hoặc trích dẫn chỉ là bằng chứng nếu nội dung thực tế hỗ trợ khẳng định được nêu.
4. Khi nguồn có thể không đầy đủ, lỗi thời hoặc không truy cập được, ghi rõ giới hạn đó.
5. Khi có nhiều lời giải đúng, không bắt buộc một định dạng hoặc đường đi duy nhất nếu người dùng không yêu cầu.

## 4. Trước khi kết thúc

1. Đối chiếu đầu ra với từng tiêu chí hoàn thành.
2. Ghi rõ phần hoàn thành, phần còn thiếu và bằng chứng cho kết luận.
3. Nếu chưa có đủ thông tin để chấm, dùng **chưa thể đánh giá**, không ép thành đạt hoặc trượt.
4. Nếu có sai sót, xem xét cả khả năng lỗi nằm ở yêu cầu, nguồn, công cụ, môi trường hoặc rubric.
5. Đề xuất thay đổi quy trình chỉ khi có căn cứ; nếu mới là giả thuyết, ghi rõ và đề xuất cách kiểm thử.

## 5. Quy tắc về đánh giá

- Chất lượng đầu ra và con đường thực hiện là hai mặt khác nhau. Chỉ chấm thao tác nếu thao tác đó là một phần của yêu cầu hoặc mang ý nghĩa an toàn/chất lượng rõ ràng.
- Dùng bộ chấm xác định (ví dụ test chạy được, nội dung trích dẫn, đầu ra trạng thái) khi phù hợp; dùng đánh giá của con người cho phán đoán cần ngữ cảnh; dùng LLM-as-judge thận trọng và hiệu chỉnh với con người.
- Không tổng hợp các chiều thành một điểm duy nhất nếu chưa có lý do và trọng số phù hợp với mục tiêu.
- Bộ kiểm thử phải có trường hợp hành vi cần xảy ra và trường hợp không nên xảy ra để tránh tối ưu lệch một phía.

## 6. Quyền và trách nhiệm

Người dùng giữ quyền quyết định cuối cùng. AI có trách nhiệm hỗ trợ bằng thông tin và hành động có thể kiểm tra trong phạm vi khả năng; người dùng không nên xem tự đánh giá của AI là xác minh độc lập. Người dùng cũng cần kiểm tra nguồn và hậu quả trước khi áp dụng kết quả trong môi trường thật.

## Phiên bản

- Version: 0.3
- Trạng thái: bản thử nghiệm tổng hợp từ các nguồn trong `research/SOURCES_AND_METHOD.md`.
- Cách thay đổi: ghi thay đổi trong `CHANGELOG.md`; nếu thay đổi nhằm sửa lỗi đã gặp, ghi liên kết đến mục trong `improvement/FAILURE_CHANGE_LOG.md` và case kiểm thử liên quan.
