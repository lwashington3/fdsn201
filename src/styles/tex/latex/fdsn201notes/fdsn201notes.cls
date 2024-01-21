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

\renewcommand{\maketitle}{\begin{center}\LARGE\textbf{\fdsnnotes@title}\end{center}}

\newcommand{\definition}[2]{\textcolor{red}{\textbf{#1}} -- #2}

\definecolor{rowlightgreen}{HTML}{ffffef}
\definecolor{rowmedgreen}{HTML}{faffbf}
\definecolor{rowdarkgreen}{HTML}{d3df37}
