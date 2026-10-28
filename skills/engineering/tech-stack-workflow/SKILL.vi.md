> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [SKILL.md](SKILL.md) (bản gốc tiếng Anh).

---
name: tech-stack-workflow
description: Build project theo từng phase từ stack đã chọn, đầy đủ và hiểu rõ, không mất thời gian vào việc tay chân. Dùng sau tech-stack-rec khi user bắt đầu build.
disable-model-invocation: true
---

# Mục tiêu
Ship theo từng phase nhỏ và hoàn chỉnh để user hiểu mọi phần.

# Nguyên tắc
- Mỗi lần một phase. Phase nào cũng kết thúc ở trạng thái chạy được, đã test, đã commit. Không bao giờ bỏ dở một phase.
- Tự sinh phần nhàm chán (scaffold, config, Dockerfile, CI), rồi giải thích trong 2-3 dòng.
- Build phần lõi (model dữ liệu, business logic, ML pipeline) cùng user, giải thích lý do.
- Trước mỗi phase: mục tiêu và tiêu chí xong. Sau phase: cách chạy và kiểm tra, học được gì, cái gì có thể gãy về sau.
- Cập nhật `docs/progress.md` cuối mỗi phase để session mới làm tiếp được.

# Phase cho web / backend
1. Skeleton: app FastAPI, Docker, docker-compose với Postgres, /health. Xong khi: `docker compose up` chạy được.
2. Data: model SQLAlchemy và một Alembic migration. Xong khi: migration chạy, bảng đã có.
3. Logic lõi và endpoint với schema Pydantic. Xong khi: chạy được qua /docs.
4. Test: pytest cho logic và endpoint. Xong khi: pass hết.
5. CI: GitHub Actions lint và test. Xong khi: xanh khi push.
6. Deploy. Xong khi: URL live chạy được.

# Phase cho ML
1. Load và inspect: shape, dtypes, giá trị thiếu, describe().
2. Làm sạch bằng pandas, từng bước một, in ra tác động của mỗi bước.
3. EDA bằng matplotlib: phân phối, tương quan, độ cân bằng của target.
4. Feature và chia train/test, không để rò rỉ dữ liệu.
5. Train model đã chọn, metric phù hợp, confusion matrix và biểu đồ feature importance.
6. Một vòng tune, so sánh với baseline.
7. Tùy chọn: serve qua FastAPI.

# Luật
- Không bao giờ bỏ qua test hay kiểm tra để làm nhanh hơn.
- Không bao giờ sang phase tiếp khi phase hiện tại còn lỗi.
- Hỏi trước khi làm khác kế hoạch.
- Khi xong hết, chạy tech-validate (phần 2).
