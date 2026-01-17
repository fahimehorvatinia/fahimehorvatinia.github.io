%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simplified Medium Length Professional CV / Resume class
%
% Based on the common "resume.cls" pattern used by the
% Medium Length Professional CV templates (CC BY 4.0).
%
% This file is intentionally lightweight and self-contained:
% - Provides \name{} and \address{} header macros
% - Provides rSection environment for section formatting
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/01/17 Simplified Resume Class]

\LoadClass[11pt]{article}

\RequirePackage[left=0.75in,top=0.6in,right=0.75in,bottom=0.6in]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{titlesec}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0.25em}
\pagenumbering{gobble}

% Compact lists by default
\setlist[itemize]{leftmargin=*,noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt}

\makeatletter
\newcommand{\@name}{}
\newcommand{\@address}{}

\newcommand{\name}[1]{\gdef\@name{#1}}

% Allow multiple \address{} lines; user can keep just one for a single-line header.
\newcommand{\address}[1]{%
  \ifx\@address\@empty
    \gdef\@address{#1}%
  \else
    \g@addto@macro\@address{\\#1}%
  \fi
}

% Header printed automatically at document start.
\AtBeginDocument{%
  \begin{center}
    {\LARGE \bfseries \@name}\par
    \vspace{0.25em}
    {\small \@address}\par
  \end{center}
  \vspace{0.25em}
  \hrule
  \vspace{0.6em}
}
\makeatother

% Section formatting (matches the "simplified" template style)
\titleformat{\section}
  {\large\bfseries}
  {}
  {0pt}
  {}

\titlespacing*{\section}{0pt}{0.8em}{0.4em}

\newenvironment{rSection}[1]{%
  \section*{#1}%
}{%
  \vspace{0.3em}%
  \hrule%
  \vspace{0.6em}%
}

