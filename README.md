# LaTeX Templates Collection

一套可重用的 LaTeX 模板集合。

## 可用模板

- **academic** - 学术论文模板 [academic](academic/example.tex)
- **report** - 报告模板      [report](report/example.tex)
- **letter** - 信件模板      [letter](letter/example.tex)
- **beamer** - 演示文稿模板 [beamer](beamer/example.tex)

## 快速开始

### 方法1: 直接下载
```bash
git clone https://github.com/yourusername/latex-templates.git
```

### 方法2: 作为子模块
```bash
git submodule add https://github.com/yourusername/latex-templates.git templates
```

## 使用示例

## 使用示例

参见各模板目录下的 `example.tex` 文件。
```

## 4. 使用 GitHub 模板的方法

### 方法一：Git Submodule（推荐用于项目）
```bash
# 在你的项目中添加模板作为子模块
git submodule add https://github.com/yourusername/latex-templates.git templates

# 初始化子模块
git submodule update --init --recursive
```

项目结构：
```
my-paper/
├── main.tex
├── references.bib
└── templates/  # 子模块
    ├── academic/
    └── shared/
```

**使用方式**：
```latex
\documentclass{templates/academic/academic}

\title{我的学术论文}
\author{作者}

\begin{document}
\maketitle
% 文档内容
\end{document}
```

### 方法二：直接克隆
```bash
# 克隆整个模板库
git clone https://github.com/yourusername/latex-templates.git

# 或者只克隆特定模板（稀疏检出）
git clone --filter=blob:none --sparse https://github.com/yourusername/latex-templates
cd latex-templates
git sparse-checkout set academic
```

### 方法三：作为系统模板安装
```bash
# 克隆到本地 texmf 目录
git clone https://github.com/yourusername/latex-templates.git ~/texmf/tex/latex/mytemplates

# 刷新 LaTeX 数据库
texhash ~/texmf/
```

**使用方式**：
```latex
\documentclass{mytemplates/academic}
```

## 6. 实际使用示例

### 学术论文项目
```
research-paper/
├── .gitmodules
├── main.tex
├── chapters/
│   ├── introduction.tex
│   └── methodology.tex
├── data/
└── templates/  # 子模块指向你的 GitHub 仓库
    ├── academic.cls
    └── shared/
```

**.gitmodules**:
```ini
[submodule "templates"]
    path = templates
    url = https://github.com/yourusername/latex-templates.git
```

**main.tex**:
```latex
\documentclass{templates/academic}

\title{基于深度学习的图像识别研究}
\author{张三}
\date{\today}

\begin{document}

\maketitle

\input{chapters/introduction}
\input{chapters/methodology}

\bibliographystyle{plain}
\bibliography{references}

\end{document}
```
