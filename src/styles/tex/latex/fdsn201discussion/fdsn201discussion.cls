%! Class = fdsn201discussion
%! Author = Len Washington III
%! Date = 1/8/24

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fdsn201discussion}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=fdsndiscussion,
	prefix=fdsndiscussion@
}

\DeclareStringOption{week}
\DeclareStringOption{points}

\ProcessKeyvalOptions*

\RequirePackage[title={FDSN 201 Discussion Board Week \fdsndiscussion@week}]{fdsn201}
\setcounter{section}{\fdsndiscussion@week}
\addtocounter{section}{-1}
\addbibresource{sources.bib}

\renewcommand{\maketitle}{\begin{center}\textbf{\fdsn@title~(\fdsndiscussion@points~points)}\end{center}}

\setlength{\parindent}{0pt}

\RequirePackage{enumitem}
\newlist{problems}{enumerate}{2}
\setlist[problems, 1]
{label=\textbf{\arabic{problemsi}.},
	leftmargin=15pt,
}

\setlist[problems, 2]
{label=\textbf{(\alph{problemsii})},
	leftmargin=30pt,}

\RequirePackage{titlesec}

\titleformat{\section}
{\Large\bfseries}
{Week \arabic{section}: }
{0em}
{}