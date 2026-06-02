# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
# 翻译目标语言（英文）。中文为源语言，无需翻译文件。
LANGS         ?= en

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile clean html gettext intl serve livehtml

clean:
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

html:
	@echo "sphinx build (zh_CN)..."
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# 提取所有可翻译字符串到 build/gettext/*.pot
gettext:
	@$(SPHINXBUILD) -M gettext "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# 用 .pot 更新各语言 .po 文件（locale/<lang>/LC_MESSAGES/*.po）
intl: gettext
	@sphinx-intl update -p "$(BUILDDIR)/gettext" -l $(LANGS)

# 构建英文 HTML（需先翻译 locale/en 下的 .po）
html-en:
	@echo "sphinx build (en)..."
	@$(SPHINXBUILD) -b html -D language=en "$(SOURCEDIR)" "$(BUILDDIR)/html-en" $(SPHINXOPTS) $(O)

# 本地预览：构建后启动静态服务器
serve: html
	@echo "Serving at http://0.0.0.0:8000 (Ctrl+C to stop)"
	@python -m http.server 8000 --directory "$(BUILDDIR)/html"
