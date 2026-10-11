# Task Run — [TASK-ID] — [Tên nhiệm vụ]

> Dùng một bản sao cho mỗi nhiệm vụ. Điền phần A trước khi AI bắt đầu. Các phần ghi nhận kết quả phải phản ánh việc đã quan sát hoặc xác minh; không điền giả định như sự thật.

## A. Task Specification — Đặc tả nhiệm vụ

### A1. Metadata
- **Task ID:** `[duy nhất]`
- **Tên nhiệm vụ:** `[ngắn gọn]`
- **Loại:** `[nghiên cứu / học tập / lập trình / debugging / phân tích / viết / so sánh AI / khác]`
- **Ngày:** `[YYYY-MM-DD]`
- **Người đánh giá:** `[tên/initials hoặc N/A]`
- **AI/model/phiên bản:** `[điền sau hoặc trước khi chạy nếu biết]`
- **Công cụ khả dụng:** `[web / file access / shell / code / không có / khác]`
- **Mức rủi ro:** `[thấp / vừa / cao]` — **cơ sở:** `[hậu quả nếu sai]`

### A2. Yêu cầu nguyên gốc
> Dán đúng yêu cầu gốc. Không sửa nội dung tại đây.

`[YÊU CẦU NGUYÊN GỐC]`

### A3. Diễn giải vận hành
- **Mục tiêu:** `[đầu ra hoặc trạng thái cần đạt]`
- **Phạm vi gồm:** `[điểm bao gồm]`
- **Ngoài phạm vi:** `[điểm không cần làm]`
- **Nguồn/phiên bản ưu tiên:** `[nguồn gốc, phiên bản, khoảng thời gian, repository...]`
- **Ràng buộc:** `[ngôn ngữ, định dạng, quyền được phép, môi trường, ngân sách thời gian/công cụ nếu thực sự cần]`
- **Giả định tạm thời:** `[nếu có; cách xác minh]`

### A4. Tiêu chí thành công
| ID | Tiêu chí quan sát/kiểm tra được | Bắt buộc? | Bằng chứng chấp nhận | Trạng thái sau đánh giá |
|---|---|---|---|---|
| C1 | `[điều kiện cụ thể]` | `[có/không]` | `[nguồn, test, artifact, kết quả]` | `[chưa đánh giá]` |
| C2 | `[điều kiện cụ thể]` | `[có/không]` | `[nguồn, test, artifact, kết quả]` | `[chưa đánh giá]` |
| C3 | `[điều kiện cụ thể]` | `[có/không]` | `[nguồn, test, artifact, kết quả]` | `[chưa đánh giá]` |

- **Điều kiện thất bại nghiêm trọng:** `[nội dung sai nào khiến không thể coi là hoàn thành]`
- **Điều kiện chưa thể đánh giá:** `[bằng chứng/điều kiện nào thiếu]`
- **Cần hỏi lại người dùng không?** `[không / có; thông tin tối thiểu còn thiếu]`

## B. Execution Record — Nhật ký thực hiện

### B1. Cách tiếp cận
- **Phương pháp chọn:** `[trả lời trực tiếp / nghiên cứu nguồn / nhiều bước / kiểm thử / debugging theo giả thuyết / khác]`
- **Vì sao phù hợp:** `[lý do]`
- **Điều kiện ban đầu được xác nhận:** `[phiên bản, dữ liệu, trạng thái]`

### B2. Nhật ký hành động có thể quan sát
| # | Hành động đã thực sự diễn ra | Công cụ/nguồn/đầu vào | Kết quả quan sát được | Bằng chứng ghi lại | Trạng thái |
|---|---|---|---|---|---|
| 1 | `[điền]` | `[điền]` | `[điền]` | `[link, trích dẫn, log, artifact hoặc N/A]` | `[quan sát / xác minh / bị chặn]` |
| 2 | `[điền]` | `[điền]` | `[điền]` | `[điền]` | `[trạng thái]` |
| 3 | `[điền]` | `[điền]` | `[điền]` | `[điền]` | `[trạng thái]` |

**Lưu ý:** đây không phải nhật ký nội bộ đầy đủ của mô hình. Chỉ ghi các sự kiện hiển thị hoặc có thể kiểm tra được. Lời tự thuật của AI phải được xem là báo cáo, không tự động là bằng chứng độc lập.

### B3. Điểm rẽ quyết định
- **Kết quả trung gian quan trọng:** `[điền]`
- **Có thay đổi kế hoạch không?** `[không/có; tại sao]`
- **Nếu bị chặn, đã thử gì?** `[phương án, kết quả, bước chưa thử và lý do]`

## C. Evidence Record — Bằng chứng

| Evidence ID | Tiêu chí/kết luận được hỗ trợ | Nguồn hoặc artifact | Đã kiểm tra trực tiếp? | Hạn chế/độ mới | Loại |
|---|---|---|---|---|---|
| E1 | `[điền]` | `[URL hoặc tên file + vị trí, lệnh/log/test]` | `[có/không]` | `[điền]` | `[nguồn gốc / thực nghiệm / quan sát / báo cáo AI / suy luận]` |
| E2 | `[điền]` | `[điền]` | `[có/không]` | `[điền]` | `[loại]` |

