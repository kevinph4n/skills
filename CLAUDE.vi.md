> Bản dịch tiếng Việt để đọc. Agent chỉ dùng [CLAUDE.md](CLAUDE.md) (bản gốc tiếng Anh).

# Repo skills

Skill cá nhân cho agent. Repo này là nguồn gốc duy nhất cho mọi thứ trong thư mục skills của Claude Code và file CLAUDE.md global.

## Bố cục
Skill nằm trong các folder bucket dưới `skills/`:
- `engineering/`: build phần mềm (stack, flow build, validate)
- `productivity/`: việc không phải code (idea, research, kế hoạch, điều hướng)
- `in-progress/`: nháp đang test thực tế. Được link vào máy, không có trong README chính.
- `misc/`: giữ lại nhưng ít dùng. Không link.
- `deprecated/`: không còn dùng. Không link.

Mỗi skill là `skills/<bucket>/<skill-name>/SKILL.md`. Tên viết kebab-case và không được trùng giữa các bucket (Claude Code thấy tất cả trong một danh sách phẳng).

## Luật mục lục
- Mọi skill trong `engineering/` hoặc `productivity/` phải có mục trong `README.md` chính: tên có link tới `SKILL.md`, kèm mô tả một dòng.
- Mọi bucket có `README.md` liệt kê tất cả skill trong nó theo cùng kiểu.
- README chính và README của các bucket promoted chia mục thành User-invoked và Model-invoked. Các bucket khác dùng danh sách phẳng.
- Chuyển skill sang bucket khác thì cập nhật README của cả hai bucket và README chính trong cùng một commit.

## Cách gọi
- User-invoked: frontmatter có `disable-model-invocation: true`. Chỉ chạy khi gõ `/skill-name`. Dùng cho skill viết nhiều code, tốn kém, hoặc tuyệt đối không được tự kích hoạt nhầm.
- Model-invoked: không có cờ đó. `description` quyết định khi nào nó tự load, nên phải ghi rõ khi nào dùng VÀ khi nào không dùng.

## Router
`start-here` là bản đồ mọi skill user dùng được và các flow giữa chúng. Mỗi khi thêm, đổi tên, xóa skill, hoặc đổi vị trí của skill trong flow, cập nhật `start-here` trong cùng commit. Router chỉ tới skill không tồn tại, hoặc thiếu skill mới, là router hỏng.

## Link
Sau khi thêm, xóa, đổi tên hoặc chuyển skill, chạy `bash scripts/link-skills.sh` (Git Bash). Script sẽ:
- tạo junction cho mọi skill ngoài `misc/` và `deprecated/` vào `$CLAUDE_CONFIG_DIR/skills/`
- copy `global/CLAUDE.md` sang `$CLAUDE_CONFIG_DIR/CLAUDE.md`

Chỉ sửa chỉ dẫn global trong `global/CLAUDE.md`. Bản trong folder config bị ghi đè mỗi lần chạy.

## Viết skill
- Chỉ tiếng Anh. Không dùng em-dash ở bất cứ đâu: viết lại câu bằng dấu phẩy, hai chấm, chấm hoặc ngoặc đơn, đừng chỉ thay ký tự.
- Khung: Goal, Steps, Rules, Output. Cố giữ dưới 50 dòng. Cắt bỏ những gì model vốn đã làm mặc định.
- Một skill, một việc. Nếu cần "và thêm nữa", tách ra.
- Mỗi skill có ít nhất một luật về drawback hoặc kiểu hỏng.
- Skill tạo ra trạng thái project thì ghi vào `docs/` (`idea.md`, `stack.md`, `progress.md`) để các session sau làm tiếp được.
- Khi skill chạy sai trong thực tế, sửa `SKILL.md` rồi commit. Đừng chỉ sửa trong chat.

## Bản dịch
- File tiếng Anh là bản gốc. Mọi file `.md` có một bản tiếng Việt nằm cạnh: `README.md` / `README.vi.md`, `SKILL.md` / `SKILL.vi.md`, `CLAUDE.md` / `CLAUDE.vi.md`.
- Mọi thay đổi ở file tiếng Anh phải cập nhật bản `.vi.md` trong cùng commit. Bản dịch nói khác bản gốc là bug.
- Agent chỉ load `SKILL.md` và `CLAUDE.md`. File `.vi.md` dành cho người đọc; không bao giờ để chỉ dẫn chỉ nằm trong đó.
- Mỗi cặp link qua lại ở đầu file (`English · Tiếng Việt`). File `SKILL.vi.md` và `CLAUDE.vi.md` mở đầu bằng ghi chú trỏ về file tiếng Anh. Ngoại lệ: `global/CLAUDE.md` không có dòng link, vì nó được copy sang folder config nơi link sẽ bị hỏng.

## Commit
- Không bao giờ thêm Co-Authored-By hay ghi công AI.
- Không bao giờ commit `synced/` (bản sao skill của tài khoản do app quản lý) hoặc `.claude/`.
