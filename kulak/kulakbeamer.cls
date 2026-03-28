% Corporate article-template for KU Leuven en Kulak.
%
%   * Stijn Rebry - 2012-2026
%   * Vincent Van Schependom - 2026 - sedes backgrounds
%   * Brent De Blaere - mei 2023 - huisstijl campus Brugge
%   * Eef Temmerman - 2020 - aanpassing aan breedbeeld
%   * Andries Vansweevelt - 2018 - nieuwe huisstijl KU Leuven
% 
% Tips en hints voor een beter resultaat altijd welkom via Stijn.
%
% Deze template is gebaseerd op de lay-out van de beamer style beamerthemekuleuven2. 
% Deze is te downloaden op https://www.kuleuven.be/communicatie/marketing/templates/presentatiemateriaal/index.html
% Niet alle opties van de beamerstyle worden in deze classfile geïmplementeerd.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kulakbeamer}[2023/07/05 Beamer class for KU Leuven]
\DeclareOption*{\PassOptionsToClass{\CurrentOption, aspectratio=169, t}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}


%%
%% Fonts and packages
%%

%\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{tikz}		
\RequirePackage{ifthen}				
\RequirePackage{KULkleuren}

\usetikzlibrary{shapes,shadows,arrows,backgrounds,mindmap,decorations.pathreplacing,positioning,calc}
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{fit}
\usetikzlibrary{shadows}


%%
%% Kulak titlepage variants (default, sedes)
%%

% File names
\newcommand{\KulakTitlepageDefaultFile}{kulakTitlepage}
\newcommand{\KulakTitlepageSedesFile}{kulakTitlepageSedesBlauw}

% Kulak Titlepage variants
\newcommand{\KulakTitlepageVariant}{default}
\newboolean{kulakbeamerKulakSelected}
\setboolean{kulakbeamerKulakSelected}{false}
\newcommand{\KulakApplyTitlepage}{%
  \ifthenelse{\equal{\KulakTitlepageVariant}{sedes}}{
    \renewcommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{\KulakTitlepageSedesFile}}
  }{
    \renewcommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{\KulakTitlepageDefaultFile}}
  }%
}


%%
%% Opties instellen
%%

\DeclareOptionBeamer{kul}{
  \renewcommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenBackground}}
  \renewcommand{\Outline}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenOutline}}
  \renewcommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenTitlepage}}
  \renewcommand{\Logo}{\includegraphics[height=.8cm]{kuleuvenLogo}}
  }
\DeclareOptionBeamer{kulak}{
  \setboolean{kulakbeamerKulakSelected}{true}
  \providecommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{kulakBackground}}
  \providecommand{\Outline}{\includegraphics[width=\paperwidth,height=\paperheight]{kulakOutline}}
  \providecommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{kulakTitlepage}}
  \KulakApplyTitlepage
  \providecommand{\Logo}{\includegraphics[height=.8cm]{kulakLogo}}
  }
\DeclareOptionBeamer{sedes}{
  \renewcommand{\KulakTitlepageVariant}{sedes}
  \ifthenelse{\boolean{kulakbeamerKulakSelected}}{\KulakApplyTitlepage}{}
}
\DeclareOptionBeamer{kuleuven-brugge}{
  \renewcommand{\Background}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenBruggeBackground}}
  \renewcommand{\Outline}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenBruggeOutline}}
  \renewcommand{\Titlepage}{\includegraphics[width=\paperwidth,height=\paperheight]{kuleuvenBruggeTitlepage}}
    \renewcommand{\Logo}{\includegraphics[height=.8cm]{kuleuvenBruggeLogo}}
  }
\newcommand{\outlineTitle}{Outline}
\DeclareOptionBeamer{outline}{
\setbeamerfont{section number projected}{series=\mdseries}
\setbeamertemplate{sections/subsections in toc shaded}[default][100]
\AtBeginSection[]{
	\setbeamerfont{section in toc}{series=\bfseries}			
	\setbeamerfont{section in toc shaded}{series=\mdseries}			
    \only<beamer>{
	\addtocounter{framenumber}{-1}
    \begin{outlineframe}
    \frametitle{\outlineTitle} % \renewcommand{\outlineTitle}{Overzicht}
        \tableofcontents[currentsection,hideallsubsections]
    \end{outlineframe}
	\setbeamerfont{section in toc}{series=\mdseries}			
}}}

\ExecuteOptionsBeamer{kulak} %standaardopties
\ProcessOptionsBeamer


\mode<all>


%%		
%%  INNER THEME
%%

% Text colours
\hypersetup{colorlinks,linkcolor=KULzwart,urlcolor=KULzwart} %link colors
\urlstyle{sf}					                                        %url addreses are sans-serif font (not typewritter)
\setbeamercolor{title}			          {fg=KULwit}
\setbeamercolor{title page}		        {fg=KULwit}
\setbeamercolor{normal text}	        {fg=KULzwart}
\setbeamercolor{structure}	          {fg=KULblauw}
\setbeamercolor{frametitle}	          {fg=KULcorporate}
\setbeamercolor{section in toc}       {fg=KULcorporate}
\setbeamercolor{section in toc shaded}{fg=KULgroen}
\setbeamercolor{item}			            {fg=KULpetrol}
\setbeamercolor{subitem}		          {fg=KULpetrol}
\setbeamercolor{subsubitem}		        {fg=KULpetrol}
\setbeamercolor{text}			            {fg=KULwhite,bg=KULblauw}
\setbeamercolor{caption name}	        {fg=KULzwart}
\setbeamercolor{abstract title}	      {fg=KULrood}

