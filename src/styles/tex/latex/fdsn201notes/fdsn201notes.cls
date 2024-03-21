%! Class = fdsn201notes
%! Author = Len Washington III
%! Date = 1/8/24

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fdsn201notes}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=fdsnnotes,
	prefix=fdsnnotes@
}

\DeclareStringOption{title}

\ProcessKeyvalOptions*

\RequirePackage[title={\fdsnnotes@title\ Notes}]{fdsn201}
\RequirePackage{subcaption}
\RequirePackage{multirow}
\RequirePackage{textcomp}


\renewcommand{\maketitle}[1]{\setcounter{chapter}{#1}\begin{center}\LARGE\textbf{\fdsnnotes@title}\end{center}}

\newcommand{\definition}[2]{\textcolor{red}{\textbf{#1}} -- #2}

\let\oldemph\emph
\renewcommand{\emph}[1]{\textcolor{red}{#1}}

\definecolor{rowlightgreen}{HTML}{f3f7de}
\definecolor{rowmedgreen}{HTML}{e5eeb7}
\definecolor{rowdarkgreen}{HTML}{c1d947}
