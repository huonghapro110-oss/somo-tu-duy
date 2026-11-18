# SoMo Tư Duy V18 – Đăng nhập Google và đồng bộ đám mây

## Thay đổi V18
- Thêm nút **Đăng nhập bằng Google / Gmail** trong Cài đặt đồng bộ.
- Dùng Supabase Auth OAuth với PKCE; không yêu cầu mật khẩu Gmail.
- Sau khi Google đăng nhập thành công, dùng chính cơ chế đồng bộ Supabase hiện có để tải lên/tải xuống các sơ đồ.
- Giữ lại đăng nhập email + mật khẩu ứng dụng để tương thích với tài khoản đã dùng trước đây.
- Giữ nguyên cấu trúc sơ đồ, minimap Kinh Thánh, đọc thành tiếng, ghi giọng nói, thu gọn bảng điều khiển và dữ liệu lưu cục bộ.
- Đổi cache Service Worker sang V18 để trình duyệt nhận bản cập nhật.

## Cần cấu hình một lần
Làm theo `HUONG-DAN-DONG-BO.md`: tạo Supabase project, chạy `supabase-setup.sql`, bật Google Provider bằng OAuth Client ID/Secret và thêm URL GitHub Pages vào Redirect URLs.

## Cập nhật GitHub Pages
1. Giải nén ZIP V18.
2. Mở repository `huonghapro110-oss/somo-tu-duy` → **Add file → Upload files**.
3. Tải lên và ghi đè các file trong ZIP tại thư mục gốc (đặc biệt `index.html`, `sw.js`, `HUONG-DAN-DONG-BO.md`, `README-V18-GOOGLE-SYNC.md`). Giữ nguyên các file icon, manifest và SQL nếu GitHub báo không cần thay.
4. Kéo xuống **Commit changes**.
5. Chờ GitHub Pages triển khai xong, sau đó đóng hẳn tab/app và mở lại trang.

## Quan trọng
Mã nguồn đã có nút và luồng Google OAuth, nhưng đăng nhập Google chỉ hoạt động sau khi bạn tự cấu hình Google Provider trong Supabase. Không đưa Google Client Secret hoặc Supabase service_role key lên GitHub.
