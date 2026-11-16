# SoMo Tư Duy V14 – Ghi giọng nói thành văn bản & đọc liên tục

## Tính năng
- Thêm bảng `Đọc / Ghi văn bản` với ô văn bản không tự xóa khi dừng hoặc đọc lại.
- Đọc văn bản dài theo từng câu/đoạn ngắn tuần tự; dấu câu được giữ trong câu đọc và câu đang đọc được hiển thị.
- Có Đọc từ đầu, Tạm dừng, Đọc tiếp, Dừng đọc và chỉnh tốc độ.
- Nhận dạng giọng nói tiếng Việt bằng Web Speech Recognition trên trình duyệt hỗ trợ. Kết quả cuối được nối vào cuối văn bản, không ghi đè nội dung trước.
- Service Worker đổi cache sang v14 để trình duyệt tải bản mới.

## Cập nhật GitHub Pages
1. Giải nén ZIP.
2. Trong repository `somo-tu-duy`, chọn Add file → Upload files.
3. Upload và ghi đè `index.html` và `sw.js` ở thư mục gốc.
4. Commit changes.
5. Chờ GitHub Pages hoàn tất deployment. Trên điện thoại, đóng hẳn tab/app rồi mở lại trang; nếu vẫn cũ, xóa dữ liệu trang web/cache của domain GitHub Pages hoặc gỡ và cài lại PWA.

## Dùng trên Android
- Mở trang bằng Chrome hoặc trình duyệt Chromium hỗ trợ Web Speech API, qua HTTPS.
- Bấm `🔊 Đọc / 🎙 Ghi văn bản`.
- Đọc: dán/nhập văn bản, chọn `Đọc từ đầu`.
- Chuyển giọng nói thành chữ: bấm `Bắt đầu ghi lời nói`, cho phép micro, nói tiếng Việt, bấm `Dừng ghi`.

## Giới hạn cần biết
- Chuyển giọng nói thành văn bản dùng dịch vụ nhận dạng tích hợp của trình duyệt; cần Internet và quyền micro. Mức hỗ trợ khác nhau giữa Chrome/Android, Cốc Cốc, Safari/iPhone.
- Đây là nhận dạng giọng nói trực tiếp, không phải máy ghi âm lưu file âm thanh. Kết quả văn bản được giữ trong ô cho tới khi người dùng tự xóa; nên sao chép/lưu vào sơ đồ trước khi đóng trang.
- Trình đọc dùng giọng đọc sẵn có của thiết bị. Một số trình duyệt/điện thoại có thể tự ngắt khi chuyển app hoặc tắt màn hình; nội dung gốc không bị xóa và có thể đọc lại.
