# SoMo Tư Duy V21 – Tối ưu và hoàn thiện đăng nhập

## Đã sửa / tối ưu
- Tự chuẩn hóa **Project URL** và **anon key** (xóa khoảng trắng/xuống dòng, thêm https://, cắt đuôi /rest/v1 hoặc /auth/v1 nếu dán thừa).
- Kiểm tra URL trước khi chuyển sang Google; báo rõ nếu trình duyệt chặn lưu dữ liệu (chế độ riêng tư).
- Xử lý lỗi Google/Supabase trả về (`error_description`) và hiện thông báo thay vì im lặng.
- Dự phòng nhận token trên `#hash` nếu Supabase trả theo kiểu implicit.
- Token hết hạn: tự làm mới trước khi đồng bộ; nếu làm mới thất bại thì tự đăng xuất và báo "hãy đăng nhập lại".
- Không gửi Bearer token cũ tới các endpoint `/auth/`.
- Nút ☁ nổi: đổi thành **☁ ✓** khi đã đăng nhập (giữ nguyên bấm để mở bảng đồng bộ), tự ẩn khi Trình chiếu / Zen.
- Đăng xuất có thông báo; sau đăng nhập/đồng bộ nút cập nhật ngay.
- Service Worker V21: không lưu URL có `?code=` của OAuth vào cache; trang điều hướng lưu dưới một khóa duy nhất.
- Không đổi cấu trúc dữ liệu sơ đồ, không xóa dữ liệu cục bộ.

## Bổ sung sau kiểm thử
- Bấm "Đăng nhập bằng Google" sẽ **kiểm tra Supabase trước** và báo đúng nguyên nhân: Google chưa bật, anon key sai, hoặc không kết nối được URL (thay vì bị đẩy sang trang JSON lỗi).
- Bảng đồng bộ hiện sẵn **đúng URL cần khai báo** trong Supabase và Google Cloud.
- Sửa lỗi giải mã base64 của token (trình duyệt thật khắt khe hơn Node) để tự làm mới token hoạt động.

## Cập nhật GitHub Pages
Giải nén, upload ghi đè `index.html`, `sw.js` và README mới lên thư mục gốc repo, Commit, đợi Pages chạy xong, đóng hẳn app rồi mở lại.

## Vẫn cần cấu hình một lần (không thể làm bằng code)
1. Supabase → Authentication → Providers → bật **Google** (Client ID/Secret từ Google Cloud).
2. Supabase → Authentication → URL Configuration: **Site URL** và **Redirect URLs** = `https://huonghapro110-oss.github.io/somo-tu-duy/`
3. Google Cloud → Authorized redirect URI = `https://<project>.supabase.co/auth/v1/callback`
4. Chạy `supabase-setup.sql` trong SQL Editor.
