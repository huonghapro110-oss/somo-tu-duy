# SoMo Tư Duy V20 – Sửa nút đăng nhập

- Đưa nút ☁ Đăng nhập thành nút nổi cố định góc trên bên phải, không phụ thuộc thanh zoom/công cụ.
- Bấm nút sẽ mở bảng Đồng bộ đám mây.
- Khi chưa nhập Supabase URL/anon key, app hiện thông báo rõ và đưa con trỏ tới ô còn thiếu.
- Cập nhật cache Service Worker sang V20.

## Lưu ý bắt buộc
Đây là sửa giao diện và phản hồi thao tác. Muốn đăng nhập Google thực sự, cần nhập Project URL + anon public key; bật Google tại Supabase Authentication > Providers; cấu hình OAuth Client ID/Secret ở Google Cloud; thêm URL GitHub Pages vào Supabase URL Configuration và redirect allow list.

Không xóa dữ liệu trình duyệt hoặc dữ liệu sơ đồ hiện có khi cập nhật.
