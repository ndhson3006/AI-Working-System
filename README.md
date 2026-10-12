# AI Working System — v0.5

> **Trạng thái:** bản pilot có quy trình linh hoạt; chưa được xác nhận bằng thử nghiệm đủ rộng.
>
> **Mục tiêu:** làm việc với nhiều AI theo cách đúng mục tiêu, có thể kiểm chứng và tiếp tục qua nhiều phiên — mà không biến mọi câu hỏi thành một thủ tục dài.

## 1. Bắt đầu nhanh

**Bạn không cần mở tất cả file cho mỗi nhiệm vụ.** Trước hết chỉ cần chọn đúng mức quy trình:

| Chế độ | Dùng khi | Hồ sơ nên dùng |
|---|---|---|
| **Quick** | Câu hỏi đơn giản, ít rủi ro, có câu trả lời trực tiếp và không cần lưu trạng thái | Thông thường không tạo Task Run |
| **Standard** | Nhiệm vụ có vài điều kiện, cần nghiên cứu/viết/phân tích hoặc muốn giữ lại kết quả | `templates/TASK_RUN_MINI_TEMPLATE.md` |
| **Rigorous** | Cần nguồn chính xác, kiểm thử thực tế, độ truy xuất cao, so sánh AI, xử lý rủi ro đáng kể hoặc tiếp tục qua nhiều phiên | `templates/TASK_RUN_TEMPLATE.md` |

Ví dụ đã chạy: `tasks/SYS-002_doc_consistency_check.md` (Standard, mini template); `examples/PILOT-01_book_six_principles.md` (Rigorous, hiện `blocked` ở quyền truy cập nguồn).

Nếu bạn không chọn chế độ, AI nên chọn **mức đơn giản nhất vẫn đáp ứng yêu cầu và rủi ro**. Nó có thể tăng hoặc giảm mức quy trình khi phát hiện tình huống mới. Các chế độ chỉ khác nhau về mức thủ tục, **không phải mức độ được phép sai**.

1. Đọc [`WORKING_AGREEMENT.md`](WORKING_AGREEMENT.md) một lần và đưa vào hướng dẫn tùy chỉnh của AI nếu có hỗ trợ. Nếu công cụ giới hạn ký tự, dùng [`templates/PORTABLE_SNIPPET.md`](templates/PORTABLE_SNIPPET.md) — có bản ~2.8 KB và bản tối thiểu ~1.2 KB.
2. Với Quick, giao việc bình thường. Không cần tạo file trừ khi bạn muốn lưu lại.
3. Với Standard, sao chép mini template, điền hoặc yêu cầu AI tự điền các trường phù hợp rồi thực hiện nhiệm vụ.
4. Với Rigorous, dùng full template. Chỉ điền các phần phù hợp; bỏ qua mục không liên quan với ghi chú ngắn như `N/A` nếu cần.
5. Khi tạm dừng công việc đang làm, tiếp tục trên Task Run hiện có và cập nhật mục G, không tạo nhiệm vụ mới chỉ vì đổi phiên hoặc AI.
6. Chỉ khi có lỗi lặp lại hoặc muốn cải tiến hệ thống, mới cần đến rubric đầy đủ, case set và Failure/Change Log.

## 2. Cấu trúc thư mục

```text
AI-Working-System/          # repository là nguồn sự thật duy nhất
├── README.md
├── AI_WORKING_SYSTEM_PROJECT_HANDOFF.md  # bối cảnh/tiến độ để AI khác tiếp quản
├── WORKING_AGREEMENT.md
├── CHANGELOG.md
├── MIGRATION_v0.3_to_v0.4.md       # hướng dẫn lịch sử
├── MIGRATION_v0.4_to_v0.5.md       # nâng cấp sang chế độ linh hoạt
├── FILE_INVENTORY.md
├── MANIFEST.json
├── templates/
│   ├── PORTABLE_SNIPPET.md         # bản rút gọn để dán vào AI bất kỳ
│   ├── TASK_RUN_MINI_TEMPLATE.md   # Standard
│   ├── TASK_RUN_TEMPLATE.md        # Rigorous / nhiệm vụ dài hạn
│   └── EVALUATION_CASE_TEMPLATE.md
├── evaluation/
│   ├── EVALUATION_RUBRIC.md
│   └── EVALUATION_CASE_SET.md
├── comparison/
│   └── MODEL_COMPARISON_PROTOCOL.md
├── improvement/
│   └── FAILURE_CHANGE_LOG.md
├── research/
│   └── SOURCES_AND_METHOD.md
├── scripts/
│   └── verify_package.sh            # kiểm tra inventory/hash, liên kết, manifest, đối chiếu hai bản
├── examples/
│   └── PILOT-01_book_six_principles.md
└── tasks/
    ├── SYS-001_ai-working-system-development.md   # hồ sơ trạng thái chính
    └── SYS-002_doc_consistency_check.md           # ví dụ Standard (mini template)
```

