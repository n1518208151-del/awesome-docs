# 文档共创指南

本文档是**开放共创平台**，欢迎社区开发者、板卡厂家、生态伙伴共同维护。

## 贡献方式

### 1. 提交 Issue 反馈

发现内容错误、链接失效或有补充建议，请到
[awesome-docs Issues](https://github.com/AXERA-TECH/awesome-docs/issues) 提交。

### 2. 提交 Pull Request

1. Fork 本仓库到你的账号。
2. 基于 `dev` 分支创建你的特性分支（如 `feat/m5stack-llm8850`）。
3. 修改对应章节的 Markdown 文件。
4. 本地构建预览确认无误（见下文）。
5. 提交 PR 到本仓库的 **`dev`** 分支，描述你的改动。

```{note}
请勿直接提交到 `main` 分支。`main` 为稳定上线版本，所有改动先经 `dev` 集成验证。
```

## 目录与命名约定

- 每个章节为一个目录（`01_overview` ~ `08_community`），目录内 `index.md` 为章节入口（含 `toctree`）。
- 新增页面统一使用小写下划线命名（如 `quick_start.md`）。
- 未完成内容统一用 `> TODO：...` 标注，便于检索待补充项。

## 本地构建预览

```bash
# 安装依赖
pip install -r requirements.txt

# 构建
make clean && make html

# 预览：用浏览器打开 build/html/index.html
# 或启动本地服务器
python -m http.server 8000 --directory build/html
```

## 板卡厂家分权维护

[生态硬件](../03_hardware/index.md) 章节由各板卡厂家维护自家页面，要求：

- 保证**无原厂介入支持下，板卡用户能独立完成性能评估**；
- 内容包含：公司简介、产品亮点与规格、适用场景、资源/购买链接。

## 内容补充原则

> 90% 的内容已分散在 GitHub、Huggingface、知乎文章等渠道。
> 贡献时**先补充链接，再逐步扩充必要的正文内容**，降低共创门槛。
