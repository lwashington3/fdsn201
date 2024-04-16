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
\RequirePackage{enumitem}

\renewcommand{\maketitle}[2]{\setcounter{chapter}{#1}\begin{center}\LARGE\textbf{\fdsnnotes@title}\end{center}}

\newcommand{\definition}[2]{\textcolor{fdsnred}{\textbf{#1}} -- #2}

\let\oldemph\emph
\renewcommand{\emph}[1]{\textcolor{fdsnred}{#1}}

\definecolor{rowlightgreen}{HTML}{f3f7de}
\definecolor{rowmedgreen}{HTML}{e5eeb7}
\definecolor{rowdarkgreen}{HTML}{C3D947}
\definecolor{activityblue}{HTML}{0071bb}
\newcommand{\activitymark}{\textcolor{activityblue}{$\blacksquare$}}

\setlist[description]{%
	font={\color{fdsnred}}
}

\newcommand{\nutrients}[2]{%
	\begin{table}[H]
		\centering
		\begin{threeparttable}
			\caption{#1}
			\label{#2}
			\rowcolors{2}{rowmedgreen}{rowlightgreen}
			\begin{tabular}{p{0.18\textwidth} p{0.4\textwidth} p{0.4\textwidth}}
				\rowcolor{rowdarkgreen}\textbf{Nutrient} & \textbf{Functions} & \textbf{Suggested Intake}\\
				Energy & Supports exercise, activities of daily living, and basic body functions & Depends on body size and the type, intensity, and duration of activity

				For many female athletes: 1,800 to 3,500 kcal/day

				For many male athletes: 2,500 to 7,500 kcal/day\\
				Carbohydrate & Provides energy, maintains adequate muscle glycogen and blood glucose; high complex carbohydrate foods provide vitamins and minerals & 45--65\% of total energy intake

				Depending on sport and gender, should consume 6--10 g of carbohydrate per kg body weight per day\\
				Fat & Provides energy, fat-soluble vitamins, and essential fatty acids; supports production of hormones and transport of nutrients & 20--35\% of total energy intake\\
				Protein & Helps build and maintain muscle; provides building material for glucose; energy source during endurance exercise; aids recovery from exercise & 10--35\% of total energy intake

				1.2-2.0 g per kg body weight\\
				Water & Maintains temperature regulation (adequate cooling); maintains blood volume and blood pressure; supports all cell functions & Consume fluid before, during, and after exercise

				Consume enough to maintain body weight

				Consume at least 8 cups (64 fl. oz) of water daily to maintain regular health and activity

				Athletes may need up to 338 liters (170 fl. oz) every day; more is required if exercising in a hot environment\\
				B-vitamins & Critical for energy production from carbohydrate, fat, and protein & May need slightly more (one to two times the RDA) for thiamin, riboflavin, and vitamin $\mbox{B}_{6}$\\
				Calcium & Builds and maintains bone mass; assists with nervous system function, muscle contraction, hormone function, and transport of nutrients across cell membrane & Meet the current RDA:

				14--18 years: 1,300 mg/day

				19--50 years: 1,000 mg/day

				51--70 years: 1,000 mg/day (men): 1,200 mg/day (women)

				71 and older: 1,200 mg/day\\
				Iron & Primarily responsible for the transport of oxygen in blood to cells; assists with energy production & Consume at least the RDA: Males:

				14--18 years: 11 mg/day 19 and older: 8 mg/day Females:

				14--18 years: 15 mg/day 19--50 years: 18 mg/day 51 and older: 8 mg/day\\
				\rowcolor{rowdarkgreen} & & \\
			\end{tabular}
			\begin{tablenotes}
				\small
				\item
			\end{tablenotes}
		\end{threeparttable}
	\end{table}
}

\newcommand{\indepth}[1]{\section{In Depth: #1}}