### C1. Phân loại khẳng định cuối cùng
- **Đã xác minh:** `[chỉ những kết luận có bằng chứng hỗ trợ trực tiếp/kiểm tra được]`
- **Suy luận:** `[kết luận suy ra và các dữ kiện hỗ trợ]`
- **Chưa xác minh:** `[nội dung còn thiếu bằng chứng]`
- **Mâu thuẫn nguồn/kết quả:** `[nếu có]`

## D. Evaluation — Đánh giá kết quả

Dùng `evaluation/EVALUATION_RUBRIC.md`. Chấm từng chiều; không tạo tổng điểm nếu chưa có trọng số có cơ sở.

| Chiều | Trạng thái | Bằng chứng và lý do | Người đánh giá / phương pháp |
|---|---|---|---|
| Đúng mục tiêu | `[đạt / một phần / không đạt / chưa thể đánh giá / không áp dụng]` | `[điền]` | `[người / test / LLM hỗ trợ]` |
| Đầy đủ | `[trạng thái]` | `[điền]` | `[phương pháp]` |
| Chất lượng nguồn và groundedness | `[trạng thái]` | `[điền]` | `[phương pháp]` |
| Tuân thủ yêu cầu/phạm vi | `[trạng thái]` | `[điền]` | `[phương pháp]` |
| Minh bạch hành động/giới hạn | `[trạng thái]` | `[điền]` | `[phương pháp]` |
| Hiệu quả (nếu đo) | `[trạng thái hoặc N/A]` | `[thời gian, lượt, chi phí hoặc ghi chú]` | `[phương pháp]` |

### D1. Trạng thái toàn nhiệm vụ
- [ ] **Hoàn thành:** mọi tiêu chí bắt buộc đạt.
- [ ] **Hoàn thành một phần:** có đầu ra hữu ích nhưng ít nhất một tiêu chí bắt buộc chưa đạt.
- [ ] **Chưa hoàn thành:** mục tiêu chính không đạt hoặc có lỗi nghiêm trọng.
- [ ] **Chưa thể đánh giá:** thiếu bằng chứng/điều kiện để đưa ra phán quyết công bằng.

**Lý do và bằng chứng quyết định:** `[điền]`

## E. Failure Analysis — Phân tích thất bại (nếu có)

- **Quan sát cụ thể:** `[hành vi/kết quả thực tế, tránh nhãn chung chung]`
- **Nhóm lỗi:** `[đọc FAILURE_CHANGE_LOG.md để chọn loại]`
- **Nguyên nhân:** `[đã xác nhận / giả thuyết / chưa biết]`
- **Bằng chứng ủng hộ:** `[điền]`
- **Giải thích thay thế cần loại trừ:** `[đề bài, rubric, công cụ, dữ liệu, môi trường...]`
- **Thay đổi đề xuất:** `[hoặc “chưa đề xuất, cần thêm bằng chứng”]`
- **Case kiểm thử mục tiêu:** `[ID]`
- **Case hồi quy cần chạy:** `[ID]`

## F. Final Review — Trước khi kết thúc

- [ ] Mọi tiêu chí thành công đều được đánh giá.
- [ ] Kết luận quan trọng gắn với nguồn hoặc bằng chứng phù hợp.
- [ ] Phân biệt hành động được đề xuất với hành động đã quan sát/kiểm chứng.
- [ ] Không tuyên bố đã mở nguồn, chạy lệnh, build hay test nếu chưa làm hoặc chưa xác minh được.
- [ ] Giới hạn truy cập, giả định và phần chưa hoàn thành được nêu rõ.
- [ ] Đã cân nhắc khả năng đề bài, bộ chấm hoặc môi trường gây lỗi.
- [ ] Nếu thay đổi phương pháp, đã ghi vào Failure/Change Log và nêu case cần kiểm thử lại.

### Tóm tắt cuối
- **Kết quả:** `[điền]`
- **Trạng thái:** `[hoàn thành / một phần / chưa hoàn thành / chưa thể đánh giá]`
- **Bằng chứng quyết định:** `[điền]`
- **Giới hạn còn lại:** `[điền]`
- **Bước tiếp theo:** `[điền hoặc N/A]`

---

## Chỉ dẫn có thể gửi kèm cho AI

> Hãy thực hiện yêu cầu nguyên gốc theo đặc tả và tiêu chí ở phần A. Đừng tự thay đổi phạm vi hoặc tiêu chí. Chọn cách làm phù hợp, không mặc định mọi nhiệm vụ đều cần tìm kiếm sâu hay một quy trình cố định. Khi cần nguồn hoặc bằng chứng, chủ động tìm trong phạm vi công cụ được phép; nếu nguồn đầu tiên chưa đủ, cân nhắc các phương án hợp lý khác và ghi lại giới hạn trước khi kết luận bị chặn. Phân biệt dữ kiện đã kiểm tra, suy luận và điều chưa xác minh. Không tuyên bố đã thực hiện hành động nếu không thực sự làm hoặc không có bằng chứng có thể quan sát. Hoàn thành đầu ra trước, sau đó đối chiếu với từng tiêu chí; nêu phần đạt, chưa đạt và chưa thể đánh giá. Nếu thiếu điều kiện thiết yếu, giải thích chính xác thiếu gì và tiếp tục những phần có thể làm được. Không bắt buộc ghi lại chuỗi suy nghĩ nội bộ; thay vào đó hãy cung cấp căn cứ, kết quả kiểm tra, nguồn và lý do kết luận có thể xem xét được.
