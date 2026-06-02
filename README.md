# AXERA 产品文档中心 (awesome-docs)

[**在线文档预览**](https://awesome-npu-docs.readthedocs.io/zh-cn/latest/index.html)

> 面向**社区开发者**与**潜在商用客户**的开放共创文档平台，覆盖
> [终端计算](https://www.axera-tech.com/zh-hans/product/vision)、
> [边缘计算](https://www.axera-tech.com/zh-hans/product/edge-aI-inference) 等全产品线。

## 1. 项目背景

**awesome-docs** 是 AXERA 生态建设的重要组成模块，目标是：

- 通过稳定、可靠的渠道，帮助开发者与客户掌握产品规格与能力边界；
- 提高软硬件资料的**易获取性**；
- 提供一个开放共创的平台，由原厂、社区与板卡厂家共同维护。

## 2. 目录结构

```text
source/
├── index.rst              # 主入口（8 大章节 toctree）
├── conf.py                # Sphinx 配置（含 i18n / mermaid）
├── 01_overview/           # 概览与快速入门
├── 02_benchmark/          # 性能与基准测试
├── 03_hardware/           # 生态硬件（按厂商分权维护）
├── 04_dev_environment/    # 开发环境与工具链
├── 05_algorithm/          # 算法与中间件
├── 06_solutions/          # 行业解决方案
├── 07_thirdparty/         # 第三方应用与生态合作
└── 08_community/          # 社区与支持
```

## 3. 本地编译指南

```bash
git clone https://github.com/AXERA-TECH/awesome-docs.git
cd awesome-docs

# 安装依赖
pip install -r requirements.txt

# 构建中文文档
make clean && make html

# 本地预览（二选一）
#   1) 直接用浏览器打开 build/html/index.html
#   2) 启动本地服务器后访问 http://localhost:8000
make serve
```

## 4. 中英文双语 (i18n)

中文为源语言，英文通过 Sphinx gettext 工作流翻译：

```bash
# 1. 提取可翻译文本并更新英文 .po（生成到 locale/en/LC_MESSAGES/）
make intl

# 2. 翻译 locale/en/LC_MESSAGES/*.po 中的 msgstr

# 3. 构建英文文档（输出到 build/html-en/）
make html-en
```

线上由 Read the Docs **翻译项目**机制自动区分中英文（详见 `.readthedocs.yaml`）。

## 5. 参与共创

请阅读 [文档共创指南](source/08_community/contributing.md)。核心规则：

- 所有 PR 提交到 **`dev`** 分支，`main` 保持稳定上线版本；
- 生态硬件章节由各板卡厂家分权维护；
- 未完成内容统一用 `> TODO：...` 标注。

## 6. 技术栈

基于 [Sphinx](https://www.sphinx-doc.org/) + [MyST-Parser](https://myst-parser.readthedocs.io/)（Markdown）+
[sphinx-book-theme](https://sphinx-book-theme.readthedocs.io/)，由
[Read the Docs](https://readthedocs.org/) 托管在线服务。
