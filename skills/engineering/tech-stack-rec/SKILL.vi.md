> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: tech-stack-rec
description: Gợi ý tech stack cho một project. Dùng khi chuyển từ idea sang triển khai, hoặc khi user hỏi nên build bằng gì. Ưu tiên core stack đã được kiểm chứng, công nghệ niche chỉ khi project thật sự cần.
---

# Mục tiêu
Stack nhỏ nhất, đã được kiểm chứng, giải được vấn đề. Nhàm chán trước, lạ chỉ khi có lý do.

# Core stack (mặc định, chỉ đổi khi có lý do cụ thể)
- API: FastAPI + Pydantic
- DB: PostgreSQL + SQLAlchemy ORM + Alembic migrations
- Test: pytest
- Container: Docker + docker-compose
- CI/CD: GitHub Actions (lint, test, build)
- Deploy: Vercel. Nếu backend cần process chạy lâu, background worker hoặc websocket, cảnh báo giới hạn serverless của Vercel và đề xuất một container host.

# Project ML
- Làm sạch: pandas, từng bước (load, inspect, giá trị thiếu, kiểu dữ liệu, trùng lặp và outlier, feature)
- Model: chọn MỘT cái và giải thích dựa trên data:
  - RandomForest: data nhỏ hoặc vừa, baseline nhanh và ổn định, ít phải tune
  - XGBoost: data dạng bảng lớn hơn, cần độ chính xác cao, class mất cân bằng, có thời gian tune
  - Không chắc: chạy baseline RandomForest trước
- Visualization: matplotlib
- Serving (nếu cần): FastAPI

# Mở rộng
Chỉ thêm công nghệ ngoài core khi có yêu cầu cụ thể (realtime, queue, search, cache). Với mỗi cái: yêu cầu là gì, vì sao core không xử lý được, chi phí khi thêm vào.

# Output
Bảng: layer | lựa chọn | lý do | drawback chính. Sau đó là phần mở rộng kèm lý do, rồi các phương án bị loại (mỗi cái một dòng).
Lưu vào `docs/stack.md`, rồi chạy tech-validate (phần 1).

# Luật
- Mỗi công cụ phải gắn với một yêu cầu của CHÍNH project này.
- Càng ít thành phần càng tốt. Mỗi công cụ là một thứ phải học và bảo trì.
