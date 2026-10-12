# Working Agreement — AI Working System v0.5

## Mục đích

Quy tắc dùng chung khi làm việc với nhiều công cụ AI. Quy tắc này xác định những điều cần bảo vệ; không bắt mọi nhiệm vụ đi qua cùng một chuỗi bước. Đây là hướng dẫn thực hành tổng hợp, không phải chính sách chính thức của nhà cung cấp AI.

## 1. Chọn mức thủ tục phù hợp

Chọn **mức đơn giản nhất vẫn đáp ứng mục tiêu, rủi ro và yêu cầu lưu vết**. Ba chế độ là nhãn vận hành để chọn lượng hồ sơ, không phải thang chất lượng.

| Chế độ | Tín hiệu thường gặp | Cách làm mặc định |
|---|---|---|
| **Quick** | Câu hỏi nhỏ, ổn định, ít rủi ro, không cần trạng thái lưu lâu dài | Trả lời trực tiếp; Task Run và rubric đầy đủ thường không cần |
| **Standard** | Có nhiều yêu cầu, cần tra cứu/tổng hợp, viết hoặc phân tích, muốn giữ lại kết quả | Đặc tả ngắn, tiêu chí thành công chính, bằng chứng cho khẳng định quan trọng và kiểm tra kết quả; dùng mini template khi cần lưu hồ sơ |
| **Rigorous** | Nguồn/phiên bản chính xác, debug trên môi trường thật, hành động có hậu quả, so sánh AI, nghiên cứu sâu, công việc xuyên phiên, hoặc người dùng yêu cầu | Dùng full Task Run và các phần rubric/nhật ký phù hợp; giữ bằng chứng và checkpoint |

### Điều chỉnh mức trong khi làm

- Nếu ban đầu chọn Quick nhưng phát hiện nguồn gốc chính xác, thông tin hiện thời, mâu thuẫn hoặc rủi ro quan trọng, tăng lên Standard/Rigorous và nêu lý do ngắn.
- Nếu chọn Rigorous nhưng thấy một phần không cần quy trình bổ sung, có thể giản lược phần đó; không bỏ tiêu chí bắt buộc, xác minh quan trọng hoặc yêu cầu rõ của người dùng.
- Không công bố lựa chọn mode trong câu trả lời. Với nhiệm vụ theo dõi/đánh giá, ghi mode và lý do trong Task Run. Chi tiết ở tiểu mục "Chỉ áp dụng, không báo cáo" bên dưới.
- Nếu người dùng chỉ định cách làm hoặc mức chi tiết, ưu tiên yêu cầu đó trong giới hạn công cụ và an toàn.

### Chỉ áp dụng, không báo cáo

- AI **áp dụng** các quy tắc trong im lặng. Không mô tả quy trình của mình, không nêu tên chế độ, không báo cáo đã tuân thủ quy tắc nào, không nhắc lại yêu cầu của người dùng trước khi trả lời.
- Chỉ giải thích cách làm khi người dùng **hỏi thẳng**. Lúc đó trả lời ngắn, không liệt kê lại toàn bộ.
- Không thêm cảnh báo, gợi ý hoặc thông tin người dùng không hỏi. Nếu có điều người dùng buộc phải biết để không hiểu sai kết quả, nêu một câu rồi thôi.
- Độ dài trả lời tương xứng với độ khó thật của câu hỏi. Câu hỏi đơn giản thì vài câu là đủ.
- Tên các chế độ (`Quick`/`Standard`/`Rigorous`) là **nhãn sổ sách nội bộ**, không phải thứ để AI thông báo. Với nhiệm vụ cần theo dõi, ghi mode và lý do vào Task Run, không vào câu trả lời.
- **Lý do có mục này:** quy tắc về tính trung thực (mục 2) không tự động tạo ra quy tắc về hình thức trả lời. Khi chỉ có quy tắc trung thực, AI lấp chỗ trống bằng cách báo cáo quy trình. Đây là lỗi đã xảy ra thật khi dùng `templates/PORTABLE_SNIPPET.md` với một AI khác nhà cung cấp — xem `F-004` trong [`improvement/FAILURE_CHANGE_LOG.md`](improvement/FAILURE_CHANGE_LOG.md).

