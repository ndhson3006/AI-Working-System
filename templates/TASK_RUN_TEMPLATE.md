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

## G. Continuation / Handoff — Tiếp tục công việc

> Cập nhật mục này khi tạm dừng, kết thúc một phiên làm việc, đạt checkpoint có ý nghĩa hoặc chuẩn bị chuyển nhiệm vụ sang AI/người khác. Không cần cập nhật sau từng thao tác nhỏ. Khi tiếp tục cùng một mục tiêu, giữ nguyên Task ID và cập nhật hồ sơ hiện có.

### G1. Trạng thái hiện tại
- **Task status:** `[draft / not_started / in_progress / blocked / paused / completed]`
- **Last updated:** `[YYYY-MM-DD HH:MM + timezone]`
- **Last checkpoint:** `[tên checkpoint/ngắn gọn]`
- **Current objective:** `[nhắc lại mục tiêu ban đầu, không diễn giải rộng hơn]`
- **Completion criteria changed?** `[no / yes — mô tả thay đổi, lý do và nơi được người dùng chấp thuận]`

### G2. Đã hoàn thành và bằng chứng
| Item | Kết quả đã hoàn thành | Bằng chứng/đường dẫn | Mức xác minh |
|---|---|---|---|
| DONE-1 | `[điền]` | `[section, file, URL, test, log hoặc artifact]` | `[reported / observed / independently verified]` |

> Chỉ ghi là hoàn thành khi có đầu ra hoặc bằng chứng tương ứng. Tóm tắt trong hội thoại có thể giúp truy vết nhưng không thay thế artifact nếu cần tái kiểm tra.

### G3. Đang thực hiện
- **Current subtask:** `[việc đang dở hoặc “không có”]`
- **Current state:** `[điều đã làm đến đâu; kết quả gần nhất]`
- **Immediate blocker/dependency:** `[không có / mô tả chính xác]`

### G4. Việc còn mở
| Open ID | Việc cần làm | Vì sao còn mở | Điều kiện để đóng | Ưu tiên |
|---|---|---|---|---|
| OPEN-1 | `[điền]` | `[thiếu dữ liệu/bằng chứng/chưa thử]` | `[kết quả quan sát được]` | `[cao/vừa/thấp]` |

### G5. Quyết định và ràng buộc cần giữ
- **Decisions to preserve:** `[quyết định đã thống nhất và lý do; ghi nguồn/bằng chứng nếu có]`
- **Confirmed facts:** `[điều đã xác nhận, kèm vị trí bằng chứng]`
- **Assumptions to revalidate:** `[giả định chưa xác nhận; không được nâng thành sự thật khi tiếp tục]`
- **Do not repeat:** `[việc đã hoàn tất hoặc đã xác nhận không cần lặp lại, trừ khi có bằng chứng mới hoặc lý do rõ]`

### G6. Bước tiếp theo
- **Next action (một bước rõ ràng):** `[hành động cụ thể tiếp theo]`
- **Purpose:** `[câu hỏi/giả thuyết mà bước này giúp giải quyết]`
- **Expected observable result:** `[đầu ra hoặc bằng chứng cần thu được]`
- **Fallback if blocked:** `[phương án hợp lý tiếp theo; nếu chưa biết, ghi rõ]`

### G7. Tài liệu cần nạp để tiếp tục
| File/URL | Lý do cần đọc | Vai trò |
|---|---|---|
| `[đường dẫn tương đối hoặc URL]` | `[lý do]` | `[source of truth / supporting evidence / reference]` |

- **Source of truth:** `[Task Run/file nào là bản trạng thái mới nhất]`
- **Related Task/Case/Failure IDs:** `[IDs hoặc N/A]`

### G8. Lịch sử checkpoint
| Checkpoint | Ngày | Thay đổi trạng thái/kết quả | Bằng chứng hoặc artifact |
|---|---|---|---|
| CP-1 | `[YYYY-MM-DD]` | `[điền]` | `[điền]` |

### G9. Chỉ dẫn cho AI nhận bàn giao
Khi được yêu cầu tiếp tục nhiệm vụ này:
1. Đọc Task Run hiện tại, mục G mới nhất và các file được liệt kê ở G7 trước khi hành động.
2. Tiếp tục cùng Task ID nếu mục tiêu vẫn là mục tiêu này; không tạo Task Run mới chỉ vì đổi phiên trò chuyện hoặc đổi AI.
3. Tóm lược trạng thái dựa trên file: mục tiêu/tiêu chí; việc đã hoàn thành; việc còn mở; quyết định cần giữ; bước kế tiếp. Phân biệt điều đã xác minh với điều mới chỉ được báo cáo hoặc giả định.
4. Tiếp tục từ G6. Không làm lại việc đã hoàn tất nếu không có mâu thuẫn, bằng chứng mới hoặc lý do kiểm tra lại cụ thể.
5. Nếu phát hiện thông tin mâu thuẫn với Task Run, nêu rõ mâu thuẫn và kiểm tra trước khi thay đổi quyết định hoặc tiêu chí.
6. Sau một checkpoint có ý nghĩa, cập nhật cùng Task Run: nhật ký thực hiện, bằng chứng, trạng thái và mục G. Nếu không có quyền ghi file, xuất nội dung cập nhật đầy đủ để người dùng lưu.
7. Tạo Task ID mới chỉ khi người dùng bắt đầu một mục tiêu thực sự khác; liên kết nhiệm vụ mới với nhiệm vụ hiện tại nếu có quan hệ.
8. Không tuyên bố rằng file đã được cập nhật hoặc commit lên repository nếu thao tác đó chưa thực sự được thực hiện và xác minh.

---

## Chỉ dẫn có thể gửi kèm cho AI

> Hãy thực hiện yêu cầu nguyên gốc theo đặc tả và tiêu chí ở phần A. Đừng tự thay đổi phạm vi hoặc tiêu chí. Chọn cách làm phù hợp, không mặc định mọi nhiệm vụ đều cần tìm kiếm sâu hay một quy trình cố định. Khi cần nguồn hoặc bằng chứng, chủ động tìm trong phạm vi công cụ được phép; nếu nguồn đầu tiên chưa đủ, cân nhắc các phương án hợp lý khác và ghi lại giới hạn trước khi kết luận bị chặn. Phân biệt dữ kiện đã kiểm tra, suy luận và điều chưa xác minh. Không tuyên bố đã thực hiện hành động nếu không thực sự làm hoặc không có bằng chứng có thể quan sát. Hoàn thành đầu ra trước, sau đó đối chiếu với từng tiêu chí; nêu phần đạt, chưa đạt và chưa thể đánh giá. Nếu thiếu điều kiện thiết yếu, giải thích chính xác thiếu gì và tiếp tục những phần có thể làm được. Không bắt buộc ghi lại chuỗi suy nghĩ nội bộ; thay vào đó hãy cung cấp căn cứ, kết quả kiểm tra, nguồn và lý do kết luận có thể xem xét được.
>
> **Nếu đây là việc tiếp tục:** trước tiên đọc Task Run hiện có và mục G. Giữ nguyên Task ID, mục tiêu, tiêu chí và quyết định đã thống nhất; tiếp tục từ bước tiếp theo trong G6 thay vì bắt đầu lại. Cập nhật cùng file sau checkpoint có ý nghĩa. Chỉ tạo Task Run mới khi người dùng giao một mục tiêu thực sự khác. Nếu không thể ghi file trực tiếp, trả lại toàn bộ phần cập nhật để người dùng lưu.
