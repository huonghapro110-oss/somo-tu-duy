# SoMo Tư Duy V25 – Tiến độ học tách riêng, đồng bộ an toàn

## Vấn đề trước đây
Tiến độ ôn tập (hộp, ngày đến hạn, nút sai, nhật ký) nằm ngay trong dữ liệu sơ đồ. Mỗi lần học là sơ đồ bị đánh dấu "đã đổi" và đồng bộ ghi đè cả sơ đồ theo bản mới hơn, nên học trên điện thoại rồi sửa trên laptop (chưa đồng bộ giữa chừng) có thể mất chỉnh sửa của một bên.

## Đã đổi
- Dữ liệu sơ đồ **không còn chứa** tiến độ học. Tiến độ lưu riêng cho từng sơ đồ (khóa `<khóa sơ đồ>-pg`) và đồng bộ thành dòng riêng `pg:<id sơ đồ>` trong cùng bảng `somo_maps` (không cần chạy SQL mới).
- **Gộp theo từng thẻ**: thẻ nào được học gần nhất thì thắng; nhật ký thống kê gộp từ hai máy (bỏ trùng).
- Học bài không còn đánh dấu sơ đồ đã đổi, không tạo bước Hoàn tác, và không làm sơ đồ bị tải lên lại. Mỗi lần chấm một thẻ được lưu ngay (trước đây chỉ lưu cuối buổi).
- Hoàn tác / Khôi phục phiên bản không còn làm lùi tiến độ học.
- Nâng cấp tự động: tiến độ cũ nằm trong nút được chuyển sang bản riêng ở lần mở app đầu tiên; sau lần lưu đầu tiên dữ liệu sơ đồ sẽ sạch các trường học.
- Thông báo đồng bộ có thêm “· tiến độ ôn tập N” khi có thay đổi.

## Cập nhật (quan trọng)
Cập nhật **cả laptop và điện thoại**: upload ghi đè `index.html`, `sw.js` → đóng hẳn app, mở lại → bấm Đồng bộ ngay trên từng máy. Cuối bảng ☁ phải ghi “Phiên bản app: V25”.
Không nên để một máy chạy V24 trở xuống trong lúc máy kia đã V25: tiến độ học trên máy cũ sẽ không được nhận.

## Giới hạn
- Nếu thay cả nội dung sơ đồ bằng mẫu/dàn ý mới, nút mới có thể trùng mã số với nút cũ và thừa hưởng tiến độ cũ từ cloud (hiếm).
- Chưa kiểm tra file xuất .json có mang theo tiến độ hay không.
