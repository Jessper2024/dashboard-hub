# 学习工厂 Skill 全量地图

> 更新：2026-10-14 · 融合已全部完成。这是一份**最终态**地图，用于快速查「哪个能力归哪个 Skill」。

---

## 一、全景（6 总入口 + 4 从属 + 独立线 + 无关）

```
学习工厂（21 个 skill）
│
├─ 总入口（按场景一句话就知道该找谁）
│   ├─ notion-sync-common     「推 Notion」→ 建页/回读核验/台账（唯一真相源）
│   ├─ subtitle-cleanup       「精校」→ 字幕/转录稿/视频文稿二校（唯一精校入口）
│   ├─ epub-factory           「出 EPUB」→ 平台文章 / Notion 导出 / HTML 电子书 三种入料
│   ├─ anki-batch-cards       「制卡」→ 图书/个人思考/HTML 章节/通用精读 四输入源
│   ├─ video-subtitle-fetcher 「抓视频」→ B站/YouTube/本地课程 字幕+弹幕
│   └─ dashboard-hub          「看板」→ 5 张子看板聚合
│
├─ 独立业务线（各管一摊，不融合）
│   ├─ edge-batch-capture     成人作品集 EPUB
│   ├─ photobook-epub         写真集 EPUB（纯图片）
│   ├─ epub-to-xhtml          EPUB 拆解（反向：拆成章节 xhtml）
│   ├─ video-sync-notion      视频线第④段 同步（调 notion-sync-common）
│   ├─ video-to-notion-dashboard  视频线看板（状态真相源）
│   └─ delivery-standard      交付规范（HTML 屏显臻宋 / Notion 落库规则）
│
├─ 从属模块（逻辑已收编进总入口，物理保留因有实体资产/独立脚本）
│   ├─ anki-learning-cards    卡片质量规范（字体资产 + 2.6 万字规范）
│   ├─ html-doc-cards         HTML 章节制卡（脚本已移入 dashboard-hub）
│   ├─ notion-export-to-epub  Notion 导出 → EPUB 脚本
│   └─ html-book-to-epub      HTML 电子书 → EPUB 脚本
│
└─ 无关（不属于学习工厂）
    ├─ qqmusic / tianji-business-search / weread-skills / mac-display-info / workbuddy-task-move
```

---

## 二、每个 Skill 一句话定位

### 总入口（6）

| Skill | 一句话 |
|---|---|
| **notion-sync-common** | 内容建成 Notion 页的统一入口（建页+回读核验+台账），数据库 UUID 唯一真相源 |
| **subtitle-cleanup** | 字幕/转录稿/视频文稿的整理精校（六模块流水线：判领域→检索→整理→挂标→质检→建页） |
| **epub-factory** | 文章/文档合订成 EPUB 的工厂（公众号/知乎/小红书/微博/Twitter + Notion 导出 + HTML 电子书） |
| **anki-batch-cards** | 制卡总入口（制卡→转化→导入），收编图书六层级、个人思考、HTML 章节、通用精读 |
| **video-subtitle-fetcher** | 视频字幕+弹幕批量抓取、合并成汇总 TXT |
| **dashboard-hub** | 5 个项目看板聚合到一个多 tab HTML |

### 独立业务线（6）

| Skill | 一句话 |
|---|---|
| **edge-batch-capture** | 成人作品集：CSV → 抓详情 → xhtml → epub（单人/双人/无码大合集） |
| **photobook-epub** | 图片文件夹 → 写真集 EPUB（每图一页、零压缩） |
| **epub-to-xhtml** | EPUB 拆成编号分章 xhtml（拆解，与 epub-factory 方向相反）+ Notion 章节分发 |
| **video-sync-notion** | 视频线第④段：精校稿建 Notion 页 + 回执落账（调 notion-sync-common） |
| **video-to-notion-dashboard** | 视频转文档全链路看板（状态机：缺稿→待加标点→待精校→待同步→已同步） |
| **delivery-standard** | 跨任务交付规范：HTML 强制屏显臻宋、Notion 落「中转文档库」 |

### 从属模块（4，逻辑已并入总入口）

| Skill | 从属 | 一句话 |
|---|---|---|
| **anki-learning-cards** | anki-batch-cards | 卡片质量规范层（克制原则、问题设计、HTML 学习页） |
| **html-doc-cards** | anki-batch-cards / dashboard-hub | HTML 章节制卡说明（脚本已移入 dashboard-hub） |
| **notion-export-to-epub** | epub-factory | Notion 导出 zip → EPUB 的独立脚本 |
| **html-book-to-epub** | epub-factory | 单页 HTML 电子书 → EPUB 的独立脚本 |

### 无关（5，不属学习工厂）

| Skill | 用途 |
|---|---|
| qqmusic | QQ 音乐 |
| tianji-business-search | 天机商查（企业信息） |
| weread-skills | 微信读书 |
| mac-display-info | 显示器信息查询 |
| workbuddy-task-move | 任务迁移（空间） |

---

## 三、融合历史（简记，供回溯）

2026-10-14 完成 5 处融合 + 物理删除 4 个纯文档目录，25 → 21 个 skill：

1. `subtitle-cleanup` ← `video-proofread`（视频线精校并入通用精校）
2. 抽出 `notion-sync-common`（统一 Notion 落库，顺手修掉 8 处旧 UUID）
3. 制卡 5→1：`book-card-authoring` + `personal-thinking` 物理并入 `anki-batch-cards`；`anki-learning-cards` + `html-doc-cards` 逻辑收编
4. →EPUB 3→1：`notion-export-to-epub` + `html-book-to-epub` 逻辑收编进 `epub-factory`
5. 视频抓取 2→1：`video-fetch` 并入 `video-subtitle-fetcher`
6. 物理删除 4 个纯文档目录（book-card-authoring / personal-thinking / video-fetch / video-proofread）

---

## 四、怎么用（一句话）

**按场景说需求，助手自动路由到对应 Skill，不用记窗口**：

| 你说 | 走哪个 |
|---|---|
| 精校这篇 / 整理字幕 | subtitle-cleanup |
| 出个 epub / 文章做书 | epub-factory |
| 制卡 / 做 Anki 卡片 | anki-batch-cards |
| 推 Notion | notion-sync-common |
| 抓这个视频 | video-subtitle-fetcher |
| 看板 / 刷新看板 | dashboard-hub |
| 拆这本书 | epub-to-xhtml |
