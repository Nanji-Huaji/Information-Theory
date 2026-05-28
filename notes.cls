\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}[2026/05/28 Notes and handout template class]

\LoadClass[11pt,a4paper]{ctexart}

\RequirePackage[margin=2.2cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{microtype}
\RequirePackage{enumitem}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multicol}

\RequirePackage{amsmath,amssymb,amsthm,mathtools,bm}
\RequirePackage{physics}
\RequirePackage{siunitx}

\RequirePackage[dvipsnames,svgnames,x11names]{xcolor}
\RequirePackage{hyperref}
\RequirePackage[most]{tcolorbox}
\RequirePackage{cleveref}

\hypersetup{
  colorlinks=true,
  linkcolor=MidnightBlue,
  urlcolor=RoyalBlue,
  citecolor=ForestGreen
}

\setstretch{1.18}
\setlength{\parindent}{2em}
\setlength{\parskip}{0.25em}
\setlist[itemize]{topsep=0.25em,itemsep=0.15em}
\setlist[enumerate]{topsep=0.25em,itemsep=0.15em}

\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\Var}{\operatorname{Var}}
\newcommand{\Cov}{\operatorname{Cov}}
\newcommand{\iid}{\overset{\mathrm{i.i.d.}}{\sim}}
\newcommand{\KL}{D_{\mathrm{KL}}}

\theoremstyle{definition}
\newtheorem{definition}{定义}[section]
\newtheorem{example}{例}[section]

\theoremstyle{plain}
\newtheorem{theorem}{定理}[section]
\newtheorem{lemma}{引理}[section]
\newtheorem{proposition}{命题}[section]
\newtheorem{corollary}{推论}[section]

\theoremstyle{remark}
\newtheorem{remark}{注}[section]

\tcbset{
  note base/.style={
    enhanced,
    breakable,
    sharp corners=south,
    arc=1.2mm,
    boxrule=0.6pt,
    left=1.1em,
    right=1.1em,
    top=0.75em,
    bottom=0.75em,
    before skip=0.9em,
    after skip=0.9em,
    fonttitle=\bfseries
  }
}

\newtcolorbox{keypoint}[1][]{
  note base,
  title={要点},
  colback=RoyalBlue!3,
  colframe=RoyalBlue!35!black,
  coltitle=black,
  colbacktitle=RoyalBlue!18,
  #1
}

\newtcolorbox{formulaBox}[1][]{
  note base,
  title={公式},
  colback=SeaGreen!4,
  colframe=SeaGreen!35!black,
  coltitle=black,
  colbacktitle=SeaGreen!18,
  #1
}

\newtcolorbox{hintBox}[1][]{
  note base,
  title={提示},
  colback=Goldenrod!10,
  colframe=Goldenrod!40!black,
  coltitle=black,
  colbacktitle=Goldenrod!22,
  #1
}

\newtcolorbox{warningBox}[1][]{
  note base,
  title={易错点},
  colback=Red!3,
  colframe=Red!35!black,
  coltitle=black,
  colbacktitle=Red!18,
  #1
}

\newtcolorbox{methodBox}[1][]{
  note base,
  title={方法},
  colback=Purple!3,
  colframe=Purple!35!black,
  coltitle=black,
  colbacktitle=Purple!18,
  #1
}
