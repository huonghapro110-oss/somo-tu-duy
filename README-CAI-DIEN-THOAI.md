# Sơ đồ tư duy — PWA Android + iPhone

## Cài trên điện thoại

### Android (Chrome)
1. Mở địa chỉ HTTPS của app.
2. Chọn **Cài đặt ứng dụng / Install app** hoặc **Thêm vào màn hình chính**.
3. Mở app từ icon **Sơ đồ**.

### iPhone (Safari)
1. Mở địa chỉ HTTPS của app bằng **Safari**.
2. Bấm **Chia sẻ**.
3. Chọn **Thêm vào Màn hình chính (Add to Home Screen)**.
4. Bấm **Thêm**.

> iPhone nên cài bằng Safari; Chrome trên iPhone không cung cấp trải nghiệm cài PWA đầy đủ như Safari.

## Đưa app lên mạng miễn phí bằng GitHub Pages

1. Tạo tài khoản GitHub tại https://github.com/ nếu chưa có.
2. Tạo repository mới, ví dụ `somo-tu-duy`.
3. Upload toàn bộ file trong thư mục này vào repository (không upload cả thư mục cha).
4. Vào **Settings → Pages**.
5. Ở **Build and deployment**, chọn **Deploy from a branch**.
6. Chọn branch `main`, thư mục `/ (root)` rồi **Save**.
7. Chờ GitHub triển khai. Địa chỉ thường có dạng:
   `https://TEN-GITHUB.github.io/somo-tu-duy/`
8. Mở địa chỉ đó trên điện thoại và cài app.

## Lưu ý
- Phải dùng HTTPS để PWA/Service Worker hoạt động đầy đủ. GitHub Pages cung cấp HTTPS miễn phí.
- Dữ liệu sơ đồ hiện được lưu bằng `localStorage` trên từng thiết bị/trình duyệt. Xóa dữ liệu trình duyệt có thể làm mất dữ liệu chưa xuất ra `.json`.
- Có thể dùng nút **Lưu file .json** để sao lưu sơ đồ.
