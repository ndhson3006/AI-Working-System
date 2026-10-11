# AI Working System — v0.4

> **Trạng thái:** bộ tài liệu thực hành thử nghiệm (pilot), tổng hợp từ các phương pháp đã công bố. Đây không phải tiêu chuẩn chính thức và chưa được xác nhận là tối ưu.
>
> **Mục tiêu:** giúp một người dùng làm việc với nhiều AI theo cách có thể kiểm tra: xác định nhiệm vụ, thực hiện phù hợp, ghi nhận bằng chứng, đánh giá kết quả, học từ lỗi và kiểm tra tác động của thay đổi.

## 1. Bắt đầu nhanh

1. Đọc [`WORKING_AGREEMENT.md`](WORKING_AGREEMENT.md) một lần.
2. Với một nhiệm vụ mới, sao chép [`templates/TASK_RUN_TEMPLATE.md`](templates/TASK_RUN_TEMPLATE.md), đổi tên thành `YYYY-MM-DD-short-task-name.md` và điền phần A.
3. Gửi đặc tả và phần **Chỉ dẫn dành cho AI** trong template cho AI bạn chọn. Không nhất thiết phải yêu cầu AI điền mọi trường trong nhật ký; ghi nhận những gì có thể quan sát được.
4. Khi hoàn thành, dùng [`evaluation/EVALUATION_RUBRIC.md`](evaluation/EVALUATION_RUBRIC.md) để đánh giá kết quả. Phân biệt tự đánh giá của AI với kiểm tra độc lập của bạn.
5. Nếu phát hiện lỗi đáng lưu giữ, thêm một bản ghi vào [`improvement/FAILURE_CHANGE_LOG.md`](improvement/FAILURE_CHANGE_LOG.md) và cân nhắc thêm một case vào [`evaluation/EVALUATION_CASE_SET.md`](evaluation/EVALUATION_CASE_SET.md).
6. Khi so sánh các AI, tuân thủ [`comparison/MODEL_COMPARISON_PROTOCOL.md`](comparison/MODEL_COMPARISON_PROTOCOL.md).
7. **Tiếp tục công việc đang làm:** mở Task Run hiện có, đọc mục G `Continuation / Handoff` và các file được liệt kê; giữ nguyên Task ID và tiếp tục từ `Next action`. Không tạo Task Run mới chỉ vì chuyển sang cuộc hội thoại hoặc AI khác.
8. Sau checkpoint có ý nghĩa hoặc khi tạm dừng, cập nhật cùng Task Run. Chỉ tạo Task ID mới khi mục tiêu thực sự khác. Nếu AI không ghi được file, yêu cầu nó xuất nội dung cập nhật để lưu thủ công.

## 2. Cấu trúc thư mục

```text
AI_Working_System_v0.4/
├── README.md
├── WORKING_AGREEMENT.md
├── CHANGELOG.md
├── MIGRATION_v0.3_to_v0.4.md
├── FILE_INVENTORY.md
├── MANIFEST.json
├── templates/
│   ├── TASK_RUN_TEMPLATE.md
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
├── examples/
│   └── PILOT-01_book_six_principles.md
└── tasks/
    └── SYS-001_ai-working-system-development.md
```

## 3. Các nguyên tắc vận hành

- **Yêu cầu cụ thể trước:** thành công được xác định từ yêu cầu gốc và tiêu chí chấp nhận, không phải từ việc câu trả lời trông thuyết phục.
- **Kết quả trước quy trình cứng:** chấp nhận nhiều cách thực hiện hợp lệ nếu chúng đáp ứng yêu cầu và ràng buộc. Bắt buộc một trình tự chỉ khi trình tự đó thật sự là yêu cầu.
- **Bằng chứng phân biệt với lời tự thuật:** “AI nói đã kiểm tra” không tương đương với việc kiểm tra đã được quan sát hoặc tái xác minh.
- **Không tìm kiếm một cách máy móc:** tìm kiếm khi tính hiện thời, độ đặc thù, nguồn gốc hoặc độ bất định khiến nó cần thiết; cũng kiểm tra các trường hợp có thể trả lời trực tiếp.
- **Không ép điểm số khi không có căn cứ:** dùng các trạng thái đạt / một phần / không đạt / chưa thể đánh giá / không áp dụng. Chưa có trọng số chung trong v0.4.
- **Lưu lỗi thực tế:** ưu tiên các lỗi xảy ra thật; không chỉ tạo benchmark giả định.
- **Kiểm tra lại bộ chấm:** khi AI bị đánh trượt, xem cả khả năng đề bài hoặc rubric sai.
- **Bảo vệ dữ liệu:** không đưa bí mật, thông tin xác thực hoặc dữ liệu riêng tư vào AI không được phép xử lý chúng.

