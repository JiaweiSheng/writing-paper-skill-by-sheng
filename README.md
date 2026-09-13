# writing-paper-skill-by-sheng

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Agent Skills](https://img.shields.io/badge/Agent%20Skills-Cursor%20%7C%20Codex%20%7C%20Claude%20Code-0A7A3E.svg)](https://agentskills.io)

按参考论文中的问题-机制-证据论证习惯，起草或改写英文计算机科研论文。仓库与 Skill 名称均为 `writing-paper-skill-by-sheng`。给定任务、方法、证据或已有草稿后，默认按这条可追溯论证链写作：

```text
task and setting -> observed limitation -> causal mechanism -> design principle
-> named method components -> evidence that tests each claim
```

只学习结构、段落职责和论证节奏，不抄参考论文的句子、例子、数字或技术主张。不编造结果、基线、引用或实现细节；缺证据时使用明确占位符。

本 Skill 只负责写作与改写。审稿、文献检索、引用核验、投稿格式检查请使用对应的其他 Skill。

## 兼容性

本仓库遵循 [Agent Skills](https://agentskills.io) 开放格式。可执行核心为根目录 `SKILL.md`；中文对照见 [`SKILL.zh.md`](SKILL.zh.md)，供阅读，不参与 Agent 执行。各平台专有配置置于独立文件，以保持可移植部分不受平台字段影响。

| 平台 | 安装位置 | 额外文件 |
| --- | --- | --- |
| Cursor | `~/.cursor/skills/writing-paper-skill-by-sheng` | 无 |
| Codex | `~/.codex/skills/writing-paper-skill-by-sheng` | `agents/openai.yaml`、`.codex-plugin/` |
| Claude Code | `~/.claude/skills/writing-paper-skill-by-sheng` 或插件市场 | `agents/claude.yaml`、`.claude-plugin/` |

仓库名、Skill 名称与安装目录均为 `writing-paper-skill-by-sheng`，与 `SKILL.md` 中的 `name` 字段一致。

`SKILL.md` 只保留可移植字段：`name`、`description`、`license`、`compatibility`、`metadata`。Cursor 的 `disable-model-invocation`、Claude 的 `user-invocable`、Codex 的界面文案都不写入该文件。

## 安装

在本仓库的 skill 目录下执行：

```bash
./scripts/install.sh
```

脚本会把同一套 skill 安装到本机已存在的 Cursor、Codex、Claude Code 目录。安装完成后，请新开对话再使用。

只安装某一个平台：

```bash
./scripts/install.sh --cursor
./scripts/install.sh --codex
./scripts/install.sh --claude
```

### Cursor

```bash
rsync -a --delete ./ ~/.cursor/skills/writing-paper-skill-by-sheng/
```

安装完成后，请新开 Agent 对话。也可通过 `/writing-paper-skill-by-sheng` 手动调用，并在 **Customize -> Skills** 中确认其位于 **Agent Decides**。

### Codex

```bash
rsync -a --delete ./ ~/.codex/skills/writing-paper-skill-by-sheng/
```

Codex 读取 `SKILL.md` 以及 `agents/openai.yaml` 中的显示名称、简介与默认提示。

### Claude Code

```bash
rsync -a --delete ./ ~/.claude/skills/writing-paper-skill-by-sheng/
```

或通过插件市场安装：

```text
/plugin marketplace add <this-repo>
/plugin install writing-paper-skill-by-sheng
```

## 使用示例

```text
用 writing-paper-skill-by-sheng 按我的风格写引言

帮我润色这段 Abstract，不要改技术含义

根据这些实验结果写 Experiments，缺的数字标占位符

把这篇草稿改到 WWW 长文的节奏，但不要发明困难设定
```

## 写作原则

- 先建立任务、设定、缺口、根因、insight、证据，再决定措辞
- 参考论文只提供写法，不提供可抄内容
- 批评前人先承认有效，再指出机制缺陷和失效设定
- 主张强度不超过已有证据
- 会议格式以用户当前提供的约束为准，不把旧模板写成永恒规则

## 仓库结构

```text
.
├── SKILL.md                         # 可移植 Agent Skill 核心
├── SKILL.zh.md                      # SKILL.md 的中文对照（供人阅读）
├── style-and-discourse.md           # 用词、句式、篇章节奏
├── section-moves.md                 # 各节段落职责
├── revision-workflow.md             # 改写、压缩、按意见修改
├── evidence-and-consistency.md      # 主张-证据与全文一致
├── phrase-bank.md                   # 功能句式，论证成立后再查
├── examples.md                      # 弱稿与目标写法对照
├── sources.md                       # 风格源与优先级
├── agents/
│   ├── openai.yaml                  # Codex / OpenAI UI 元数据
│   └── claude.yaml                  # Claude Code 调用元数据
├── .claude-plugin/                  # Claude Code 插件与市场清单
├── .codex-plugin/                   # Codex 插件清单
├── .agents/plugins/                 # Agent Skills 市场清单
├── scripts/install.sh               # 本机多 Agent 安装
├── README.md
└── LICENSE
```

## 许可证

MIT。详见 [LICENSE](LICENSE)。
