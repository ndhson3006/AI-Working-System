# Migration Guide — v0.4 → v0.5

## Lý do

v0.5 xử lý rủi ro thủ tục quá cứng bằng cách chọn độ sâu tương xứng với nhiệm vụ. v0.4 không bị ghi đè và vẫn là bản tham chiếu lịch sử.

## Thay đổi chính

1. Thêm ba mode vận hành: Quick, Standard và Rigorous. Đây là đề xuất của dự án, không phải taxonomy chính thức của Anthropic/NIST/OpenAI.
2. Thêm `templates/TASK_RUN_MINI_TEMPLATE.md` cho Standard.
3. Giữ `templates/TASK_RUN_TEMPLATE.md` làm full template cho Rigorous hoặc công việc cần lưu trạng thái dài hạn, đồng thời làm rõ có thể bỏ qua mục không liên quan.
4. Cập nhật Working Agreement, README, rubric, model comparison protocol và research notes để phân biệt nguyên tắc bất biến với thủ tục có thể điều chỉnh.
5. Thêm R8 về tính tương xứng của quy trình và các case FLEX-001–FLEX-004, hiện đều ở trạng thái `draft`.

## Cách áp dụng

- **Quick:** không cần tạo hồ sơ mặc định. Trả lời trực tiếp, vẫn giữ tính đúng đắn và minh bạch với giới hạn quan trọng.
- **Standard:** dùng mini template nếu cần giữ lại mục tiêu, tiêu chí, bằng chứng chính và bước tiếp theo.
- **Rigorous:** dùng full template và các rubric/phần ghi nhận liên quan. Không có nghĩa buộc dùng mọi trường; mục không áp dụng có thể bỏ qua.
- Khi công việc kéo dài qua phiên/AI, ưu tiên lưu Task Run hiện tại và cập nhật checkpoint; độ đơn giản của mode không được làm mất trạng thái cần thiết để tiếp tục.
- Nếu đang dùng v0.4, không cần chuyển đổi mọi Task Run cũ. Công việc mới có thể sử dụng v0.5; công việc đang dang dở chỉ cập nhật mode và các trường cần thiết khi có checkpoint hợp lý.

## Điều không thay đổi

- Yêu cầu gốc và tiêu chí bắt buộc không được âm thầm thay đổi.
- Không bịa nguồn, hành động, kết quả test hay trạng thái file.
- Báo cáo AI không tự trở thành bằng chứng độc lập.
- Không coi việc điền đủ template là bằng chứng nhiệm vụ thành công.
- Chưa thiết lập trọng số hoặc điểm tổng chung.

## Cách đánh giá việc nâng cấp

Đừng mặc định v0.5 tốt hơn chỉ vì ít thủ tục hơn. Thử ít nhất một tác vụ đơn giản và một nhiệm vụ cần xác minh sâu. Đánh giá correctness/completeness và mức công sức; ghi trường hợp thiếu kiểm chứng hoặc thủ tục thừa. Case FLEX trong evaluation set là seed để cụ thể hóa thử nghiệm, chưa phải benchmark đã được xác thực.
