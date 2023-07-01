\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zine}[A class to produce OSR RPG Zines]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{extarticle} 
}

\ProcessOptions\relax

\LoadClass[a4paper,14pt,twoside]{extarticle}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{graphicx}
\usepackage{lipsum} % For generating dummy text. Remove in your document
\usepackage{fancyhdr}
\usepackage{multicol}
\usepackage{geometry}
\usepackage{tabularx}
\usepackage{titlesec}
\usepackage{enumitem}
\usepackage{float}
\usepackage{hyperref}
\usepackage[table]{xcolor}

\usepackage{pifont}
\usepackage[nf]{coelacanth}
\usepackage[T1]{fontenc}
%% The font package uses mweights.sty which has som issues with the
%% \normalfont command. The following two lines fixes this issue.
\let\oldnormalfont\normalfont
\def\normalfont{\oldnormalfont\mdseries}


% Adjust the margins to fit each page on half of an A4 page
\geometry{
    paper=a4paper, % Change to letterpaper for US letter
    inner=2.5cm, % Inner margin
    outer=1.5cm, % Outer margin
    top=2cm, % Top margin
    bottom=2cm, % Bottom margin
    footskip=0.9cm % Space for the page number
}

\setlist[itemize]{topsep=0pt,itemsep=0.1cm,partopsep=1ex,parsep=1ex}
\setlist[itemize]{leftmargin=0.78cm} % you might have to adjust this based on 
\setlist[itemize,1]{label=\ding{228}}
                                     % the chosen symbol

% you can adjust the properties of an individual itemize like this:
% \begin{itemize}[leftmargin=5.5mm]

% spacings around sections and (sub-)subsections
\titlespacing*{\section}
{0pt}{0.4cm}{0.1cm}
\titlespacing*{\subsection}
{0pt}{0.2cm}{0.2cm}
\titlespacing*{\subsubsection}
{0pt}{8pt}{2pt}

% Prevent breaking mid-word
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% Give tables more padding
\renewcommand{\arraystretch}{1.3}

% Middle split size
\setlength{\columnsep}{0.8cm}

% Boxes with darkened background
\newcommand{\colbox}[1]{ \noindent\colorbox{gray!25}{\parbox{0.93\linewidth}{#1}}\vspace{0.2cm}} 
\setlength\fboxsep{0.3cm} % Padding

% FOOT & HEAD
\def\zinetitle{Your Zine Title}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\hrulefill \quad \zinetitle \quad \hrulefill}
\fancyfoot[C]{\hrulefill \quad \textbf{\thepage} \quad \hrulefill}

% Metadata Formatting
\title{\vspace{-3cm} \hrule \vspace{2mm} \textbf{\textit{\zinetitle}} \vspace{2mm} \hrule}
\date{Last edit: \today}
