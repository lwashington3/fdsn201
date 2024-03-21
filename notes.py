def main(filename:str, lecture:int):
	from datetime import date
	from re import sub, I, Match

	with open(filename, 'r') as f:
		lines = f.read()

	with open(f"src/notes/chapter{lecture}.tex", 'w') as f:
		def fig(match:Match):
			return f"""\n\n\\begin{{figure}}[H]
	\\centering
	\\includegraphics[width=\\textwidth]{{{lecture}_{match.group(1).lower().replace(' ', '_')}}}
	\\caption{{{match.group(1)}}}
	\\label{{fig:{match.group(1).lower().replace(' ', '-')}}}
\\end{{figure}}\n\n"""

		lines = sub(r'\d+\n', '', lines)
		lines = sub(r'\n© 2018 Pearson Education, Inc\.', '', lines)
		lines = sub(r'\n\n([\w ]+)\n\n', fig, lines)
		lines = sub(r'\n\n([\w ]+)\n\b', lambda match: f"\n\n\\section{{{match.group(1)}}}\\label{{sec:{match.group(1).lower().replace(' ', '-')}}}\n", lines)
		print(lines)
		lines = sub(r'([%&])', "\\\1", lines)
		lines = sub(r'\x0b', "", lines)
		lines = sub(r'\\', "\\%", lines)
		lines = sub(r'\\–', "--", lines)

		f.write(f"""%! Author = Len Washington III
%! Date = {date.today():%-m/%d/%Y}

% Preamble
\\documentclass[title={{Chapter {lecture}}}]{{fdsn201notes}}

% Packages

% Document
\\begin{{document}}%
%
\\maketitle{{{lecture}}}%
%""")
		f.write(lines)
		f.write("\n\n\\end{document}\n")


if __name__ == "__main__":
	main("/home/valence/Downloads/Homework Assignments/11 - Thompson_5e_Lecture_Ch11.txt", 11)