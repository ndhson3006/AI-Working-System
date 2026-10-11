# Failure and Change Log — v0.3

## Mục tiêu

Ghi lỗi thực tế và thử nghiệm thay đổi có thể truy nguyên. Một lỗi được ghi nhận chưa đồng nghĩa nguyên nhân đã biết. Phân biệt rõ **quan sát**, **giả thuyết nguyên nhân**, **thay đổi đã thử** và **kết quả sau thử nghiệm**.

## 1. Phân loại ban đầu

Chọn một hoặc nhiều loại phù hợp:

- `REQ` — yêu cầu bị hiểu sai hoặc bị đổi phạm vi;
- `SEARCH` — tìm kiếm thiếu, tìm kiếm không cần thiết hoặc dừng sớm;
- `SOURCE` — sai nguồn, nguồn lỗi thời/không đủ thẩm quyền, nhầm phiên bản;
- `GROUND` — kết luận không được bằng chứng hỗ trợ;
- `COVERAGE` — bỏ sót tiêu chí/dữ kiện bắt buộc;
- `ACTION` — báo cáo hành động không được xác nhận;
- `REASON` — suy luận không hợp lệ hoặc giả thuyết bị coi như dữ kiện;
- `RUBRIC` — tiêu chí chấm mơ hồ, quá cứng hoặc không phản ánh mục tiêu;
- `ENV` — công cụ, quyền truy cập, dữ liệu hoặc môi trường gây hạn chế;
- `REGRESSION` — sửa một hành vi làm hỏng hành vi đã đạt;
- `EFF` — sử dụng công sức/thời gian không tương xứng;
- `OTHER` — loại khác, mô tả cụ thể.

Các nhãn này là taxonomy vận hành được đề xuất cho dự án, không phải phân loại chuẩn nguyên văn của một nguồn.

## 2. Quy trình sau một thất bại

1. **Ghi hiện tượng trước khi giải thích:** lưu yêu cầu, đầu ra và bằng chứng.
2. **Xác định mức ảnh hưởng:** nhiệm vụ không đạt, chất lượng giảm hay chỉ là vấn đề trình bày.
3. **Kiểm tra các lời giải thích cạnh tranh:** AI, prompt, nguồn, rubric, công cụ, trạng thái môi trường.
4. **Đặt giả thuyết có thể kiểm thử:** thay đổi nào được dự đoán sẽ giảm lỗi, và kết quả nào có thể bác bỏ giả thuyết.
5. **Chọn case mục tiêu và case hồi quy:** thêm/sửa case trong `../evaluation/EVALUATION_CASE_SET.md`.
6. **Thử thay đổi:** cố định càng nhiều điều kiện càng tốt; lưu kết quả trước–sau.
7. **Quyết định:** giữ, sửa, hoàn tác hoặc chưa đủ bằng chứng. Không coi một lần thành công là chứng minh tổng quát.

## 3. Sổ theo dõi

| Failure ID | Ngày | Task/Case ID | Hiện tượng quan sát | Loại | Ảnh hưởng | Trạng thái nguyên nhân | Giả thuyết/thay đổi | Case mục tiêu + hồi quy | Kết quả trước–sau | Quyết định/trạng thái |
|---|---|---|---|---|---|---|---|---|---|---|
| `F-001` | `[YYYY-MM-DD]` | `[id]` | `[mô tả cụ thể]` | `[tag]` | `[thấp/vừa/cao + lý do]` | `[đã xác nhận/giả thuyết/chưa biết]` | `[điền]` | `[IDs]` | `[bằng chứng]` | `[open/testing/kept/reverted/closed]` |

## 4. Mẫu chi tiết khi cần

### [Failure ID] — [Tiêu đề]

- **Task/Case liên quan:**
- **Yêu cầu gốc:**
- **Đầu ra/hành động thực tế:**
- **Bằng chứng cho thấy có lỗi:**
- **Tác động:**
- **Loại lỗi:**
- **Nguyên nhân đã xác nhận:**
- **Giả thuyết chưa xác nhận:**
- **Các giải thích thay thế:**
- **Thay đổi dự kiến và cơ sở:**
- **Case mục tiêu:**
- **Case hồi quy:**
- **Kết quả thử nghiệm trước/sau:**
- **Quyết định:** `[giữ / điều chỉnh / hoàn tác / cần thêm dữ liệu]`
- **Bài học có thể tái sử dụng:**
- **Ngày đóng / điều kiện đóng:**

## 5. Khi nào đóng lỗi?

Chỉ đóng khi:
- mô tả và bằng chứng đã lưu;
- lý do đóng được ghi;
- nếu đã thay đổi phương pháp, đã chạy case mục tiêu và các case hồi quy phù hợp, hoặc ghi rõ vì sao chưa thể chạy;
- không còn nhầm giả thuyết với nguyên nhân đã xác nhận.

Nếu lỗi không tái hiện được, chuyển sang `unreproduced` hoặc `insufficient evidence`; không tự coi là đã sửa.
