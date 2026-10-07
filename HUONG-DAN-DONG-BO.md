# Đồng bộ giữa điện thoại, máy tính và tablet

Tính năng này dùng Supabase miễn phí do chính bạn sở hữu. Dữ liệu chỉ nằm trong dự án của bạn.

## Làm một lần (khoảng 10 phút)
1. Vào supabase.com, tạo tài khoản và bấm New project (gói Free là đủ). Đặt tên và mật khẩu cơ sở dữ liệu bất kỳ.
2. Chờ dự án tạo xong, mở SQL Editor, dán toàn bộ file `supabase-setup.sql` rồi bấm Run.
3. Vào Authentication > Providers > Email. Để đơn giản, tắt "Confirm email" (nếu để bật, bạn phải bấm link xác nhận trong email trước khi đăng nhập).
4. Vào Project Settings > API, chép hai giá trị: **Project URL** và **anon public key**. Khóa anon là khóa công khai theo thiết kế, dữ liệu được bảo vệ bằng quy tắc "chỉ chủ sở hữu" trong file SQL.

## Dùng trong app
1. Mở menu ☰ > Cài đặt đồng bộ, dán Project URL và khóa anon, nhập email và mật khẩu rồi bấm Đăng ký.
2. Bật "Tự đồng bộ khi chỉnh sửa và khi mở app".
3. Trên máy khác, cài app, dán cùng URL và khóa, rồi bấm Đăng nhập: các sơ đồ sẽ tự về máy.

## Cách đồng bộ hoạt động
- Mỗi sơ đồ có dấu thời gian chỉnh sửa. Nếu hai máy cùng sửa một sơ đồ, bản sửa sau cùng được giữ, và bản bị thay trên máy hiện tại được lưu vào Lịch sử phiên bản.
- Xóa sơ đồ ở máy này sẽ xóa ở các máy khác ở lần đồng bộ kế tiếp.
- Nếu bạn đã bật mã hóa bằng mật khẩu, dữ liệu gửi lên đám mây cũng đã được mã hóa. Tên sơ đồ thì chưa mã hóa. Các máy khác cần bật mã hóa cùng mật khẩu để đọc được.
- Hãy tránh sửa cùng một sơ đồ trên hai máy trong vài giây liền nhau.
