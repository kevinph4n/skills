> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: start-here
description: Chỉ user tới đúng skill hoặc flow. Dùng khi user không biết làm gì tiếp, hỏi nên dùng skill nào, hoặc bắt đầu làm mà chưa rõ bước.
---

# Mục tiêu
Chọn đúng skill tiếp theo. Không làm việc thay ở đây.

# Flow
Idea mới: idea-hunt -> idea-validate -> idea-stress-test -> tech-stack-rec -> tech-validate (phần 1) -> /tech-stack-workflow -> tech-validate (phần 2)
- Đã có idea được validate: bắt đầu từ tech-stack-rec
- Đã chọn stack, sẵn sàng build: /tech-stack-workflow
- Project đã xong: tech-validate (phần 2)
- Mọi việc về giao diện (trang mới, redesign, "làm cho đẹp hơn"): front-end-design, kể cả trong các phase của /tech-stack-workflow có đụng tới frontend

# Skills
| Skill | Dùng khi | Cách gọi |
|---|---|---|
| idea-hunt | chưa có idea, lĩnh vực mơ hồ | model |
| idea-validate | idea cụ thể, có đáng làm không? | model |
| idea-stress-test | idea đã validate, scale được không? | model |
| tech-stack-rec | đang chọn công nghệ để build | model |
| tech-validate | audit stack, hoặc hỏi lại user sau khi xong | model |
| tech-stack-workflow | build project theo từng phase | chỉ user (/tech-stack-workflow) |
| front-end-design | thiết kế hoặc làm lại giao diện | model |

# Các bước
1. Nếu đang trong một project, đọc `docs/idea.md`, `docs/stack.md`, `docs/progress.md` để biết user đang ở đâu.
2. Nêu skill tiếp theo và lý do trong 1-2 dòng. Nếu hai skill đều hợp, nêu đánh đổi.
3. Không có skill nào hợp thì nói thẳng. Nếu user đã làm tay việc này 3 lần trở lên, gợi ý viết skill cho nó.
