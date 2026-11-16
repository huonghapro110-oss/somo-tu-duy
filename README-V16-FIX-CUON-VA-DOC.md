# SoMo Tư Duy V16 – sửa cuộn và đọc văn bản

## Thay đổi
- Chuyển nút Đọc/Ghi và hộp thoại vào trước script khởi tạo. Ở V15, script chạy trước khi các phần tử này được tạo nên không gắn được sự kiện; nút đọc không hoạt động.
- Sửa vùng bảng điều khiển: cuộn dọc thực sự trên điện thoại, không bị `overflow:hidden` ghi đè; giới hạn chiều rộng trên desktop để không tràn màn hình.
- Bộ đọc chia nội dung thành đoạn ngắn, đọc tuần tự; giữ nguyên văn bản và dấu câu trong ô nguồn/đoạn đang đọc; thêm khôi phục khi engine đọc bị treo.
- Tăng độ ổn định khi tạm dừng/đọc tiếp và chọn giọng tiếng Việt nếu thiết bị cung cấp.
- Đổi tên cache Service Worker sang V16 để buộc tải bản mới.

## Cập nhật GitHub Pages
Giải nén ZIP và upload/ghi đè `index.html` cùng `sw.js` ở thư mục gốc repository, sau đó Commit changes.

## Lưu ý giọng đọc
Đọc thành tiếng dùng Web Speech API của trình duyệt và giọng TTS đã cài trên thiết bị. Nếu vẫn không có âm thanh, kiểm tra âm lượng media và cài/bật giọng tiếng Việt trong cài đặt Text-to-speech của Android. Nhận dạng giọng nói cần Internet và quyền micro.
