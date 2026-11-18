# SoMo Tư Duy V22 – Ghi giọng nói ổn định, chuẩn hơn

## Lỗi đã sửa
- **Bị ngắt giữa chừng**: trình duyệt tự dừng nghe khi im lặng/hết phiên. Giờ app **tự nối lại** cho đến khi bạn bấm Dừng.
- **Nói lại thì bị xóa hết**: trước đây mỗi lần nghe mới ghi đè lại từ đầu. Giờ chỉ **nối thêm** vào cuối, không xóa chữ cũ.
- **Vòng lặp / lặp chữ**: chống lặp câu y hệt và câu lặp kiểu tích lũy (hay gặp trên Chrome Android). Chữ đang nghe dở khi bị ngắt được giữ lại.
- Áp dụng cho cả 4 nơi: 🎙 Nói vào nút, Nói nhánh con, Nói cả đoạn → sơ đồ, và Đọc / Ghi văn bản.

## Chuẩn hơn
- Nói “dấu chấm”, “dấu phẩy”, “dấu hai chấm”, “dấu chấm hỏi”, “xuống dòng” để chèn dấu; đầu câu tự viết hoa.
- **Từ điển sửa lỗi** (Đọc / Ghi văn bản → 📖): mỗi dòng `chữ nghe sai = chữ đúng`, ví dụ `gia cốp = Gia-cốp`. Hữu ích cho tên riêng, địa danh Kinh Thánh.
- Dừng tự động nếu im lặng quá 2 phút; báo rõ khi mất quyền micro, mất mạng, hoặc micro ngắt liên tục.

## Kiểm tra phiên bản
Mở ☁ Đăng nhập: cuối bảng có dòng **“Phiên bản app: V22”**. Nếu không thấy dòng này nghĩa là app vẫn đang chạy bản cũ (cache), hãy đóng hẳn app rồi mở lại sau khi GitHub Pages triển khai xong.

## Cập nhật GitHub Pages
Upload ghi đè `index.html`, `sw.js` và README mới lên thư mục gốc repo → Commit → đợi Pages chạy xong → đóng hẳn app, mở lại.

## Giới hạn
Nhận dạng dùng dịch vụ có sẵn của Chrome/Edge (cần Internet), độ chính xác phụ thuộc micro và môi trường ồn. Muốn chuẩn hơn nữa cần ghi âm rồi gửi cho dịch vụ nhận dạng riêng (Whisper/Gemini, cần API key).
