---
mainfont: "Noto Serif CJK KR"
monofont: "Cascadia Code"
sansfont: "NanumSquareRoundB"
fontsize: "10pt"
title: "Template"
author: [Tae Geun Kim]
date: 2021-01-06
subject: "Markdown"
keywords: [Markdown, Example]
subtitle: "Should modify this"
titlepage: true
toc-own-page: true
header-includes:
    - \usepackage{setspace}
    - \doublespacing
    - \usepackage[b]{esvect}
    - \usepackage{multicol}
    - \newcommand{\hideFromPandoc}[1]{#1}
    - \hideFromPandoc{
        \let\Begin\begin
        \let\End\end
      }
    - \setlength{\columnseprule}{1pt}
    - \linespread{1.5}
...

\newpage\null\thispagestyle{empty}\newpage

\tableofcontents

\newpage

# Start

