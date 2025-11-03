\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{academic}[2024/01/01 Academic Template]

% 基于 article
\LoadClass[12pt,a4paper]{article}

% 共享包
\RequirePackage{shared/packages}

% 学术论文特定设置
\geometry{left=3cm,right=2.5cm,top=2.5cm,bottom=2.5cm}

% 标题格式
\renewcommand{\maketitle}{
    \begin{center}
        \LARGE\bfseries \@title
        \vspace{0.5cm}
        
        \large \@author
        \vspace{0.3cm}
        
        \normalsize \@date
        \vspace{1cm}
    \end{center}
}

% 学术环境
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{definition}{Definition}