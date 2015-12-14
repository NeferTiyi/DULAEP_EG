% .. Identification ..
% ====================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dula_eg}%
  [2015/09/25 v0.1 based on memoir class]

% .. Code initial ..
% ==================

% .. Declaration options ..
% =========================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}

% .. Execution options ..
% =======================
\ProcessOptions

% .. Chargement extensions ..
% ===========================
\PassOptionsToClass{dvipsnames, svgnames, a4paper, twoside, openany, 10pt, article}{memoir}

\LoadClass{memoir}

\RequirePackage{nefertiyi}
\PassOptionsToPackage{hiero}{neferegypto}%
\RequirePackage{neferegypto}

% .. Commandes spéciales ..
% =========================

% Page size
\settypeblocksize{22cm}{14cm}{*}
\setulmargins{*}{*}{1}
\setlrmargins{*}{*}{1.3}
% \setmarginnotes{17pt}{51pt}{\onelineskip}
\setheadfoot{2\onelineskip}{5\onelineskip}
\setheaderspaces{*}{2\onelineskip}{*}
\checkandfixthelayout

\renewcommand\thechapter{\Alph{chapter}.}

\newcounter{exo}
\renewcommand\theexo{\arabic{exo}.}
\newenvironment{exo}[1]{%
  \stepcounter{exo}%
  \theexo\quad%
  \begin{minipage}{.45\textwidth}#1\end{minipage}%
  $\Longrightarrow$\qquad%
  \begin{minipage}{.33\textwidth}
}{%
  \end{minipage}%
}

\newcommand{\short}[1]{\def\@short{#1}}

\@addtoreset{exo}{chapter}

\makepagestyle{ruledarticle}
\makeevenhead{ruledarticle}
  {\normalfont\itshape\@short}
  {}
  {\normalfont\itshape\@author}
\makeoddhead{ruledarticle}
  {\normalfont\itshape\@author}
  {}
  {\normalfont\itshape\@short}
\makeevenfoot{ruledarticle}
  {}
  {\thepage}
  {}
\makeoddfoot{ruledarticle}
  {}
  {\thepage}
  {}
\makeheadrule{ruledarticle}{\textwidth}{\normalrulethickness}
% \makefootrule{ruled}{\textwidth}{\normalrulethickness}{1pt}

\pagestyle{ruledarticle}

\endinput
