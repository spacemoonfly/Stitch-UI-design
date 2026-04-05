![Stitch UI design Skill](./assets/readme-hero.svg)

# Stitch UI design Skill

SKILL镜像维护者: Codex金牌小牛马

一个面向 Web UI 开发的 Codex Skill，基于 `DESIGN.md` 设计约束驱动实现流程，帮助你更稳定地完成页面与组件开发。

## 项目定位

本仓库基于以下来源进行提炼与落地：
- [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)
- [Google Stitch DESIGN.md 文档](https://stitch.withgoogle.com/docs/design-md/overview/)

核心思路：
1. 用 `DESIGN.md` 作为设计约束输入。
2. 让 AI 编码代理直接读取视觉规则并生成一致 UI。
3. 将“设计规则 -> 代码实现 -> 验证交付”串成可复用流程。

## 这个 Skill 增加了什么

相较于仅使用原始 `DESIGN.md`，本 Skill 额外提供：
- 触发条件与适用边界。
- 从 `DESIGN.md` 提取设计 token（颜色、排版、间距、状态）的实现方法。
- 小步迭代的 UI 实施策略，减少大改回归风险。
- 视觉检查与构建/测试门禁结合的交付方式。

## 一键安装

推荐使用 Codex 内置 `skill-installer`：

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo spacemoonfly/Stitch-UI-design \
  --path . \
  --name stitch-ui-design
```

安装后请重启 Codex。

更多安装方式与排障说明见：[INSTALL.md](./INSTALL.md)

## 使用方式

常见提示词示例：
- “Use Stitch UI design，读取本地 DESIGN.md 并实现当前页面。”
- “Use Stitch UI design，按 Stripe 风格重构首页 Hero 与定价区块。”
- “Use Stitch UI design，优化管理后台表格与表单样式，不改接口逻辑。”

如果项目中还没有 `DESIGN.md`，可先拉取预设：

```bash
~/.codex/skills/stitch-ui-design/scripts/fetch_design_md.sh stripe .
```

## 仓库结构

- `SKILL.md`：Skill 主流程与行为规则
- `agents/openai.yaml`：Skill 的 UI 元信息
- `scripts/fetch_design_md.sh`：拉取 DESIGN.md 预设
- `references/sites.md`：常用预设站点标识
- `INSTALL.md`：安装与排障文档

## License

MIT，详见 [LICENSE](./LICENSE)
