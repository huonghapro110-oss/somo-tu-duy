# SoMo Tư Duy V19 – Hiện rõ nút đăng nhập

## Thay đổi
- Thêm nút **☁ Đăng nhập** nổi ngay trên màn hình chính, cạnh cụm công cụ bên phải.
- Chạm nút này mở thẳng bảng **Đồng bộ đám mây**, nơi có nút **Đăng nhập bằng Google / Gmail**.
- Giữ lại menu ☰ → Đồng bộ đám mây → Cài đặt đồng bộ như trước.
- Tăng cache Service Worker lên V19 để tránh trình duyệt giữ giao diện V18.
- Không thay đổi cấu trúc dữ liệu sơ đồ và không xóa dữ liệu lưu cục bộ.

## Cập nhật GitHub Pages
1. Giải nén ZIP.
2. Vào https://github.com/huonghapro110-oss/somo-tu-duy
3. Chọn Add file → Upload files.
4. Kéo toàn bộ file trong thư mục đã giải nén vào, ghi đè file trùng tên ở thư mục gốc.
5. Bấm Commit changes và đợi GitHub Pages triển khai xong.
6. Mở https://huonghapro110-oss.github.io/somo-tu-duy/ rồi tải lại trang. Không xóa dữ liệu trang web.

## Để Google đăng nhập thực sự hoạt động
Nút sẽ hiển thị sau khi cập nhật V19. Trong bảng Đồng bộ đám mây, cần nhập Project URL và anon public key của Supabase. Sau đó phải bật Google Provider trong Supabase và cấu hình Google OAuth theo `HUONG-DAN-DONG-BO.md`. GitHub Pages không tự tạo tài khoản hoặc nơi lưu dữ liệu.

**Bảo mật:** Chỉ dùng anon/public key trong ứng dụng. Không đưa Google Client Secret hoặc Supabase service_role key lên GitHub.
