% Corporate article-template for KU Leuven Kulak & Brugge
%
%     * Stijn Rebry - 2012-2025
%     * Vincent Van Schependom - 2025 - Faculty of Engineering Science and improvements
%     * Brent De Blaere - 2023 - huisstijl campus Brugge
%     * Andries Vansweevelt - 2018 - nieuwe huisstijl KU Leuven
%
% Tips en hints voor een beter resultaat altijd welkom via Stijn.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kulakarticle}[2023/07/05 Article class for KU Leuven]

%%%%%%%%
% Class options

\DeclareOption{kulak}{
   \providecommand{\Logo}{kulakLogo}
   \providecommand{\LogoHeight}{1.5cm}
   \providecommand{\InstanceName}{KU Leuven Kulak Campus Kortrijk}
   }
\DeclareOption{kul}{
   \renewcommand{\Logo}{kuleuvenLogo}
   \renewcommand{\LogoHeight}{1.5cm}
   \renewcommand{\InstanceName}{KU Leuven}
   }
\DeclareOption{kuleuven-brugge}{
    \renewcommand{\Logo}{kuleuvenBruggeLogo}
    \renewcommand{\LogoHeight}{1.5cm}
    \renewcommand{\InstanceName}{KU Leuven Campus Brugge}
    }   
\DeclareOption{ingenieurswetenschappen}{
    \renewcommand{\Logo}{irLogo}
    \renewcommand{\LogoHeight}{2.5cm}
    \renewcommand{\InstanceName}{KU Leuven Faculty of Engineering Science}
    }   
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ExecuteOptions{kulak} % Standaardopties
\ProcessOptions\relax
\LoadClass{article}

%%%%%%%%
% Page layout

\RequirePackage[a4paper, left=3cm, width=16cm, top=1cm, headheight=2cm, textheight=23.5cm, footskip=40pt, includehead]{geometry}

%%%%%%%%
% Packages

%\RequirePackage{arev}
%\renewcommand*\familydefault{\sfdefault} %% Only if the base font of the document is to be sans serif
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}
\RequirePackage{titling}
\RequirePackage{etoolbox}
\RequirePackage{multicol}
\RequirePackage{graphicx,xcolor}
   \definecolor{kulgroen}{rgb}{0.1137,0.5529,0.6902} %Oude kleur
   \definecolor{kullichtblauw}{RGB}{106,194,238}
   \definecolor{grijs}{rgb}{0.25,0.25,0.25}
   \definecolor{KULblauw1}{RGB}{29,141,176} %Hoofdblauw nieuwe huisstijl
   \definecolor{KULblauw2}{RGB}{220,231,240} %Secundair blauw: heel lichtblauw
   \definecolor{KULblauw3a}{RGB}{82,189,236} %Tertiair blauw (accent): licht
   \definecolor{KULblauw3b}{RGB}{30,110,135} %Tertiair blauw (accent): donker
   \definecolor{KULblauw3c}{RGB}{12,73,92} %Tertiair blauw (accent): donkerst
\RequirePackage{lastpage}
\RequirePackage{tikz}
   \usetikzlibrary{arrows} 
   \usetikzlibrary{decorations.pathmorphing}
   \usetikzlibrary{backgrounds}
   \usetikzlibrary{fit}
   \usetikzlibrary{shadows}
   \usetikzlibrary{positioning}

\makeatletter

%%%%%%%%
% Optional: department name, subtitle.

\newcommand\department[1]{\renewcommand\@department{#1}}
\newcommand\@department{}
\newcommand{\thedepartment}{\@department}

\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
\newcommand\@subtitle{}
\newcommand{\thesubtitle}{\@subtitle}

%%%%%%%%
% Compulsory: address (details on front page).

\newcommand\address[1]{\renewcommand\@address{#1}}
\newcommand\@address{}
\newcommand{\theaddress}{\@address{}}

%%%%%%%%
% Header and footer settings

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%%%%%%%%
% Header

\lhead{

}
\chead{}
\rhead{
   \begin{tikzpicture}[inner sep=0mm]
         \fill[KULblauw3a] (-0.15,0) rectangle (0,1.2);
		   \node[anchor=west] at (0.5,0.6) {\includegraphics[height=1.5cm]{kuleuvenSedes}};
         \node[anchor=east] at (-0.6,0.6) {
            % Eerste twee kleuren kunnen nog aangepast worden.
            \footnotesize\begin{tabular}{@{}r@{}}\color{black}\textbf{\InstanceName}
               \ifdefempty{\@department}{}{\\[0.03cm]\color{black}\thedepartment}\color{black}\end{tabular}
         };
   \end{tikzpicture}
}

%%%%%%%%
% Footer

\lfoot{%
   \begin{tikzpicture}[overlay, inner sep=0mm]
      % Use \textwidth instead of 16 to ensure it matches geometry perfectly
      \draw[KULblauw2, line width=1pt]  (0,0.80) -- (\textwidth,0.80);
   \end{tikzpicture}% <--- This % prevents the horizontal shift
   \renewcommand{\arraystretch}{0.8}%
   \begin{tabular}[b]{@{}l@{}}
      \footnotesize{\textbf{\thetitle}}\ifdefempty{\@subtitle}{}{ -- \footnotesize{\textit{\thesubtitle}}}\\
      \footnotesize{\theauthor}
   \end{tabular}
}
\cfoot{}
\rfoot{\footnotesize{\thepage/\pageref{LastPage}}}

%%%%%%%%
% Title page

\renewcommand{\maketitle}{
   \begin{tikzpicture}[remember picture,overlay]
      \node at (current page.south west) {
         \begin{tikzpicture}[remember picture, overlay,inner sep=0mm]
            \fill[KULblauw3a] (17.5,26.87) rectangle (17.65,28.07);
            \node[anchor=north west] at ( 3.0,28.2) {\includegraphics[height=\LogoHeight]{\Logo}};
            \node[anchor=north east] at ( 19,28.2) {\includegraphics[height=1.5cm]{kuleuvenSedes}};
            \node[anchor=east] at (17,27.47) {
               \footnotesize\begin{tabular}{@{}r@{}}\ifdefempty{\@department}{}{\textbf{\thedepartment}\\}\theaddress\end{tabular}
            };
            \node[anchor=south east] at (19,24) {
            \begin{tabular}{@{}r@{}}
               \large\bf\thetitle\ifdefempty{\@subtitle}{}{\\[0.1cm]\textit{\thesubtitle}}\\[.5cm]
               \large\theauthor\vphantom{Ky}
            \end{tabular}};
            \node[anchor=south west] at (3,24) {
               \begin{tabular}{@{}l@{}}
                  \large \thedate\vphantom{Ky}
               \end{tabular}};
            \draw[KULblauw2, line width=1.5pt]  (3,23.7) -- ( 19,23.7);
         \end{tikzpicture}
      };
   \end{tikzpicture}
   \par\vspace*{2cm}
   \thispagestyle{empty}
}

\makeatother