Sau khi sửa bất kỳ file nào, chạy `bash scripts/verify_package.sh` để phát hiện sớm lệch kích thước/hash trong `FILE_INVENTORY.md`, liên kết hỏng và chênh lệch với `MANIFEST.json`. Script chỉ đọc, không sửa file.

Khi có nhiều bản của cùng bộ tài liệu (ví dụ một bản sao cũ hoặc bản nháp khác), truyền thêm thư mục thứ hai để kiểm tra chéo:

```bash
bash scripts/verify_package.sh . /duong-dan/ban-doi-chieu
```

Chế độ này báo cáo file lệch kích thước giữa hai bản và file chỉ có ở một bên — loại lệch mà kiểm tra nội bộ một thư mục không thấy. Lưu ý: **kiểm tra nội bộ sạch không có nghĩa là hai bản khớp nhau**; phải chạy chế độ đối chiếu mới biết.

## 3. Quy tắc chọn và thay đổi chế độ

- Bắt đầu với mức thủ tục nhỏ nhất phù hợp.
- **Escalate** từ Quick lên Standard/Rigorous nếu có mâu thuẫn, nguồn chuyên biệt, yêu cầu chưa rõ có ảnh hưởng lớn, kiểm thử thực tế, rủi ro đáng kể hoặc yêu cầu lưu/handoff.
- **Simplify** khi các phần thủ tục không giúp nâng độ chính xác, khả năng kiểm tra hay yêu cầu lưu vết; không lược bỏ điều kiện bắt buộc do người dùng đặt ra.
- AI có thể thông báo ngắn lý do chọn mức, nhưng không cần trình bày quy trình phân loại trong mọi câu trả lời đơn giản.
- Nếu người dùng chỉ định mức cụ thể, tuân theo mức đó trừ khi có xung đột với khả năng, an toàn hoặc yêu cầu bắt buộc; khi không thể làm theo, giải thích ngắn gọn.
- Task Run không phải điều kiện bắt buộc để trả lời mọi câu hỏi. Các hồ sơ dùng cho công việc cần lưu trạng thái hoặc có tiêu chí cần kiểm chứng.

## 4. Nguyên tắc bất biến

- Giữ nguyên mục tiêu và yêu cầu gốc; không âm thầm thay bài toán bằng câu hỏi gần giống.
- Không bịa nguồn, hành động, kết quả build/test hoặc trạng thái file.
- Phân biệt điều đã quan sát/xác minh với báo cáo của AI, suy luận và giả định.
- Đánh giá theo tiêu chí thành công; chấp nhận các cách giải hợp lệ khác nhau nếu người dùng không yêu cầu một quy trình cụ thể.
- Không tạo điểm tổng hoặc khẳng định độ tin cậy nếu chưa có phương pháp phù hợp.
- Khi thiếu bằng chứng, ghi rõ chưa thể xác minh thay vì ép thành đạt/trượt.
- Giữ quyết định và trạng thái cần thiết khi tiếp tục công việc.

## 5. Bộ hồ sơ dùng khi thật sự cần

