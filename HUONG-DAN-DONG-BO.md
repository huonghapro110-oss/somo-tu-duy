# Đồng bộ SoMo Tư Duy giữa điện thoại, máy tính và tablet

Ứng dụng dùng Supabase miễn phí do bạn sở hữu. Dữ liệu sơ đồ được lưu trong dự án Supabase của bạn; không tải lên GitHub.

## 1. Tạo nơi lưu trữ (làm một lần)
1. Vào https://supabase.com và tạo một project (gói Free đủ để bắt đầu).
2. Mở **SQL Editor → New query**, dán toàn bộ file `supabase-setup.sql`, rồi bấm **Run**.
3. Vào **Project Settings → API**, sao chép **Project URL** và **anon public key**. Không dùng `service_role` key trong ứng dụng.
4. Trong **Authentication → URL Configuration**, đặt Site URL là địa chỉ GitHub Pages của app, ví dụ `https://huonghapro110-oss.github.io/somo-tu-duy/`. Thêm chính địa chỉ đó vào Redirect URLs.

## 2. Bật đăng nhập Google/Gmail (làm một lần)
1. Vào Google Cloud Console: https://console.cloud.google.com/ và tạo/chọn một project.
2. Cấu hình OAuth consent screen / Google Auth Platform theo hướng dẫn của Google.
3. Tạo **OAuth Client ID → Web application**.
4. Ở **Authorized redirect URIs**, thêm đúng callback Supabase: `https://<PROJECT-REF>.supabase.co/auth/v1/callback` (thay `<PROJECT-REF>` bằng mã project trong Project URL).
5. Quay lại Supabase → **Authentication → Providers → Google**, bật Google, dán **Client ID** và **Client Secret** từ Google Cloud, rồi Save.
6. Trong Supabase → **Authentication → URL Configuration → Redirect URLs**, thêm URL GitHub Pages thực tế của ứng dụng, ví dụ `https://huonghapro110-oss.github.io/somo-tu-duy/`.

Lưu ý: Google đăng nhập bằng OAuth. Ứng dụng không yêu cầu và không bao giờ cần mật khẩu Gmail của bạn. Chỉ nhập Client ID/Secret trong trang cấu hình Supabase, không dán Secret vào mã nguồn hoặc GitHub.

## 3. Dùng trong ứng dụng
1. Mở SoMo Tư Duy → menu ☰ → **Cài đặt đồng bộ**.
2. Dán **Project URL** và **anon public key**.
3. Bấm **Đăng nhập bằng Google / Gmail**, chọn tài khoản Google và chấp thuận.
4. Bật **Tự đồng bộ khi chỉnh sửa và khi mở app**. Bạn cũng có thể bấm **Đồng bộ ngay**.
5. Trên điện thoại/máy tính khác, mở cùng ứng dụng, nhập cùng Project URL và anon key, rồi đăng nhập bằng đúng tài khoản Google đó.

Bạn vẫn có thể dùng cách đăng nhập email + mật khẩu ứng dụng cũ. Mật khẩu này không phải mật khẩu Gmail.

## 4. Cách đồng bộ và lưu ý dữ liệu
- Mỗi sơ đồ được đồng bộ theo tài khoản đã đăng nhập. Mở app trên thiết bị khác và đăng nhập cùng tài khoản để tải sơ đồ.
- Khi có mạng, ứng dụng tự đồng bộ sau khi chỉnh sửa (nếu bật tùy chọn) và khi mở lại app. Có thể đồng bộ thủ công bất cứ lúc nào.
- Khi hai thiết bị cùng sửa một sơ đồ, bản chỉnh sửa mới hơn sẽ được ưu tiên; bản trên thiết bị hiện tại được đưa vào Lịch sử phiên bản trước khi bị thay.
- Xóa sơ đồ ở một thiết bị sẽ đồng bộ trạng thái xóa sang thiết bị khác.
- Nếu đã bật mã hóa bằng mật khẩu trong app, dữ liệu sơ đồ được mã hóa trước khi gửi lên đám mây. Các thiết bị khác cần cùng mật khẩu mã hóa để đọc dữ liệu.
- Không xóa dữ liệu trang web trên điện thoại khi chưa chắc sơ đồ đã đồng bộ xong. Nên kiểm tra trạng thái đồng bộ lần cuối trước khi gỡ/cài lại ứng dụng.
