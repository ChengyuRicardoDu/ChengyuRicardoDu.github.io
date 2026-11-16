# Chengyu Du 的个人主页

Jekyll（academicpages 模板）站点，GitHub Pages 直接从 `master` 构建并发布到
<https://chengyuricardodu.github.io>。没有 CI，推送到 `master` 即上线。

这个文件和 `_data/profile/` 一起充当跨会话的“记忆”：Claude 每次会话都从零开始，
关于主页的一切事实以仓库内容为准。

## 内容在哪里

全站只有一个页面 `_pages/about.md`：

- 开头两段自我介绍是直接写在 `_pages/about.md` 里的正文。
- 其余所有栏目由 `_data/profile/*.yml` 渲染，**改内容只改数据文件，不要改模板**。

| 栏目 | 数据文件 |
|---|---|
| Education | `_data/profile/education.yml` |
| Research Interests | `_data/profile/interests.yml` |
| Publications / Preprints | `_data/profile/publications.yml` |
| Grants | `_data/profile/grants.yml` |
| Conference Presentations | `_data/profile/presentations.yml` |
| Research Experience | `_data/profile/research.yml` |
| Teaching Experience | `_data/profile/teaching.yml` |
| Selected GitHub Projects | `_data/profile/projects.yml` |
| Honors & Awards | `_data/profile/awards.yml` |
| Service | `_data/profile/service.yml` |
| Skills | `_data/profile/skills.yml` |

侧边栏（头像、简介、邮箱、社交链接）和 SEO 描述在 `_config.yml`。

## 更新规则

- 用户口头给出的更新（“新增一篇论文…”、“fellowship 拿到了”）直接改对应的数据文件。
- 只写用户确认过或 CV 里有的事实；不确定的状态（是否录用、是否获批）先问，不要推测。
- 各列表按时间倒序，新条目放最前。沿用现有措辞风格：英文、日期写作 `Aug. 2024`。
- 字段值是 Markdown。YAML 里用单引号包裹，字面单引号写成 `''`，星号脚注写成 `\*`。
- 研究方向有明显变化时，同步检查 `_pages/about.md` 的自我介绍和 `_config.yml` 里的
  `description` / `author.bio`。

## 从 CV 同步

用户的最新 CV 是主页内容的权威来源。同步步骤：

1. 取得最新 CV（见下方“CV 位置”）。
2. 逐栏与 `_data/profile/*.yml` 对比，列出新增、变更、删除的条目。
3. CV 里没有但主页上有的条目不要直接删，先问用户。
4. 修改数据文件，本地构建验证，然后提交。

**CV 位置**：尚未确定。2026-11 在用户的 Google Drive 中只找到 2023 年的旧简历
（`Resume-Chengyu Du-4.docx`），没有当前版本。用户告知位置后把它记在这里。

## 验证与发布

```bash
bundle install
scripts/local-build.sh /tmp/site-check
```

`scripts/local-build.sh` 在临时副本里构建（沙箱里 GitHub API 被拦截，直接
`jekyll build` 会失败），然后检查输出目录里的 `index.html`。

改动提交到会话指定的分支；合并到 `master` 后才会上线，是否合并由用户决定。

## 待用户确认的事项

截至 2026-11，下列内容可能已过时：

- PhRMA Fellowship（2026-04 提交）仍标注 “under review”。
- “Smoothed Dimension Reduction…” 仍标注 “Manuscript in preparation”。
- UMass 助教时间写的是 “2025 - 2026”，课程只列到 Fall 2026。
- SPHHS Dean's PhD Fellowship 写的是 “2024 - 2026”。

确认后更新数据文件并从本列表删除对应条目。