| Tài liệu | Dùng khi nào |
|---|---|
| `templates/PORTABLE_SNIPPET.md` | Cần dán quy tắc vào AI khác mà không nạp được cả Working Agreement |
| `evaluation/EVALUATION_RUBRIC.md` | Cần đánh giá có cấu trúc hoặc thử nghiệm cải tiến; không cần cho mọi câu hỏi Quick |
| `evaluation/EVALUATION_CASE_SET.md` | Muốn thử một hành vi/lỗi cụ thể hoặc kiểm tra hồi quy |
| `comparison/MODEL_COMPARISON_PROTOCOL.md` | So sánh nhiều AI hoặc cấu hình một cách công bằng |
| `improvement/FAILURE_CHANGE_LOG.md` | Có lỗi đáng lưu giữ hoặc đang thử thay đổi quy trình |
| `research/SOURCES_AND_METHOD.md` | Cần biết cơ sở phương pháp, nguồn tham chiếu và giới hạn |
| `scripts/verify_package.sh` | Sau khi sửa file, để kiểm tra tính nhất quán của bộ tài liệu; truyền thêm thư mục thứ hai để đối chiếu repo-vs-gói |

## 6. Vòng lặp cải tiến

```text
Nhiệm vụ thật → kết quả + bằng chứng → phát hiện vấn đề (nếu có)
                                      ↓
                           ghi lỗi/giả thuyết thay đổi
                                      ↓
                     thử case mục tiêu + case hồi quy phù hợp
                                      ↓
                       giữ / sửa / hoàn tác / chưa đủ dữ liệu
```

Không cần khởi động vòng lặp cải tiến nếu nhiệm vụ đã hoàn thành tốt và không có vấn đề có ý nghĩa.

## 7. Giới hạn

- v0.5 là cách tổng hợp/điều chỉnh cho cá nhân, không phải framework được một tổ chức bên ngoài chứng nhận.
- Bộ case vẫn ở trạng thái `draft` cho đến khi có đầu vào cụ thể, ground truth và phương pháp xác minh.
- Hệ thống không tự nhìn thấy hoạt động nội bộ của AI hoặc hành động/công cụ không được giao diện cung cấp.
- Các chế độ Quick/Standard/Rigorous là điều chỉnh do dự án đề xuất để kiểm soát mức thủ tục; chưa được xác nhận thực nghiệm là cách phân nhóm tối ưu.
- Không tuyên bố v0.5 tốt hơn v0.4 cho đến khi thử nghiệm cho thấy chất lượng không giảm và mức công sức phù hợp hơn.

## 8. Continuation / Handoff

Với công việc kéo dài, dùng mục G trong full template. `tasks/SYS-001_ai-working-system-development.md` là hồ sơ trạng thái vận hành chính của dự án; `AI_WORKING_SYSTEM_PROJECT_HANDOFF.md` là bản tổng hợp bối cảnh, lịch sử quyết định, giới hạn và chỉ dẫn tiếp quản. Khi tiếp tục, đọc cả hai tài liệu (sau đó đọc các file được tham chiếu), giữ Task ID và tiếp tục từ `Next action`. Nếu nội dung khác nhau, ưu tiên Task Run mới nhất cho trạng thái cụ thể và kiểm tra `CHANGELOG.md`/file nguồn cho quy tắc hiện hành.

Cơ chế này đã được chạy thử một lần (`CONT-001`, kết quả ở `evaluation/EVALUATION_CASE_SET.md`): một tác nhân ở ngữ cảnh mới chỉ nhận đường dẫn Task Run đã khôi phục đúng mục tiêu, trạng thái và next action. **Giới hạn:** lần chạy dùng cùng mô hình, nên chưa chứng minh được handoff qua nhà cung cấp/mô hình khác. Bài học từ lần chạy đó: hồ sơ có thể chứa chỉ dẫn **lỗi thời** ngay cả khi đã điền đủ trường — trước khi thực hiện next action, hãy đối chiếu nó với bảng việc đã xong và việc còn mở (`F-003`).

## 9. Nguồn và thay đổi

- [`research/SOURCES_AND_METHOD.md`](research/SOURCES_AND_METHOD.md) — cơ sở và giới hạn của phương pháp.
- [`CHANGELOG.md`](CHANGELOG.md) — lịch sử thay đổi.
- [`MIGRATION_v0.4_to_v0.5.md`](MIGRATION_v0.4_to_v0.5.md) — cách nâng cấp mà không ghi đè bản v0.4.
