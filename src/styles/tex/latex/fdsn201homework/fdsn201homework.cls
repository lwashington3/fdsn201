%! Class = fdsn201homework
%! Author = Len Washington III
%! Date = 1/8/24

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fdsn201homework}[2023/12/26 A styling package for the class: ]

\LoadClass[12pt]{report}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
	family=fdsnhomework,
	prefix=fdsnhomework@
}

\DeclareStringOption{title}
\DeclareStringOption{points}

\ProcessKeyvalOptions*

\RequirePackage[title=\fdsnhomework@title]{fdsn201}
\renewcommand{\maketitle}{\begin{center}\textbf{\fdsnhomework@title~(\fdsnhomework@points~points)}\end{center}}

\RequirePackage{enumitem}
\newlist{problems}{enumerate}{2}
\setlist[problems, 1]
{label=\textbf{\arabic{problemsi}.},
	leftmargin=15pt,
}

\setlist[problems, 2]
{label=\textbf{(\alph{problemsii})},
	leftmargin=30pt,}