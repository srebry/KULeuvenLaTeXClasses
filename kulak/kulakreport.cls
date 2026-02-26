% Corporate article-template for KU Leuven en Kulak
% Stijn Rebry - 2012-2026
% Brent De Blaere - mei 2023 - huisstijl campus Brugge
% Andries Vansweevelt - 2018 - nieuwe huisstijl KU Leuven
% Tips en hints voor een beter resultaat altijd welkom
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kulakreport}[2023/07/05 Report class for KU Leuven]
\DeclareOption{kulak}{
   \providecommand{\Logo}{kulakLogo}
   }
\DeclareOption{kul}{
   \renewcommand{\Logo}{kuleuvenLogo}
   }
\DeclareOption{kuleuven-brugge}{
   \renewcommand{\Logo}{kuleuvenBruggeLogo}
   } 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{kulak} %Standaardopties
\ProcessOptions\relax
\LoadClass{report}

\RequirePackage[a4paper]{geometry}
\RequirePackage{hyperref}
\RequirePackage{titling}
\RequirePackage{multicol}
\RequirePackage{graphicx,xcolor}
\RequirePackage{KULkleuren}

\RequirePackage{tikz}
	\usetikzlibrary{arrows} 
	\usetikzlibrary{decorations.pathmorphing}
	\usetikzlibrary{backgrounds}
	\usetikzlibrary{fit}
%	\usetikzlibrary{shows}
	\usetikzlibrary{positioning}
\RequirePackage{tabularx}
	\newcolumntype{R}{>{\raggedleft}X}
\makeatletter
\newcommand\faculty[1]{\renewcommand\@faculty{#1}}
\newcommand\@faculty{}
\newcommand{\thefaculty}{\@faculty{}}
\newcommand\group[1]{\renewcommand\@group{#1}}
\newcommand\@group{}
\newcommand{\thegroup}{\@group{}}
\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
\newcommand\@subtitle{}
\newcommand{\thesubtitle}{\@subtitle{}}
\newcommand\institute[1]{\renewcommand\@institute{#1}}
\newcommand\@institute{}
\newcommand{\theinstitute}{\@institute{}}
\newcommand\address[1]{\renewcommand\@address{#1}}
\newcommand\@address{}
\newcommand{\theaddress}{\@address{}}
\newcommand\emailaddress[1]{\renewcommand\@emailaddress{#1}}
\newcommand\@emailaddress{}
\newcommand{\theemailaddress}{\@emailaddress{}}
\makeatother
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead{}
\fancyfoot[CE,CO]{}
\fancyfoot[RO]{\footnotesize{\rightmark~$|$~\thepage}}
\fancyfoot[LE]{\footnotesize{\thepage~$|$~\leftmark}}
\renewcommand{\titlepage}{
\begin{tikzpicture}[remember picture,overlay]
     \node at (current page.south west)
     {
     \begin{tikzpicture}[remember picture, overlay,inner sep=0mm]
         \fill[KULijsblauw] (1.5,27.1) rectangle (19.5,25.3); % balk onderaan voorblad
         \fill[KULijsblauw] (1.5, 2.5) rectangle (19.5, 2.7); % balk bovenaan voorblad
         \node[anchor=south west] at ( 2.0,26.0) {\includegraphics[height=1.8cm]{\Logo}}; % logo linksboven
         \node[anchor=east]       at (19.2,26.2) {
         \begin{tabularx}{.99\textwidth}{@{}>{\sc\color{KULcorporate}}R@{}}
			\bf\thefaculty % Tekst in balk bovenaan
         \end{tabularx}
         };
         \node[anchor=north east] at (19.2,24.6) {
         \begin{tabularx}{.99\textwidth}{@{}R@{}}
			\thegroup % tekst onder balk bovenaan
         \end{tabularx}
         };
         \node[anchor=south west] at ( 2.6,18.5){
            \begin{tabular}{@{}>{\Huge\bf\color{KULcorporate}}p{.99\textwidth}@{}}
			\thetitle % titel blauw
            \end{tabular}
         };
         \node[anchor=north west] at ( 2.6,17.6){
            \begin{tabular}{@{}>{\LARGE\bf}p{.99\textwidth}@{}}
			\thesubtitle % ondertitel zwart
            \end{tabular}
            };
         \node (datum) [anchor=south east] at (19.2, 3.5){
         \begin{tabularx}{.99\textwidth}{@{}>{\large}R@{}}
			\thedate % datum rechtsonder
         \end{tabularx}
         };
         \node[anchor=south east, at=(    datum.north east),yshift=1.5cm] (instituut) {
         \begin{tabularx}{.99\textwidth}{@{}>{\large}R@{}}
			\theinstitute % subtekst auteursnaam
         \end{tabularx}
         };
         \node[anchor=south east, at=(instituut.north east),yshift=0.5cm] {
         \begin{tabularx}{.99\textwidth}{@{}R@{}}
         \Large\bf\theauthor
         \end{tabularx}
         };
      \end{tikzpicture}
      %\clearpage
      };
\end{tikzpicture}
\thispagestyle{empty}
\clearpage
%}
%\newcommand{\backcover}{
\AtEndDocument{
\clearpage%
  \ifodd\value{page}\mbox{}\thispagestyle{empty}\clearpage\fi\clearpage
\thispagestyle{empty}
\begin{tikzpicture}[remember picture,overlay]
     \node at (current page.south west)
     {
     \begin{tikzpicture}[remember picture, overlay,inner sep=0mm]
         \fill[KULijsblauw] ( 1.5, 2.5) rectangle (19.5,4.3);
         \fill[KULblauw] (13.5,27.6) rectangle (18.8,27.8);
         \fill[KULblauw] (18.6,27.8) rectangle (18.8,26.0);
         \node[anchor=south]      at (17.8,26.0) {\includegraphics[height=1.5cm]{kuleuvenSedes}};
         \node[anchor=north east] at (17.0,27.5) {\scalebox{.75}{\begin{tabular}{r}\theaddress\end{tabular}}};
      \end{tikzpicture}
      };
\end{tikzpicture}}
}