## 4. Khi nào dùng phần nào?

| Tình huống | Tài liệu chính |
|---|---|
| Tác vụ thông thường, nghiên cứu, học tập, viết | `templates/TASK_RUN_TEMPLATE.md` + `evaluation/EVALUATION_RUBRIC.md` |
| Nhiệm vụ kỹ thuật có build/test/log/board | Task template; bổ sung bằng chứng kiểm thử thực tế |
| Tìm nội dung trong sách/tài liệu cụ thể | Task template với nguồn/ấn bản và tiêu chí truy xuất nguồn gốc rõ ràng |
| So sánh ChatGPT, Claude, Gemini hoặc các AI khác | `comparison/MODEL_COMPARISON_PROTOCOL.md` |
| Lỗi lặp lại hoặc thay đổi cách làm | `improvement/FAILURE_CHANGE_LOG.md` |
| Tiếp tục việc qua nhiều phiên/AI | Mục G trong Task Run hiện có; `tasks/SYS-001_ai-working-system-development.md` là ví dụ hồ sơ đang mở |
| Tổ chức bộ kiểm thử nhỏ theo năng lực/lỗi | `evaluation/EVALUATION_CASE_SET.md` |

Không phải nhiệm vụ nào cũng cần dùng tất cả file. NIST AI RMF Playbook cũng khuyến nghị sử dụng các gợi ý phù hợp với ngữ cảnh, không xem tài liệu của họ như checklist bắt buộc phải hoàn thành toàn bộ.

## 5. Vòng lặp công việc

```text
Xác định nhiệm vụ
      ↓
Chọn cách thực hiện phù hợp
      ↓
Thực hiện và ghi nhận bằng chứng
      ↓
Đánh giá kết quả theo rubric
      ↓
Có lỗi đáng lưu giữ? ── Không ──> Lưu kết quả và kết thúc
      │
     Có
      ↓
Ghi Failure/Change Log → thêm/sửa Evaluation Case
      ↓
Thử thay đổi trên case mục tiêu và case hồi quy
```

## 6. Giới hạn đã biết

- Bộ tài liệu này không thể tự quan sát hành động nội bộ hoặc công cụ mà giao diện AI không cho phép xem.
- Lời AI tự chấm không phải bằng chứng độc lập; các kết luận quan trọng cần kiểm tra bằng nguồn gốc, test, log hoặc người có chuyên môn.
- Các rubric nghiên cứu có phần phán đoán; cần hiệu chỉnh bằng ví dụ thật và áp dụng nhất quán.
- So sánh mô hình không công bằng nếu khác biệt công cụ, dữ liệu hoặc quyền truy cập không được ghi lại.
- v0.4 chưa được kiểm thử thực nghiệm trên một tập nhiệm vụ đủ lớn. Không được tuyên bố nó đã cải thiện hiệu suất trước khi đo.

## 7. Continuation / Handoff

Mục G trong Task Run là điểm lưu trạng thái để tiếp tục cùng một mục tiêu qua nhiều phiên hoặc nhiều AI. Đây là phần bổ sung quy trình của v0.4; nó chưa được xác nhận qua thử nghiệm đủ rộng. Case `CONT-001` trong evaluation case set được dùng để thử hành vi tiếp tục công việc.

## 8. Nâng cấp từ v0.3

Xem [`MIGRATION_v0.3_to_v0.4.md`](MIGRATION_v0.3_to_v0.4.md) để áp dụng thay đổi mà không làm mất hồ sơ nhiệm vụ đang có.

## 9. Tài liệu tham chiếu

Xem [`research/SOURCES_AND_METHOD.md`](research/SOURCES_AND_METHOD.md) để biết nguồn gốc, phần phương pháp được kế thừa và các quyết định điều chỉnh cho bản này.
