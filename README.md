# awesome-docs 使用手册

[**在线文档预览（latest）**](https://awesome-npu-docs.readthedocs.io/zh-cn/latest/index.html#)

[**DEV 在线预览**](https://axera-tech.github.io/awesome-docs/)（由 `dev` 分支自动部署到 GitHub Pages）

## 1. 项目背景

**awesome-docs** 用于整理 AXERA 产品相关的软件、硬件、工具链和示例资料，方便社区开发者和商用客户查阅与评估。

当前文档由原有 AX650 系列 NPU 使用说明扩展而来，后续覆盖：

- [终端计算产品线](https://www.axera-tech.com/zh-hans/product/vision)
- [边缘计算产品线](https://www.axera-tech.com/zh-hans/product/edge-aI-inference?q=zh-hans/product/edge-aI-inference)

## 2. 本地编译指南

### 2.1 git clone

```bash
git clone https://github.com/AXERA-TECH/awesome-docs.git
cd awesome-docs
```

### 2.2 编译中文文档

安装依赖：

```bash
pip install -r requirements.txt
```

在项目根目录下执行：

```bash
make clean
make html
```

编译后，使用浏览器打开 `build/html/index.html`。

### 2.3 编译英文文档

英文文档通过 Sphinx gettext 工作流生成：

```bash
# 提取可翻译文本并更新英文 .po 文件
make intl

# 翻译 locale/en/LC_MESSAGES/*.po 中的 msgstr

# 编译英文文档
make html-en
```

编译后，使用浏览器打开 `build/html-en/index.html`。

### 2.4 本地预览

```bash
make serve
```

默认访问地址：`http://localhost:8200/`。

## 3. 参考设计

这个项目基于 Sphinx，更多信息见 https://www.sphinx-doc.org/en/master/。

## 4. 在线发布

基于 [Read the Docs](https://readthedocs.org/) 平台发布在线 Web 服务。
