> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: front-end-design
description: Thiết kế và build giao diện web có cá tính, chuẩn production, không bị nhìn ra là AI làm. Dùng cho mọi trang, landing page, dashboard, component hoặc redesign, và khi user muốn UI đẹp hơn, đậm hơn, dịu hơn hoặc bớt "na ná". Không dùng cho việc chỉ có backend.
---

# Mục tiêu
Giao diện có quan điểm rõ ràng, được chọn cho CHÍNH sản phẩm này và người dùng của nó. Một cái look mặc định là thất bại, không phải lựa chọn an toàn.

# Các bước
1. Context trước. Đọc `docs/design.md` và token hoặc component đang có. Nếu chưa có, hỏi 2-3 câu: ai dùng, dùng ở đâu và dưới ánh sáng thế nào, họ cần làm gì hoặc hiểu gì. Rồi viết một câu mô tả bối cảnh thực tế; câu đó quyết định nền sáng hay tối.
2. Chọn mode, nó quyết định mức tham vọng:
   - Persuade (landing, bảng giá): đậm và dứt khoát, một ý tưởng đáng nhớ.
   - Operate (app, dashboard, settings): rõ ràng, mật độ, nhất quán. Thương hiệu nằm ở chi tiết.
   - Read (docs, bài viết): độ dài dòng, cấu trúc, yên tĩnh.
   - Experience (portfolio, gallery): tác phẩm dẫn dắt, giao diện lùi lại.
3. Chọn một "thế giới", không phải một theme. Liệt kê 5 thứ cụ thể người dùng thuộc lòng (đồ vật, địa điểm, ấn phẩm, nghi thức), trải ra ít nhất 3 nhóm chất liệu. Loại bỏ cái trang mà ngành này lúc nào cũng làm VÀ cái đối lập dễ đoán của nó. Chọn một ("bản đồ tàu điện", không phải "sạch sẽ tối giản"). Nếu nhìn tên ngành là đoán được look, chọn lại.
4. Chốt hệ thống trước khi code, ghi vào `docs/design.md` (luận điểm, thế giới, bảng màu, font, màn hình đầu tiên):
   - Màu: chọn chiến lược trước: restrained (màu trung tính có pha sắc + 1 màu nhấn), committed (một màu chiếm 30-60% bề mặt), full palette (3-4 vai trò có tên) hoặc drenched (cả bề mặt là màu). Màu chiếm cả vùng lớn, không rắc lác đác. Dùng OKLCH cho bảng màu mới.
   - Chữ: chọn font như chọn đồ vật trong thế giới đó. Ít họ font nhất mà vẫn phân cấp rõ, chữ thân ít nhất 16px, dòng 65-75 ký tự, chữ display tối đa 6rem, tracking không chặt hơn -0.04em, `text-wrap: balance` cho tiêu đề và `pretty` cho đoạn văn. Chỉ tải những weight thật sự dùng.
   - Khoảng cách: thang bội số của 4, chặt trong nhóm, thoáng giữa các nhóm, khoảng trên tiêu đề lớn hơn khoảng dưới.
   - Chiều sâu: một cách tạo độ nổi (border HOẶC shadow). Shadow có độ lệch và blur mềm, không bao giờ là quầng sáng.
   - Chuyển động: một khoảnh khắc được thiết kế, ease-out (`cubic-bezier(0.16, 1, 0.3, 1)`), 150-300ms cho đổi trạng thái, có nhánh `prefers-reduced-motion`.
5. Build hết mình. Màn hình đầu tiên là luận điểm: ai rời đi sau một màn hình vẫn tả lại được sau một tiếng. Style lại mọi thành phần nhỏ (nút, input, link, nav) theo ngôn ngữ của thế giới đó. Cho thấy sản phẩm đang chạy với nội dung thật, cụ thể; không lorem ipsum, không bịa số liệu.
6. Nhìn lại, tối đa hai lần. Render mobile (390px) và desktop (1440px), mọi theme và trạng thái. Gom hết lỗi của một lần nhìn rồi sửa một lượt trước lần nhìn tiếp. Nếu có, chạy `npx impeccable detect <dir>` và sửa những gì nó báo.

# Mặc định từ chối (brief được phép ghi đè, thói quen thì không)
- Font display theo phản xạ: Inter, DM Sans, Space Grotesk, Plus Jakarta Sans, Outfit, Instrument Sans, IBM Plex, Fraunces, Playfair Display, Cormorant, Lora, Syne. Muốn dùng phải có lý do mà không font nào khác đáp ứng được. Font UI phổ thông vẫn ổn cho chữ thân ở mode Operate và Read.
- Look theo phản xạ: gradient tím sang xanh; nền kem + serif nghiêng + màu đất nung; gần đen + một màu neon phát sáng; đường kẻ mảnh kiểu báo + nhãn mono giãn chữ.
- Chữ gradient, glassmorphism để trang trí, `border-left` màu dày trên card, shadow lệch cứng ngoài một thế giới neobrutalist thật, nền kẻ ô hoặc sọc mà không có gì để đo trên đó.
- Lưới card giống hệt nhau (icon + tiêu đề + text) làm khung trang, card lồng card, template "số to nhãn nhỏ".
- Nhãn nhỏ (eyebrow) phía trên tiêu đề, số thứ tự 01/02/03 không mang thông tin.
- Chữ xám trên nền màu (pha sắc từ màu nền thay vì xám).
- Emoji hoặc ký tự unicode làm icon (dùng một bộ icon, một độ dày nét), mono làm "trang phục công nghệ", "hình minh họa" SVG kiểu vẽ nguệch ngoạc.
- Easing nảy hoặc đàn hồi, cùng một hiệu ứng fade-up cho mọi section.

# Mức sàn chất lượng (kiểm trên bản render, không phải trong đầu)
- Tương phản: chữ thân ít nhất 4.5:1, chữ lớn và control ít nhất 3:1, không bao giờ chỉ dùng màu để truyền thông tin.
- Trạng thái: hover, focus-visible, active, disabled, loading, empty, error.
- Mặc định của trình duyệt cũng phải theo theme: bôi đen chữ, viền focus, thanh cuộn, con trỏ nhập, khoảng gạch chân link, số dạng bảng trong dữ liệu.
- Chữ: nút nói rõ hành động, lỗi nói chuyện gì xảy ra và cách sửa.
- Thử tải: nội dung dài thật, từ dài, màn rộng 320px, zoom 200%.

# Luật
- Brief thắng: font, màu hoặc thời kỳ đã được chỉ định thắng mọi thứ ở trên.
- Tinh chỉnh thì giữ nguyên bản sắc hiện có. Redesign thì thay toàn bộ. Không bao giờ đánh bóng nửa vời một cái look đã được yêu cầu thay.
- Trước khi xong, nêu cách thiết kế này dễ hỏng nhất (tương phản ở dark mode, bản dịch dài, font tải chậm) và kiểm tra nó.

# Output
Code chạy được, `docs/design.md` đã cập nhật, và 3 dòng giải thích: mode, thế giới đã chọn, vì sao chọn màu và font này.

Ý tưởng chuyển thể từ [pbakaus/impeccable](https://github.com/pbakaus/impeccable) (Apache 2.0).
