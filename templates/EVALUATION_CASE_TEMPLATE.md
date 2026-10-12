# Evaluation Case — [CASE-ID]

> Dùng để tạo một bài kiểm thử có thể chạy lại. Mỗi case phải kiểm tra một hành vi/năng lực cụ thể, có điều kiện thành công rõ và không phụ thuộc vào một câu trả lời mẫu duy nhất khi nhiều lời giải hợp lệ tồn tại.

## 1. Định danh
- **Case ID:** `[ví dụ: RESEARCH-001]`
- **Tên:** `[ngắn gọn]`
- **Loại:** `[research / factual / coding / debugging / instruction-following / comparison / khác]`
- **Mục tiêu đo:** `[năng lực hoặc hành vi]`
- **Mode được thử (nếu liên quan):** `[Quick / Standard / Rigorous / adaptive / N/A]`
- **Biến đang thử:** `[chất lượng đầu ra / chọn mode / mức thủ tục / hồi quy / khác]`
- **Trạng thái:** `[draft / reviewed / active / retired]`
- **Nguồn yêu cầu / lỗi gốc:** `[Task ID / Failure ID / nguồn khác]`
- **Ngày tạo/cập nhật:** `[YYYY-MM-DD]`

## 2. Đầu vào cố định
- **Prompt/yêu cầu:** `[toàn bộ đầu vào cần giữ nguyên]`
- **Tài liệu/dữ liệu được cấp:** `[tên, phiên bản, hash hoặc vị trí nếu cần]`
- **Công cụ được phép:** `[web / code / shell / file / không có / khác]`
- **Môi trường:** `[điều kiện ảnh hưởng đến kết quả]`

## 3. Kết quả tham chiếu và tiêu chí
- **Ground truth / reference:** `[đáp án tham chiếu hoặc nơi kiểm tra kết quả; nếu không có đáp án duy nhất, mô tả tập điều kiện chấp nhận]`
- **Tiêu chí bắt buộc:**
  - [ ] `[C1]`
  - [ ] `[C2]`
- **Tiêu chí chất lượng bổ sung:** `[nếu có]`
- **Được phép trả lời “chưa biết/chưa xác minh” khi:** `[điều kiện]`
- **Các hành vi không mong muốn:** `[ví dụ: bịa nguồn, tự đổi yêu cầu, tìm kiếm không cần thiết]`

## 4. Phương pháp chấm
- **Grader:** `[kiểm tra xác định / người đánh giá / LLM hỗ trợ / kết hợp]`
- **Hướng dẫn chấm:** `[bước có thể lặp lại]`
- **Bằng chứng phải lưu:** `[nguồn, test, trạng thái, transcript quan sát được...]`
- **Trường hợp rubric không đủ rõ:** `[dừng và xem lại case/rubric, không chấm tùy tiện]`

## 5. Kết quả lần chạy
| Run ID | AI/model/phiên bản | Điều kiện/tool | Trạng thái | Bằng chứng | Người chấm | Ghi chú |
|---|---|---|---|---|---|---|
| `[id]` | `[model]` | `[điều kiện]` | `[đạt/một phần/không đạt/chưa đánh giá]` | `[link/artifact]` | `[người/phương pháp]` | `[nếu có]` |

## 6. Kiểm định chất lượng case
- [ ] Yêu cầu không mơ hồ về điều kiện chấp nhận.
- [ ] Nhiệm vụ có thể thực hiện với đầu vào và công cụ đã cho.
- [ ] Có lời giải tham chiếu hoặc phương thức đánh giá kết quả hợp lệ.
- [ ] Bài kiểm thử không thưởng cho việc bịa, lách luật hoặc tuân theo thứ tự thao tác không cần thiết.
- [ ] Có trường hợp đối chứng khi cần để tránh thiên lệch một phía.
- [ ] Người khác có thể hiểu và áp dụng cùng cách chấm.

## 7. Lịch sử
- `[ngày] — [thay đổi và lý do]`


## 8. Kiểm tra tính tương xứng (nếu case đo workflow)
- **Có bước nào không cần thiết không?** `[dấu hiệu quan sát được / không]`
- **Có bước thiết yếu nào bị bỏ không?** `[dấu hiệu / không]`
- **Case đối chứng cho mức khác:** `[ID / N/A]`
