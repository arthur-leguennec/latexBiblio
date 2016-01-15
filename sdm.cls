\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sdm}[2015/02/02 v0.1
LaTeX document class for 
Université Rennes 1]

%extension de article
\LoadClassWithOptions{article}
\RequirePackage{fullpage}
\RequirePackage{graphicx}

\def\supervisorOne#1{\gdef\@supervisorOne{#1}}
\def\supervisorTwo#1{\gdef\@supervisorTwo{#1}}
\def\team#1{\gdef\@team{#1}}
\def\school#1{\gdef\@school{#1}}
\def\domain#1{\gdef\@domain{#1}}
\def\abstract#1{\gdef\@abstract{#1}}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\renewcommand{\maketitle}{
\begin{titlepage}

\begin{center}

% Upper part of the page
\includegraphics[width=0.8\textwidth]{./header.png}\\[1cm]
\textsc{\Large Master research Internship}
\vspace{1cm}

\includegraphics[natwidth=352,	natheight=143,	width=0.09\textwidth]{schools/rennes1.png}
\includegraphics[natwidth=1273,	natheight=545,	width=0.09\textwidth]{schools/ENS-Rennes.png}
\includegraphics[natwidth=650,	natheight=150,	width=0.1\textwidth] {schools/insa-rennes.jpg}
\includegraphics[natwidth=1152,	natheight=591,	width=0.08\textwidth]{schools/supelec.jpg}
\includegraphics[natwidth=160,	natheight=71,	width=0.06\textwidth]{schools/esir.png}
\includegraphics[natwidth=204,	natheight=247,	width=0.07\textwidth]{schools/enssat.png} 
\includegraphics[natwidth=1417,	natheight=945,	width=0.07\textwidth]{schools/UBO.png}
\includegraphics[natwidth=1479,	natheight=707,	width=0.09\textwidth]{schools/logo_ENIB.png} 
\includegraphics[natwidth=1181,	natheight=1181,	width=0.05\textwidth]{schools/tel-br.png}
\includegraphics[natwidth=204,	natheight=247,	width=0.05\textwidth]{schools/ensta.jpg}
\includegraphics[natwidth=4000,	natheight=4000,	width=0.05\textwidth]{schools/logoUbs.jpg}



\vspace{1cm} 
\textsc{\Large Bibliographic report }\\[0.5cm]

% The title of your report
\HRule \\[0.4cm]
{ \Large \bfseries {\@title} }\\[0.4cm]

\HRule \\[1.5cm]
% The domain of your research 
%\textbf{KEEP  WITHIN THIS LIST (see model.tex) ONE OR TWO DOMAIN(S) THAT CORRESPOND(S) TO YOUR INTERNSHIP - COMMENT OR REMOVE ALL THE OTHER ONES -}
\begin{flushleft}
\textbf{\@domain}
\end{flushleft}



%
% Author and supervisor(s)
\begin{minipage}{0.4\textwidth}
\begin{flushleft} \large
\emph{Author:}\\
\@author
\end{flushleft}
\end{minipage}
\begin{minipage}{0.4\textwidth}
\begin{flushright} \large
\emph{Supervisor:} \\
%
% name(s) of your supervisor(s)
\@supervisorOne\\
\@supervisorTwo\\
% Name of your team
\@team
\end{flushright}
\end{minipage}

\vfill


% INCLUDE HERE THE LOGO OF YOUR INSTITUTION
%\textbf{INSERT ``\%'' IN FRONT OF ALL THE LOGO YOU DO NOT NEED - A SINGLE ONE SHOULD REMAIN AT THE BOTTOM OF THIS PAGE}
\begin{flushleft}
\includegraphics[width=0.09\textwidth]{\@school}
\end{flushleft}
\end{center}
\end{titlepage}

\begin{flushleft}
\textbf{Abstract:} \@abstract
\end{flushleft}

%\newpage

% compile twice to get the table of contents
\tableofcontents
\thispagestyle{empty}
\newpage


\setcounter{page}{1} 
}