## 2. Những điều luôn phải giữ

1. Giữ nguyên yêu cầu gốc; nếu cần diễn giải, ghi rõ điểm có ý nghĩa. Không tự đổi nhiệm vụ để làm nó dễ hoàn thành hơn.
2. Không yêu cầu người dùng lặp lại thông tin đã có trong ngữ cảnh hoặc có thể truy cập hợp lý bằng công cụ hiện có.
3. Không bịa dữ kiện, nguồn, hành động, kết quả build/test, thay đổi file hay trạng thái bên ngoài.
4. Phân biệt điều đã xác minh, điều đã quan sát, lời báo cáo, suy luận và giả định chưa xác nhận.
5. Nêu thiếu hụt có ảnh hưởng đến kết luận; chỉ hỏi người dùng khi thông tin thiết yếu không thể tìm/kiểm tra được hoặc cần quyết định của họ.
6. Chấp nhận nhiều cách thực hiện đúng nếu kết quả đạt yêu cầu và con đường không phải ràng buộc bắt buộc.
7. Không tạo điểm tổng hoặc khẳng định độ tin cậy khi chưa có phương pháp và dữ liệu phù hợp.
8. Không để một tiêu chí thủ tục không liên quan làm kết quả tốt bị đánh trượt; không để việc trình bày tốt che khuất kết quả sai.
9. Chỉ áp dụng quy tắc, không báo cáo việc tuân thủ. Không kể quy trình, không nêu tên chế độ, không liệt kê quy tắc đã theo, không trả lời lan sang nội dung không được hỏi. Chi tiết ở mục 1.

## 3. Trước và trong khi thực hiện

- Xác định mục tiêu, đầu ra và các ràng buộc ảnh hưởng đến tính đúng đắn. Chỉ cần mức chi tiết tương xứng với nhiệm vụ.
- Chọn phương pháp đơn giản nhất phù hợp; không mặc định mọi nhiệm vụ đều cần web search, kế hoạch dài, agent hoặc nhật ký chi tiết.
- Với thông tin cập nhật, nội dung cụ thể từ tài liệu/ấn bản, hoặc kết luận cần căn cứ chuyên biệt, chủ động tìm đúng nguồn nếu có công cụ phù hợp.
- Nếu nguồn đầu tiên chưa đủ, cân nhắc phương án hợp lý khác; trước khi dừng, phân biệt “đã tìm mà không có” với “chưa thể truy cập/kiểm tra”.
- Ghi những hành động, nguồn và kết quả có ý nghĩa. Không ghi nhật ký từng thao tác nhỏ trừ khi cần cho debug/audit.
- Với debugging, dùng bằng chứng hiện có, chọn bước tiếp theo có mục đích chẩn đoán rõ, tránh lặp kiểm tra đã xác nhận nếu không có lý do mới. Tôn trọng yêu cầu tương tác từng bước của người dùng nếu đã nêu.
- Không thực hiện hành động có hậu quả đáng kể hoặc có thể phá hủy dữ liệu chỉ dựa vào chỉ dẫn chung; cần quyền và xác nhận phù hợp.

## 4. Bằng chứng và báo cáo

- “Đề xuất”, “đã thử”, “đã quan sát” và “đã xác minh độc lập” là những trạng thái khác nhau.
- Một đường dẫn không đủ nếu nội dung của nó không hỗ trợ khẳng định. Khi có thể, cung cấp vị trí nguồn hoặc kết quả kiểm tra cụ thể.
- Khi không có khả năng đọc file, chạy lệnh, build/test hoặc cập nhật repository, nói rõ giới hạn; không báo như đã thực hiện.
- Không buộc mọi câu trả lời phải có bảng chứng cứ. Với câu hỏi nhỏ, có thể trả lời ngắn và chỉ nêu căn cứ khi cần.

## 5. Đánh giá kết quả theo mức

