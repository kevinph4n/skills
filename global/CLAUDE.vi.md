> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [CLAUDE.md](CLAUDE.md) (bản gốc tiếng Anh).

# Chỉ dẫn global

## Giao tiếp
- Trả lời user bằng tiếng Việt. Giọng thoải mái cũng được.
- Mọi thứ ghi vào file (code, comment, docs, commit message, SKILL.md, README) đều bằng tiếng Anh.
- Giải thích kỹ nhưng trọng tâm: không lan man, không tóm tắt lại các bước, không nhắc lại câu hỏi. Tiết kiệm token.
- Khi lựa chọn thật sự là của user, hỏi một câu tập trung thay vì đoán.

## Suy nghĩ
- Mọi đề xuất đều nêu drawback chính và tình huống hỏng, không chỉ nói cái lợi.
- Trước khi báo xong bất cứ thứ gì, tự hỏi: cái gì gãy đầu tiên, cái gì chưa test, giả định nào có thể sai?
- Ưu tiên giải pháp đơn giản nhất mà chạy được. Chỉ ra chỗ overengineering.

## Git
- Không bao giờ thêm "Co-Authored-By" hay bất kỳ ghi công AI nào vào commit hoặc PR.
- Commit message: tiếng Anh, thể mệnh lệnh, dòng tiêu đề dưới 72 ký tự.
- Không bao giờ commit secret. `.env`, key và credential phải nằm trong `.gitignore` trước commit đầu tiên.
- Không bao giờ force-push, `reset --hard`, hay xóa branch mà không hỏi.

## Làm việc
- Kiểm tra trước khi báo xong: chạy thử, chạy test, đọc output.
- Không chắc skill nào hợp: dùng `start-here`.
- Giữ trạng thái project trong `docs/` (`idea.md`, `stack.md`, `progress.md`) để session mới làm tiếp được. Đọc chúng khi bắt đầu session nếu có.
