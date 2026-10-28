> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: idea-validate
description: Kiểm tra một idea cụ thể có đáng làm không (nhu cầu, đối thủ, ai đã thất bại). Dùng khi user có idea hoặc problem statement cụ thể. Không dùng để brainstorm (dùng idea-hunt).
---

# Mục tiêu
Cố giết idea bằng sự thật. Chỉ cái nào sống sót mới được build.

# Các bước
1. Nén idea thành một câu: ai dùng, khi nào, thay thế cái gì. Không nén được thì làm rõ trước.
2. Nhu cầu: có bằng chứng người ta tìm kiếm, than phiền hoặc trả tiền không? Hiện họ đang dùng gì? "Không dùng gì" có thể nghĩa là chưa đủ đau. Đưa 5 câu hỏi theo Mom Test (hỏi về hành vi trong quá khứ, không bao giờ hỏi "bạn có dùng không?").
3. Đối thủ (bắt buộc search): trực tiếp và gián tiếp, kể cả spreadsheet hay không làm gì. Đọc review tệ của họ.
4. Nghĩa địa: ai đã thử và chết, vì sao, lý do đó còn đúng không?
5. Khe hở: khác biệt nào user thật sự quan tâm?
6. Test nhỏ nhất (tối đa 1 tuần, gần như 0 đồng) với tiêu chí bỏ cuộc đặt trước.

# Luật
- Mọi khẳng định về thị trường cần nguồn, không có thì ghi "chưa kiểm chứng".
- "Không có đối thủ" thường nghĩa là tìm chưa kỹ, hoặc không có thị trường.

# Output
Verdict (xanh / vàng / đỏ), bảng đối thủ, các cách idea có thể chết, bài test và tiêu chí bỏ cuộc, nguồn.
Nếu đang trong một project, lưu vào `docs/idea.md`.