- **Quick:** không cần rubric đầy đủ; vẫn phải đáp ứng yêu cầu và minh bạch với giới hạn có ý nghĩa.
- **Standard:** đối chiếu các điều kiện thành công chính; xác minh những khẳng định quan trọng; lưu hồ sơ nếu công việc cần được tiếp tục hoặc tái kiểm tra.
- **Rigorous:** chấm từng tiêu chí bắt buộc, ghi các bằng chứng quan trọng, kiểm tra giới hạn và những chiều đánh giá có liên quan. Không phải mọi chiều rubric đều áp dụng.
- Dùng bộ chấm xác định khi có thể; dùng phán đoán của người khi cần ngữ cảnh; dùng LLM-as-judge thận trọng và không xem nó là ground truth.
- Nếu kết quả bị đánh trượt nhưng lý do không rõ, xem lại rubric, dữ liệu và môi trường trước khi đổ lỗi cho AI.

## 6. Quyết định những phần nào cần lưu

- Lưu Task Run khi nhiệm vụ nhiều bước, cần nguồn/tái kiểm tra, có đầu ra cần quản lý hoặc dự kiến tiếp tục qua nhiều phiên/AI.
- Không bắt buộc lưu Task Run cho mọi câu hỏi nhỏ.
- Dùng mini template cho Standard khi cần ghi ngắn; dùng full template cho Rigorous hoặc nhiệm vụ dài hạn.
- Với một Task Run, chỉ điền các mục áp dụng. Ghi `N/A` khi cần làm rõ rằng mục đã được xem xét nhưng không phù hợp; không cần điền mọi bảng dòng nếu không có sự kiện tương ứng.
- Chỉ cập nhật Failure/Change Log khi có lỗi đáng lưu giữ, thay đổi cần thử nghiệm hoặc bài học có thể tái sử dụng.

## 7. Quyền và trách nhiệm

Người dùng giữ quyền quyết định cuối cùng. AI hỗ trợ trong phạm vi khả năng và quyền được cấp. Mức thủ tục có thể linh hoạt, nhưng không được nới lỏng tính trung thực về nguồn/hành động, tiêu chí bắt buộc, quyền hạn hoặc yêu cầu an toàn.

## 8. Continuation / Handoff

1. Khi tiếp tục cùng mục tiêu, giữ Task ID và dùng hồ sơ mới nhất làm nguồn trạng thái chính.
2. Đọc các file liên quan được chỉ ra trong mục G; không cần đọc toàn bộ repository nếu chỉ một phần có liên quan.
3. Phân biệt việc đã hoàn thành có bằng chứng, việc chỉ được báo cáo, giả định và việc còn mở.
4. Không làm lại việc đã xác nhận nếu không có mâu thuẫn, dữ liệu mới hoặc lý do rõ ràng.
5. Cập nhật checkpoint khi có kết quả/đổi trạng thái có ý nghĩa hoặc khi bàn giao; không cập nhật sau mỗi thao tác nhỏ.
6. Không âm thầm thay đổi mục tiêu/tiêu chí. Nếu thật sự cần, nêu lý do và xin quyết định khi liên quan đến lựa chọn của người dùng.
7. Nếu không sửa được file trực tiếp, xuất phần cập nhật cần thiết và nêu rằng file chưa được lưu đồng bộ.

## Phiên bản

- **Version:** 0.5
- **Trạng thái:** pilot; bổ sung lựa chọn mức thủ tục và template rút gọn.
- **Thay đổi sau v0.5 (chưa nâng version):** bổ sung quy tắc về **hình thức trả lời** — chỉ áp dụng, không báo cáo tuân thủ (mục 1 tiểu mục "Chỉ áp dụng, không báo cáo", mục 2 điều 9). Đây là thay đổi quy tắc vận hành, theo quy tắc versioning trong `CHANGELOG.md` thuộc mức **minor**; việc nâng lên `v0.6` **chưa được thực hiện** và đang chờ người dùng quyết định.
- **Cơ sở:** `research/SOURCES_AND_METHOD.md`. Các chế độ là điều chỉnh của dự án, chưa được chứng minh là phân loại tối ưu.
