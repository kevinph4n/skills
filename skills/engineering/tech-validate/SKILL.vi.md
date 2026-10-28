> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: tech-validate
description: Phần 1, audit stack được đề xuất để không có công nghệ nào bị dùng bừa. Phần 2, sau khi project xong, hỏi lại user để chắc họ hiểu mọi công nghệ đã dùng. Dùng sau tech-stack-rec và khi project hoàn thành.
---

# Phần 1: Audit stack (trước khi build)
Với mỗi công cụ: phục vụ yêu cầu cụ thể nào? Core stack hoặc thứ đơn giản hơn có làm được không? Tốn bao nhiêu để học và bảo trì? Kiểu hỏng tệ nhất của nó ở đây là gì?
Verdict cho mỗi công cụ: Giữ / Thay bằng X / Bỏ.
Cảnh báo overengineering ở project nhỏ: microservices, Kubernetes, message queue, nhiều database, framework không cần thiết.

# Phần 2: Kiểm tra hiểu biết (CHỈ sau khi project xong)
Với mỗi công nghệ thật sự được dùng:
1. Bảo user giải thích bằng lời của mình: nó làm gì trong CHÍNH project này, vì sao nó hơn phương án khác.
2. Hỏi một câu tình huống, ví dụ "bỏ docker-compose thì cái gì gãy?", "sao chọn RandomForest thay vì XGBoost ở đây?", "migration fail trong CI thì sao?".
3. Mỗi lần một câu. Chờ trả lời. Không lộ đáp án.
4. Chấm: hiểu / hiểu một phần / hổng. Chỗ hổng thì giải thích ngắn, chỉ đúng file trong project, rồi hỏi lại.

Kết thúc bằng bảng: công nghệ | trạng thái | cần ôn gì.

# Luật
- Hỏi về code của project này, không hỏi lý thuyết sách vở.
- Trả lời mơ hồ ("nó để làm database") thì không qua.