% Blocks, theorem-like environments and colorboxes
\setbeamerfont{block title} {size=\normalsize, series=\bfseries}				%block title font size
\setbeamertemplate{qed symbol}{\color{KULzwart} $\square$}

\setbeamercolor{block title}{bg=KULijsblauw,fg=KULcorporate}			%block title colour
\setbeamercolor{block body} {bg=KULijsblauw,fg=KULzwart}

\setbeamercolor{block title alerted}{bg=KULrood!20!KULwit,fg=KULrood!80!black}				%alertbloc title (red)
\setbeamercolor{block body alerted}{bg=KULrood!20!KULwit,fg=KULzwart}				%alertbloc body

\setbeamercolor{block title example}{bg=KULgroen!20!KULwit,fg=KULgroen!80!black} 	%example block title (blue)
\setbeamercolor{block body example}{bg=KULgroen!20!KULwit,fg=KULzwart}		%example block body

\setbeamercolor{box1}		{fg=KULzwart,bg=KULrood}		
\setbeamercolor{box2}		{fg=KULzwart,bg=KULoranje}			%five different colour schemes for Beamer colour box
\setbeamercolor{box3}		{fg=KULzwart,bg=KULgeel}
\setbeamercolor{box4}		{fg=KULzwart,bg=KULgroen}	
\setbeamercolor{box5}		{fg=KULzwart,bg=KULblauw}	
\setbeamercolor{box6}		{fg=KULzwart,bg=KULpaars}	

\setbeamercolor{button}		{bg=KULcorporate,fg=KULijsblauw}			%button frame

%math font
\usefonttheme[onlymath]{serif}

%outline and margins
%custom template to fix square box width when section titles are bold
\defbeamertemplate{section in toc}{squarefix}
{\leavevmode\leftskip=15pt{\mdseries%use pt instead of ex to prevent stretching
  \llap{%
    \usebeamerfont*{section number projected}%
    \usebeamercolor[bg]{section number projected}%
    \vrule width2.25ex height1.85ex depth.4ex%
    \hskip-2.25ex%
    \hbox to2.25ex{\hfil\color{fg}\inserttocsectionnumber\hfil}\kern1.25ex}%
  }\inserttocsection\par}

\setbeamertemplate{sections/subsections in toc}[squarefix]			%toc symbols
\setbeamersize{text margin left=21pt,text margin right=21pt} 	%text margins

%itemize list
\setbeamertemplate{itemize item}[triangle] 			%item symbol (triangle)
\setbeamertemplate{itemize subitem}[circle]			%subitem symbol (cirlce)
\renewcommand\textbullet{\ensuremath{\bullet}}		%correction for warning for subitem circle bullect
\setbeamertemplate{itemize subsubitem}{-}			%subsubitem symbol (short hypthen)

%enumerate list
\setbeamertemplate{enumerate item}{\small  \insertenumlabel  \enspace }		%enumerate symbol
\setbeamertemplate{enumerate subitem}{\scriptsize \raisebox{.085em} \insertsubenumlabel } 	%subenumerate symbol
\setbeamertemplate{enumerate subsubitem}{\tiny \raisebox{.18em} \insertsubsubenumlabel } 	%subenumerate symbol


%%		
%%  OUTER THEME
%%

\usebackgroundtemplate{\Background}
\newenvironment{titleframe}
{\bgroup\usebackgroundtemplate{\Titlepage}\begin{frame}[plain]}
{\end{frame}\egroup\addtocounter{framenumber}{-1}}

\newenvironment{outlineframe}[1][]
{\bgroup\usebackgroundtemplate{\Outline}\begin{frame}{#1}}
{\end{frame}\egroup}

\setbeamertemplate{navigation symbols}{} %remove the navigation symbols

%head frametitle	
\setbeamertemplate{frametitle}
{
	\vspace{.5cm}
	{\large\textbf{\insertframetitle}} 
}

\defbeamertemplate*{title page}{customized}[1][]
{\begin{tikzpicture}[remember picture,overlay]
  \node at ($(current  page.south  west)  + (-\hoffset,  -\voffset)$) {
    \begin{tikzpicture}[remember picture, overlay,inner sep=0mm,node distance=.5cm]
     \node[anchor=base] (lijn) at (.5cm ,.25\paperheight) {};
	 \node (lijnT) at (lijn.north west) {};
 	 \node (lijnB) at (lijn.south west) {};
     \node[above of=lijnT, anchor=south west, align=left, text width=.9\paperwidth] (author) {\Large \insertauthor};
	 \node (authorT) at (author.north west) {};
     \node[above of=authorT, anchor=south west, align=left, text width=.9\paperwidth] (subtitle) {\textbf{\Large\insertsubtitle}};
     \node (subtitleT) at (subtitle.north west) {};
    \node[above of=subtitleT, anchor=south west, align=left, text width=.9\paperwidth] (title) {\LARGE\sffamily\inserttitle};
     \node[below of=lijnB, anchor=north west, align=left, text width=.9\paperwidth] (institute) {\large \textcolor{KULwit}{\insertinstitute}};
  	 \node (instituteB) at (institute.south west) {};
     \node[below of=instituteB,anchor=north west, align=left, text width=.9\paperwidth] (date) {\textcolor{KULwit}{\insertdate}};
    \end{tikzpicture}
  };
\end{tikzpicture}}

\defbeamertemplate*{footline}{body}
{\hypersetup{linkcolor=KULwit}
\hspace{.085\paperheight}
\raisebox{8.3pt}{\color{KULwit}\scriptsize\hspace{11pt} \insertframenumber\ \(\cdot\) \insertshorttitle\ \(\cdot\) \secname}

}	

\beamertemplatenavigationsymbolsempty
