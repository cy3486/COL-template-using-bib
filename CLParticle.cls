\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CLParticle}
              [2007/10/19 v1.4h
 Standard LaTeX document class]
% \newcommand\@ptsize{}
% \newif\if@restonecol
% \newif\if@titlepage
% \@titlepagefalse
% \if@compatibility\else
% \DeclareOption{a4paper}
%    {\setlength\paperheight {297mm}%
%     \setlength\paperwidth  {210mm}}
% \DeclareOption{a5paper}
%    {\setlength\paperheight {210mm}%
%     \setlength\paperwidth  {148mm}}
% \DeclareOption{b5paper}
%    {\setlength\paperheight {250mm}%
%     \setlength\paperwidth  {176mm}}
% \DeclareOption{letterpaper}
%    {\setlength\paperheight {11in}%
%     \setlength\paperwidth  {8.5in}}
% \DeclareOption{legalpaper}
%    {\setlength\paperheight {14in}%
%     \setlength\paperwidth  {8.5in}}
% \DeclareOption{executivepaper}
%    {\setlength\paperheight {10.5in}%
%     \setlength\paperwidth  {7.25in}}
% \DeclareOption{landscape}
%    {\setlength\@tempdima   {\paperheight}%
%     \setlength\paperheight {\paperwidth}%
%     \setlength\paperwidth  {\@tempdima}}
% \fi
% \if@compatibility
%   \renewcommand\@ptsize{0}
% \else
% \DeclareOption{10pt}{\renewcommand\@ptsize{0}}
% \fi
% \DeclareOption{11pt}{\renewcommand\@ptsize{1}}
% \DeclareOption{12pt}{\renewcommand\@ptsize{2}}
% \if@compatibility\else
% \DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
% \fi
% \DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
% \DeclareOption{draft}{\setlength\overfullrule{5pt}}
% \if@compatibility\else

%\newcount\affiliationcount \affiliationcount0%
%\newcount\tempaffiliationcount \tempaffiliationcount0%
%\newcount\tempcount
\newcount\affilcount\affilcount0
\newcount\affiltempcount
\newcount\tempaffilcount

\newcount\correspcount\correspcount0
\newcount\corresptempcount
\newcount\tempcorrespcount

\newcounter{figure}
\newcounter{table}

\newbox\figcapbox
\newbox\figtempbox
\newbox\tabcapbox
\newbox\tabbox
\newbox\tabnotebox
\newbox\tablefootbox

\newskip\figcaptionleftskip
\newskip\figcaptionrightskip
\newskip\figleftskip
\newskip\figrightskip
\newskip\adjustskip
\newskip\sidetskip\sidetskip=0pt
\newskip\sideverticalskip\sideverticalskip=0pt
\newskip\fignumcapsep\fignumcapsep=3pt
\newskip\figcapdescsep\figcapdescsep=2.5pt
\newskip\tableleftskip%
\newskip\tablerightskip%
\newskip\tablecapleftskip%
\newskip\tablecaprightskip%
\newskip\sideverticalskip
\newskip\sidetskip
\newskip\addtotablewidth
\newskip\tablenumcapsep
\newskip\tablefootleftskip
\newskip\tablefootrightskip

\newdimen\toprulewidth
\newdimen\midrulewidth
\newdimen\botrulewidth
\newdimen\cmidrulewidth
\newdimen\belowrulesep
\newdimen\belowbottomsep
\newdimen\aboverulesep
\newdimen\abovetopsep
\newdimen\cmidrulesep
\newdimen\cmidrulekern
\newdimen\defaultaddspace
\newdimen\@thisrulewidth


\@twosidetrue\@mparswitchtrue

\newbox\abstractbox%


\DeclareOption{final}{\setlength\overfullrule{0pt}}
% \fi

% \DeclareOption{titlepage}{\@titlepagetrue}
% \if@compatibility\else
% \DeclareOption{notitlepage}{\@titlepagefalse}
% \fi
% \if@compatibility\else
% \DeclareOption{onecolumn}{\@twocolumnfalse}
% \fi
% \DeclareOption{twocolumn}{\@twocolumntrue}
% \DeclareOption{leqno}{\input{leqno.clo}}
% \DeclareOption{fleqn}{\input{fleqn.clo}}
% \DeclareOption{openbib}{%
%   \AtEndOfPackage{%
%    \renewcommand\@openbib@code{%
%       \advance\leftmargin\bibindent
%       \itemindent -\bibindent
%       \listparindent \itemindent
%       \parsep \z@
%       }%
%    \renewcommand\newblock{\par}}%
% }


\setlength\paperheight{279mm}%
\setlength\paperwidth{216mm}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{natbib}}

\ExecuteOptions{final}
\ProcessOptions


\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}


\renewcommand{\rmdefault}{ptm}
\renewcommand{\sfdefault}{phv}

\RequirePackage{ifpdf}
\RequirePackage{etex}
\RequirePackage{amsthm}
\RequirePackage{soul}
\RequirePackage{calc}
\RequirePackage{color}

%\def\FontI{ptm}%
%\def\FontII{phv}%
% \def\FontI{pad}%
% \def\FontII{9hn}%

\def\FontI{ptm}
\def\FontII{phv}



\RequirePackage{marginnote}
%\RequirePackage[T1,mtbold]{CLP-LaTeX-Mathfont}
\RequirePackage{mathptmx}
\renewcommand{\rmdefault}{ptm}
%\usepackage[italic]{mathastext}
\RequirePackage{fnpos,makeidx,ifthen,multicol}
\RequirePackage{textcomp}%Commented algorithm package for line numbers
%\RequirePackage{CLP-Pagegrid}
\RequirePackage{amsbsy}[1995/01/20]
\RequirePackage{amssymb}
\RequirePackage{amsmath}
% \RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage{color}
% \RequirePackage{ifthen}
\RequirePackage{calc}
% \RequirePackage{multicol}
% \RequirePackage{algorithm}
\RequirePackage{stfloats}
\RequirePackage{wrapfig}
% \RequirePackage{lipsum}
% \RequirePackage{cuted}
\RequirePackage{url}
\RequirePackage{etoolbox}
\RequirePackage{eurosym}
\RequirePackage{upgreek}
\AtEndOfClass{
\RequirePackage[super,square,comma,sort&compress]{natbib}
\RequirePackage{hyperref}%
\hypersetup{
draft=false,
%dvips,
pdftex,%
pdfpagemode=UseNone,
bookmarks=false,
%bookmarksopenlevel=3,
%bookmarksopen=true,
pdfborderstyle={/S/U/W 0},
pdfstartview={FitH 800},
breaklinks=true}
}

\def\titlefont{\fontencoding{T1}\fontfamily{phv}\fontseries{b}\fontsize{19}{26}\selectfont\raggedright}
\def\authorfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{11}{16}\selectfont\bfseries\raggedright\mathversion{bold}}
\def\affilfont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{9}{10.8}\selectfont\raggedright}
\def\correspfont{\akrobatNine}
\def\historyfont{\akrobatNine}
\def\kwdfont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{11}{14}\selectfont}
%\def\abstractfont{\fontsize{10}{12}\selectfont\bfseries\mathversion{bold}\leftskip24pt\rightskip24pt}
\def\abstractfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{11}{14}\selectfont\mathversion{bold}\leftskip24pt\rightskip17pt}
\def\akrobatNine{\fontfamily{\sfdefault}\fontseries{c}\fontsize{9}{10.8}\selectfont\raggedright}
\def\akrobatElevenBold{\fontfamily{\sfdefault}\fontsize{11}{12}\selectfont\bfseries\raggedright}

%% section
\def\sectionfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{12}{14}\selectfont\rightskip0pt plus1fill}%
\def\subsectionfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{11}{13}\selectfont\rightskip0pt plus1fill} %
\def\subsubsectionfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{10}{12}\selectfont} %
\def\paragraphfont{\itshape}%
\def\subparagraphfont{}%
\def\subsubparagraphfont{}%
%
\def\sectionnumfont{\sectionfont}
\def\subsectionnumfont{\subsectionfont}
%

%% figure
\def\figcaptionfont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{9}{12}\selectfont}
\def\figcaptiondescfont{\fontfamily{\sfdefault}\fontsize{9}{12}\selectfont} %}%\leftskip0pt plus1fill\rightskip0pt plus1fill}
\def\figcaptionnumfont{\fontfamily{\sfdefault}\fontseries{b}\fontshape{n}\fontsize{9}{12}\selectfont}

%% TABLE
%\def\multilistfont{\fontsize{8.5}{10}\selectfont\leftskip\tableleftskip\rightskip\tablerightskip}%
%\def\multilistheadfont{\fontsize{8.5}{10}\bfseries\selectfont\leftskip\tableleftskip\rightskip\tablerightskip}%
\def\tablefont{\fontfamily{\sfdefault}\fontsize{9}{11}\selectfont} %}%
\def\tablecaptionfont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{9}{11}\selectfont} %}%
\def\tablecaptwofont{\fontfamily{\sfdefault}\fontsize{9}{11}\selectfont} %}%
\def\tablecaptionnumfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{9}{9}\selectfont} %}%
\def\TCHfont{\fontfamily{\sfdefault}\fontseries{bc}\fontsize{9}{11}\selectfont}%
%\def\tbodyfont{\fontfamily{\sfdefault}\fontsize{9}{12}\selectfont}
\def\tbodyfont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{9}{10}\selectfont}
%\def\mycr{\@xnewline\vskip4pt }
\def\mycr{\crcr\noalign{\kern2\p@\global\let\cr\endline\vskip4pt}}
\def\TSCHfont{}%
\def\tabnotefont{\fontfamily{\sfdefault}\fontseries{c}\fontsize{7}{9}\selectfont}% use plus 1fill if needed


\definecolor{clpblue}{cmyk}{0.84,0.61,0.58,0.13}
\definecolor{clpgrayone}{cmyk}{0.35,0.27,0.26,0}
\definecolor{clpgraytwo}{cmyk}{0.73,0.67,0.64,0.23}
\definecolor{titlebarsep}{cmyk}{0.7,0,0.55,0}
\definecolor{footcpcolor}{cmyk}{.35,.27,.26,0}

%89 54 62 9

%\input{size1\@ptsize.clo}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{15\p@}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{12\p@}
\setlength\headsep   {25\p@}
\setlength\topskip   {10\p@}
\setlength\footskip{30\p@}
%\if@compatibility \setlength\maxdepth{4\p@} \else
\setlength\maxdepth{.5\topskip} %\fi
% \if@compatibility
%   \if@twocolumn
%     \setlength\textwidth{410\p@}
%   \else
%     \setlength\textwidth{345\p@}
%   \fi
% \else
%   \setlength\@tempdima{\paperwidth}
%   \addtolength\@tempdima{-2in}
%   \setlength\@tempdimb{345\p@}
%   \if@twocolumn
%     \ifdim\@tempdima>2\@tempdimb\relax
%       \setlength\textwidth{2\@tempdimb}
%     \else
%       \setlength\textwidth{\@tempdima}
%     \fi
%   \else
%     \ifdim\@tempdima>\@tempdimb\relax
%       \setlength\textwidth{\@tempdimb}
%     \else
%       \setlength\textwidth{\@tempdima}
%     \fi
%   \fi
% \fi
% \if@compatibility\else
%   \@settopoint\textwidth
% \fi
% \if@compatibility
%   \setlength\textheight{43\baselineskip}
% \else
%   \setlength\@tempdima{\paperheight}
%   \addtolength\@tempdima{-2in}
%   \addtolength\@tempdima{-1.5in}
%   \divide\@tempdima\baselineskip
%   \@tempcnta=\@tempdima
%   \setlength\textheight{\@tempcnta\baselineskip}
% \fi
% \addtolength\textheight{\topskip}
% \if@twocolumn
%  \setlength\marginparsep {10\p@}
% \else
%   \setlength\marginparsep{11\p@}
% \fi
% \setlength\marginparpush{5\p@}
% \if@compatibility
%   \if@twoside
%      \setlength\oddsidemargin   {44\p@}
%      \setlength\evensidemargin  {82\p@}
%      \setlength\marginparwidth {107\p@}
%   \else
%      \setlength\oddsidemargin   {63\p@}
%      \setlength\evensidemargin  {63\p@}
%      \setlength\marginparwidth  {90\p@}
%   \fi
%   \if@twocolumn
%      \setlength\oddsidemargin  {30\p@}
%      \setlength\evensidemargin {30\p@}
%      \setlength\marginparwidth {48\p@}
%   \fi
% \else
%   \if@twoside
%     \setlength\@tempdima        {\paperwidth}
%     \addtolength\@tempdima      {-\textwidth}
%     \setlength\oddsidemargin    {.4\@tempdima}
%     \addtolength\oddsidemargin  {-1in}
%     \setlength\marginparwidth   {.6\@tempdima}
%     \addtolength\marginparwidth {-\marginparsep}
%     \addtolength\marginparwidth {-0.4in}
%   \else
%     \setlength\@tempdima        {\paperwidth}
%     \addtolength\@tempdima      {-\textwidth}
%     \setlength\oddsidemargin    {.5\@tempdima}
%     \addtolength\oddsidemargin  {-1in}
%     \setlength\marginparwidth   {.5\@tempdima}
%     \addtolength\marginparwidth {-\marginparsep}
%     \addtolength\marginparwidth {-0.4in}
%     \addtolength\marginparwidth {-.4in}
%   \fi
%   \ifdim \marginparwidth >2in
%      \setlength\marginparwidth{2in}
%   \fi
%   \@settopoint\oddsidemargin
%   \@settopoint\marginparwidth
%   \setlength\evensidemargin  {\paperwidth}
%   \addtolength\evensidemargin{-2in}
%   \addtolength\evensidemargin{-\textwidth}
%   \addtolength\evensidemargin{-\oddsidemargin}
%   \@settopoint\evensidemargin
% \fi
% \if@compatibility
%   \setlength\topmargin{27pt}
% \else
%   \setlength\topmargin{\paperheight}
%   \addtolength\topmargin{-2in}
%   \addtolength\topmargin{-\headheight}
%   \addtolength\topmargin{-\headsep}
%   \addtolength\topmargin{-\textheight}
%   \addtolength\topmargin{-\footskip}     % this might be wrong!
%   \addtolength\topmargin{-.5\topmargin}
%   \@settopoint\topmargin
% \fi
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 4\p@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

%\setlength\lineskip{1\p@}
% \setlength\normallineskip{1\p@}
% \renewcommand\baselinestretch{}
% \setlength\parskip{0\p@ \@plus \p@}

\setlength\paperwidth{216mm}
\setlength\paperheight{279mm}

\setlength\textheight{604pt}%
%\addtolength\textheight{-2pt}%
%
%\setlength\normaltextheight{\textheight}%
\setlength\textwidth{521pt}%
%
%\setlength\typeheight{\textheight}%
%\setlength\typewidth{\textwidth}%
\hoffset-75pt
\voffset-66pt


\hbadness=10000
\vbadness=10000
\brokenpenalty=10000
\doublehyphendemerits=1000000
\finalhyphendemerits=1000000
\clubpenalty=10000
\widowpenalty=10000
\lefthyphenmin=3
\righthyphenmin=3
\uchyph=0



\setlength\topmargin{10.5pt}%
\setlength\oddsidemargin{49pt}%
\setlength\evensidemargin{49pt}%
%
\setlength\headheight{10\p@}%
\setlength\headsep   {28pt}% \typeheight - \textheight - \headheight
\setlength\topskip   {10\p@}
%
\setlength\footskip{12pt}
\setlength\maxdepth{48\baselineskip}
%
%\blindfoliodrop\trimheight
%\advance\blindfoliodrop-\typeheight
%\advance\blindfoliodrop-\topmargin
%\advance\blindfoliodrop-\footskip
%\advance\blindfoliodrop18pt
%
\setlength\parindent{10pt}
%
\setlength\marginparwidth {.75in}
\setlength\marginparsep{22\p@}
\setlength\marginparpush{5\p@}
%
\setlength\footnotesep{\z@}
\setlength{\skip\footins}{17\p@}% \@plus 8\p@ \@minus 8\p@}% change + based on FN font height
\skip\@mpfootins = \skip\footins
%
\setlength\floatsep    {18\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{12\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 1fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@}
\setlength\@dblfpsep{8\p@ \@plus 1fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
%
\setlength\partopsep{0pt}
\setlength\lineskip{1\p@}% check if it can be flexible
\setlength\normallineskip{1\p@}%
\renewcommand\baselinestretch{}
\setlength\parskip{\z@}%{0\p@ \@plus \p@}

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
% \if@twoside
%   \def\ps@headings{%
%       \let\@oddfoot\@empty\let\@evenfoot\@empty
%       \def\@evenhead{\thepage\hfil\slshape\leftmark}%
%       %\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
%           \def\@oddhead{%
% %\normalspaceskip
% %        \hbox to \textwidth{\hfill{\rhfont\@rectorh}\hfill{\oddfolio}}%
% {\noindent%
% {\includegraphics{rectoBar.pdf}\@@par}%
% }\rlap{\raisebox{5pt}{\hspace*{-\textwidth}{\hspace*{10pt}\fontfamily{\sfdefault}\fontseries{b}\fontsize{10}{10}\selectfont\textcolor{red}{\normalspaceskip {AAAAAAAAAAAA}}}}\hfill\raisebox{6pt}{{{{\fontfamily{\sfdefault}\fontseries{b}\fontsize{7}{7}\sffamily\selectfont \textcolor{red}{Vol.
% %%%{{\volume@no}}, No. {\issue@no} /
% %{\ifx\cpyear\@undefined\else(\cpyear)\fi}%
% %%%{\@mypubcolldate} /
% %{\ifx\jshorttitle\undefined\journal@title\else\jshorttitle\fi}
% {\fontseries{b}\itshape\ifx\journal@title\undefined\else\journal@title\fi}\hspace*{15pt}}}{{\fontfamily{\sfdefault}\fontseries{b}\fontsize{7}{7}\selectfont\textcolor{red}{\thepage}}\hspace*{1pc}}}}}}
%         }%
%       \let\@mkboth\markboth
%     \let\@mkboth\markboth
%     \def\chaptermark##1{\markboth{\@versorh}{\@rectorh}}%
% }
% \else
%   \def\ps@headings{%
%     \let\@oddfoot\@empty
%     \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
%     \let\@mkboth\markboth
%     \def\sectionmark##1{%
%       \markright {\MakeUppercase{%
%         \ifnum \c@secnumdepth >\m@ne
%           \thesection\quad
%         \fi
%         ##1}}}}
% \fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }
%   \if@titlepage
%   \newcommand\maketitle{\begin{titlepage}%
%   \let\footnotesize\small
%   \let\footnoterule\relax
%   \let \footnote \thanks
%   \null\vfil
%   \vskip 60\p@
%   \begin{center}%
%     {\LARGE \@title \par}%
%     \vskip 3em%
%     {\large
%      \lineskip .75em%
%       \begin{tabular}[t]{c}%
%         \@author
%       \end{tabular}\par}%
%       \vskip 1.5em%
%     {\large \@date \par}%       % Set date in \large size.
%   \end{center}\par
%   \@thanks
%   \vfil\null
%   \end{titlepage}%
%   \setcounter{footnote}{0}%
%   \global\let\thanks\relax
%   \global\let\maketitle\relax
%   \global\let\@thanks\@empty
%   \global\let\@author\@empty
%   \global\let\@date\@empty
%   \global\let\@title\@empty
%   \global\let\title\relax
%   \global\let\author\relax
%   \global\let\date\relax
%   \global\let\and\relax
% }
% \else
% \newcommand\maketitle{\par
%   \begingroup
%     \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
%     \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
%     \long\def\@makefntext##1{\parindent 1em\noindent
%             \hb@xt@1.8em{%
%                 \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
%     \if@twocolumn
%       \ifnum \col@number=\@ne
%         \@maketitle
%       \else
%         \twocolumn[\@maketitle]%
%       \fi
%     \else
%       \newpage
%       \global\@topnum\z@   % Prevents figures from going at top of page.
%       \@maketitle
%     \fi
%     \thispagestyle{plain}\@thanks
%   \endgroup
%   \setcounter{footnote}{0}%
%   \global\let\thanks\relax
%   \global\let\maketitle\relax
%   \global\let\@maketitle\relax
%   \global\let\@thanks\@empty
%   \global\let\@author\@empty
%   \global\let\@date\@empty
%   \global\let\@title\@empty
%   \global\let\title\relax
%   \global\let\author\relax
%   \global\let\date\relax
%   \global\let\and\relax
% }
% \def\@maketitle{%
%   \newpage
%   \null
%   \vskip 2em%
%   \begin{center}%
%   \let \footnote \thanks
%     {\LARGE \@title \par}%
%     \vskip 1.5em%
%     {\large
%       \lineskip .5em%
%       \begin{tabular}[t]{c}%
%         \@author
%       \end{tabular}\par}%
%     \vskip 1em%
%     {\large \@date}%
%   \end{center}%
%   \par
%   \vskip 1.5em}
% \fi
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}


\newcommand\section{\@startsection {section}{1}{\z@}{26pt plus1pt minus1pt}{6pt}{\sectionfont}}%
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{25pt plus1pt minus1pt}{6pt}{\subsectionfont}}%
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{22pt plus1pt minus1pt}{6pt}{\subsubsectionfont}}%
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}{-2pt \@plus -2pt \@minus -.2pt}{-1.5pt}{\paragraphfont}}%
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{-19pt \@plus -2pt \@minus -.2pt}{0pt}{\subparagraphfont}}%
\newcommand\subsubparagraph{\@startsection{subsubparagraph}{6}{\parindent}{-19pt \@plus -2pt \@minus -.2pt}{-1em}{\subsubparagraphfont}}%
%
\newcommand\referencehead{\@startsection {section}{1}{\z@}{-24pt \@plus -2pt \@minus -.2pt}{2pt}{\referenceheadfont}}%
\newcommand\acknohead{\@startsection {section}{1}{\z@}{-24pt \@plus -2pt \@minus -.2pt}{6pt}{\acknoheadfont}}%

\def\@seccntformat#1{\csname the#1\endcsname.}

\def\@sect#1#2#3#4#5#6[#7]#8{%\Abstractfalse%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
        \protected@edef\@svsec{\@seccntformat{#1}\hspace*{3.25pt}\relax}% \ifnum#2=1.\hspace*{3.25pt}\else\fi
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
         \ifnum#2=1%
         %\def\spreadoutfactor{-.6}%
         \@hangfrom{\hskip #3\relax\textcolor{clpblue}{\@svsec}}% \ifappendix Appendix \@svsec\else\fi
         \interlinepenalty \@M \textcolor{clpblue}{#8}\@@par%
         \else%
         \ifnum#2=2%
         \@hangfrom{\hskip #3\relax\textcolor{clpblue}{\@svsec}}%
         \interlinepenalty \@M \textcolor{clpblue}{#8}\@@par%
         %\ifonline\refstepcounter{HLsubsection}\pdfbookmark[2]{#8}{subsection.\theHLsubsection}\else\fi
         \else
         \ifnum#2=3%
                  \@hangfrom{\hskip #3\relax\textcolor{clpblue}{\@svsec}}%
         \interlinepenalty \@M \textcolor{clpblue}{#8}\@@par%
         %\ifonline\refstepcounter{HLsubsubsection}\pdfbookmark[3]{#8}{subsubsection.\theHLsubsubsection}\else\fi
         \else
         \ifnum#2=4%
                  \@hangfrom{\hskip #3\relax\textcolor{clpblue}{\@svsec}}%
         \interlinepenalty \@M \textcolor{clpblue}{#8}\@@par%
         \fi\fi\fi\fi}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax%
      \@svsec#8.\kern7pt}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
%
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
%   \ifreview%
%     \begingroup
%       #4{%
%         \@hangfrom{\hskip #1}%
%           \interlinepenalty \@M {\reviewsym}{{#5}}\@@par}%
%     \endgroup
%   \else%
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M {\textcolor{clpblue}{#5}}\@@par}%
    \endgroup
%  \fi%
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
%
\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindentfalse
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  End Sectioning commands  %%%%%%%%%%%%%%%%


\def\maketitle{\par\thispagestyle{plain}%%
  \begingroup%
  \parindent0pt%
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{##1}%
     \twocolumn[\@maketitle]%
  \renewcommand\thefootnote{}%
%  \footnotetext{{\corresfont\printcorres\vskip0pt\ifx\@fund\undefined\else\@fund\fi\vskip0pt\ifx\@doi\undefined\else\@doi\fi}}%
%  \ifx\printcorres\undefined\else\footnotetext{\centerline{\corresfont\vbox to -3.5pt{\printcorres}}}\fi%
  \endgroup%
  \setcounter{footnote}{0}%
%  \enlargethispage{-17.5pt}%
% \advance\keywordcount0%
% \advance\authorcount0%
% \ifSingleColAbs
% {\ifx\@abstract\@undefined\else\abstractfont\noindent\ignorespaces\@abstract{\par}\vskip5.5pt\fi}%
% {\noindent\ifnum\c@keytext>0
% \noindent\printkeyword\ifnum\c@keytext=2\vskip7.5pt%
% \printkeyiiword\else\fi\else \vskip-7.5pt\fi}
%%%%% {\ifx\@abstract\@undefined\global\metadoitrue\else
%%%%% {\ifOAarticle%
%%%%%      %\def\LDcopyline{\relax}
%%%%%      \vskip6pt
%%%%%      {%\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{12}\selectfont\@copyline\par
%%%%%      \ifx\@doi\undefined\else\noindent\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{12}\selectfont%
%%%%% 	\ifonline%
%%%%% 	    \noindent{\textcolor{linkcolor}{\href{https://doi.org/\@doi}{https://doi.org/\@doi}}\par}%
%%%%% 	\else%
%%%%% 	    \noindent{https://doi.org/\@doi\par}%
%%%%% 	\fi%
%%%%%      	\vspace*{-3pt}\par
%%%%%      \fi}
%%%%% \else%
%%%%%      {\ifx\@doi\undefined\else\vskip6pt\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{12}\selectfont%
%%%%%      \ifonline%
%%%%% 	\noindent\textcolor{linkcolor}{\href{https://doi.org/\@doi}{https://doi.org/\@doi}}\par%
%%%%%      \else%
%%%%% 	\noindent{https://doi.org/\@doi\par}%
%%%%%      \fi%
%%%%%      \vspace*{-3pt}\par
%%%%%      \fi}
%%%%% \fi}
%%%%% \fi}
% \ifx\@abstract\@undefined\else\noindent\vrule width\columnwidth height0.4pt\par\fi
%\@afterindentfalse%%
\vskip9.5pt
}

% \authorbelowskip=0pt
% \def\maxpagelimit{4}

% \def\LDcopyline{\ifx\@copyline\undefined\else\let\textcopyright\HELcopyright\ifOAarticle\else\ifCCBYlicensetype\par\vskip6pt\noindent\else\hspace*{1em}\fi{\fontfamily{\sfdefault}\fontseries{m}\fontsize{8}{8}\selectfont\@copyline}\fi\fi}

\newcount\afflabcnt\afflabcnt1

\def\affil#1{%
    \expandafter\protected@xdef\csname affil\the\affilcount\endcsname{#1}%
    \global\advance\affilcount1}%

\def\printaffil{\vspace*{-2.5pt}%
     \global\tempaffilcount\affilcount%
     \global\affiltempcount0%
     \global\advance\tempaffilcount-1
     \ifnum\affilcount=1%
     \ignorespaces\csname affil0\endcsname%
%     \protected@write\@auxout{}{\string\noaffnum}%
     \else%
     %\textcolor{red}{\the\tempaffilcount;\the\affiltempcount}
     \@whilenum\affiltempcount<\tempaffilcount%
     \do{\raisebox{2.5pt}{\the\afflabcnt\kern1.5pt}\csname affil\the\affiltempcount\endcsname\vspace*{2pt}\@@par%
                \global\advance\affiltempcount1\global\advance\afflabcnt1}%
                \raisebox{2.5pt}{\the\afflabcnt\kern1.5pt}\csname affil\the\affiltempcount\endcsname\@@par\fi}%

% \newcount\correspcnt
% \def\@correspcnt#1{\ensuremath{\ifcase#1\or *\or **\or
%    ***\or \dagger\or \dagger\dagger
%    \or \ddagger\ddagger \or\mathparagraph \else\@ctrerr\fi}} %\|\or

%\newcommand\thecorrespsym{\@correspsym\c@correspcnt}%

\def\corprefix{{\bfseries Corresponding author: }}
\def\corsym#1{\fontseries{bc}$^{#1}$\corprefix}

\def\corresp#1{%
    \expandafter\protected@xdef\csname corresp\the\correspcount\endcsname{#1}%
    \global\advance\correspcount1}%

\def\printcorresp{\vspace*{6pt}%
     \global\tempcorrespcount\correspcount%
     \global\corresptempcount0%
     \global\advance\tempcorrespcount-1
     \ifnum\correspcount=1%
     \ignorespaces\csname corresp0\endcsname%
%     \protected@write\@auxout{}{\string\noaffnum}%
     \else%
     \@whilenum\corresptempcount<\tempcorrespcount%
     \do{\csname corresp\the\corresptempcount\endcsname\vspace*{2pt}\@@par%  {\bfseries Corresponding author: }
                \global\advance\corresptempcount1}%
                \csname corresp\the\corresptempcount\endcsname\@@par\fi}% {\bfseries Corresponding author: }


\def\receivedname{Received\ }
\def\acceptedname{Accepted\ }
\def\postedname{Posted Online\ }
\def\historysep{\hskip4.5pt\textcolor{clpblue}{|}\hskip4.5pt}
\def\titlebarvoldatesep{\hskip4.75pt\textcolor{titlebarsep}{|}\hskip4.75pt}

\def\received#1{\gdef\@received{#1}}\received{}
\def\accepted#1{\gdef\@accepted{#1}}\accepted{}
\def\posted#1{\gdef\@posted{#1}}\posted{}
\def\pgseqprefix#1{\gdef\@pgseqprefix{#1}}\pgseqprefix{}
\def\doi#1{\gdef\@doi{#1}}\doi{}
\def\OCIScodes#1{\gdef\@OCIScodes{#1}}\OCIScodes{}
\def\keywords#1{\gdef\@keywords{#1}}\keywords{}

% \def\OCIScodes#1{\gdef\@OCIScodes{{\bfseries {\OCISname}: }#1}}\OCIScodes{}
% \def\keywords#1{\gdef\@keywords{{\bfseries {\keywordname}: }#1}}\keywords{}

\def\OCISname{Keywords} % OCIS codes
\def\keywordname{Keywords}

\gdef\@historyline{\par\historyfont{\textcolor{clpblue}{\receivedname}}\@received{\historysep}{\textcolor{clpblue}{\acceptedname}}\@accepted{\historysep}{\textcolor{clpblue}{\postedname}}\@posted}


\RequirePackage{framed}

\renewenvironment{leftbar}{%
  \def\FrameCommand{\hspace{-3pt}\textcolor{clpblue}{\vrule width 2pt} \hspace{-8pt}}%
  \MakeFramed {\advance\hsize-\width \FrameRestore}}%
 {\endMakeFramed}


\newenvironment{abstract}{%
   \global\setbox\abstractbox\vbox%
   \bgroup\begin{leftbar}\abstractfont%
   \setlength\parindent{0pt}}
   {\par\vspace*{7pt}\ifx\@OCIScodes\@empty\else{{\bfseries {\OCISname}: }{\reset@font\kwdfont\@OCIScodes}}\fi\ifx\@doi\@empty\else\par{\bfseries DOI: }\reset@font\kwdfont\@doi\fi\end{leftbar}\egroup}
% \ifx\@keywords\@empty\else{{\bfseries {\keywordname}: }{\reset@font\kwdfont\@keywords}}\fi

\def\@maketitle{\par%
{\parindent\z@%
%\ifx\@subtitle\@empty%
%\else%
%%\vskip-10.5pt%
%%{\subtitlefont\@subtitle\vphantom{y}\vskip10.5pt}%
%\fi%
%\vspace*{2.8pt}
%\vspace*{-8.7pt}\ifauthorquery\else\vspace*{9pt}\fi%
\vspace*{-10.55pt}%
%
\vspace*{2.9pt}
{\titlefont\@title\vskip6pt}%\global\boldfalse%
\vspace*{10.5pt}
%\begin{CJK*}{UTF8}{kai}%
{{\authorfont\@author}}%
%\end{CJK*}
{\ifx\printaffil\undefined\else\affilfont\printaffil\fi%\printmember
}%
{\ifx\printcorresp\undefined\else\correspfont\printcorresp\fi%\printmember
}%
{\@historyline\par}%
{%\ifx\@abstract\@undefined\else
\abstractfont\unvbox\abstractbox{\par}\vskip7.5pt%\fi
}%
{\ifx\@corid\undefined\else\vskip-1.5pt{{\corresfont \unhbox\correspbox}}\fi\vskip8pt}%
{\ifx\printhistory\undefined\else\printhistory\par\vskip1pt\fi}%
%
%     \ifx\@abstract\@undefined\vskip10pt\par\else\ifnum\c@keytext>0\else\vskip3pt\fi\fi%
}
%\vskip29pt%
% \ifSingleColAbs\addvspace{14pt}\else\addvspace{29pt}\fi%
\addvspace{29pt}
% \vspace*{\mktitleskip}%
%\@afterheading%
\@afterindentfalse%
\setcounter{section}{0}
}


\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}

% \newcommand\section{\@startsection {section}{1}{\z@}%
%                                    {-3.5ex \@plus -1ex \@minus -.2ex}%
%                                    {2.3ex \@plus.2ex}%
%                                    {\normalfont\Large\bfseries}}
% \newcommand\subsection{\@startsection{subsection}{2}{\z@}%
%                                      {-3.25ex\@plus -1ex \@minus -.2ex}%
%                                      {1.5ex \@plus .2ex}%
%                                      {\normalfont\large\bfseries}}
% \newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
%                                      {-3.25ex\@plus -1ex \@minus -.2ex}%
%                                      {1.5ex \@plus .2ex}%
%                                      {\normalfont\normalsize\bfseries}}
% \newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
%                                     {3.25ex \@plus1ex \@minus.2ex}%
%                                     {-1em}%
%                                     {\normalfont\normalsize\bfseries}}
% \newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
%                                        {3.25ex \@plus1ex \@minus .2ex}%
%                                        {-1em}%
%                                       {\normalfont\normalsize\bfseries}}






\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
% \if@titlepage
%   \newenvironment{abstract}{%
%       \titlepage
%       \null\vfil
%       \@beginparpenalty\@lowpenalty
%       \begin{center}%
%         \bfseries \abstractname
%         \@endparpenalty\@M
%       \end{center}}%
%      {\par\vfil\null\endtitlepage}
% \else
%   \newenvironment{abstract}{%
%       \if@twocolumn
%         \section*{\abstractname}%
%       \else
%         \small
%         \begin{center}%
%           {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
%         \end{center}%
%         \quotation
%       \fi}
%       {\if@twocolumn\else\endquotation\fi}
% \fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
% \if@compatibility
% \newenvironment{titlepage}
%     {%
%       \if@twocolumn
%         \@restonecoltrue\onecolumn
%       \else
%         \@restonecolfalse\newpage
%       \fi
%       \thispagestyle{empty}%
%       \setcounter{page}\z@
%     }%
%     {\if@restonecol\twocolumn \else \newpage \fi
%     }
% \else
% \newenvironment{titlepage}
%     {%
%       \if@twocolumn
%         \@restonecoltrue\onecolumn
%       \else
%         \@restonecolfalse\newpage
%       \fi
%       \thispagestyle{empty}%
%       \setcounter{page}\@ne
%     }%
%     {\if@restonecol\twocolumn \else \newpage \fi
%      \if@twoside\else
%         \setcounter{page}\@ne
%      \fi
%     }
% \fi
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}

\newcommand\figurename{Fig.}
\newcommand\tablename{Table}

% \renewcommand \thefigure {\@arabic\c@figure}
% \def\fps@figure{tbp}
% \def\ftype@figure{1}
% \def\ext@figure{lof}
% \def\fnum@figure{\figurename\nobreakspace\thefigure}
% \newenvironment{figure}
%                {\@float{figure}}
%                {\end@float}
% \newenvironment{figure*}
%                {\@dblfloat{figure}}
%                {\end@dblfloat}

% \renewcommand\thetable{\@arabic\c@table}
% \def\fps@table{tbp}
% \def\ftype@table{2}
% \def\ext@table{lot}
% \def\fnum@table{\tablename\nobreakspace\thetable}
% \newenvironment{table}
%                {\@float{table}}
%                {\end@float}
% \newenvironment{table*}
%                {\@dblfloat{table}}
%                {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{-5\p@}
\setlength\belowcaptionskip{0\p@}
% \long\def\@makecaption#1#2{%
%   \vskip\abovecaptionskip
%   \sbox\@tempboxa{#1: #2}%
%   \ifdim \wd\@tempboxa >\hsize
%     #1: #2\par
%   \else
%     \global \@minipagefalse
%     \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%   \fi
%   \vskip\belowcaptionskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Figures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\figcaptiondesc#1{\gdef\@figcaptiondesc{#1}}
\figcaptiondesc{}
%
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}

% \def\figurehead#1{\gdef\@figurehead{#1}}\figurehead{}
\def\fnum@figure{\figcaptionnumfont{\figurename~\thefigure}}

\newif\ifimage\global\imagefalse

%\newenvironment{figure}
%               {\global\imagetrue\@float{figure}}
%               {\end@float\global\imagefalse\global\nosidecapfalse}

\newenvironment{figure}
               {\global\imagetrue\@float{figure}} %
               {\end@float\global\imagefalse} %\global\nosidecapfalse\global\swapfigfalse}

\def\@float#1{%
  \@ifnextchar[%
    {\@xfloat{#1}}%
    {\edef\reserved@a{\noexpand\@xfloat{#1}[\csname fps@#1\endcsname]}%
     \reserved@a}}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
%
\newenvironment{Figure}
               {\par\addvspace{12pt plus2pt}\def\@captype{figure}}
               {\par\addvspace{12pt plus2pt}}
%
\newenvironment{Figure*}
               {\par\addvspace{12pt plus2pt}\def\@captype{figure}}
               {\par\addvspace{12pt plus2pt}}

%
\def\figlabelfont{\fontsize{10}{12}\selectfont}
\def\figlabel#1{\gdef\@figlabel{#1}}
\figlabel{}
%
%\figcaptionleftskip0pt
%\figcaptionrightskip0pt
% \figindent0pt
% \figwidthcapdimen12pt
%\figleftskip0pt
%\figrightskip0pt
%\adjustskip0pt
%
\newdimen\figcappush
\newdimen\figcappull
\newbox\figscapbox

%\newif\ifnosidecap\global\nosidecapfalse

%\def\sidecapoff{\global\nosidecaptrue}

%\def\swapfig{\global\swapfigtrue}

\def\figpunct{.}

%%%%%%%figure sidecaption%%%%%%%%%%
\newbox\figbox
\newdimen\figheight%

% \def\Ginclude@graphics#1{%
%   \global\setbox\figbox\hbox\bgroup\begingroup
%   \let\input@path\Ginput@path
%    \filename@parse{#1}%
%   \ifx\filename@ext\relax
%     \@for\Gin@temp:=\Gin@extensions\do{%
%       \ifx\Gin@ext\relax
%         \Gin@getbase\Gin@temp
%       \fi}%
%   \else
%     \Gin@getbase{\Gin@sepdefault\filename@ext}%
%     \ifx\Gin@ext\relax
%        \@warning{File `#1' not found}%
%        \def\Gin@base{\filename@area\filename@base}%
%        \edef\Gin@ext{\Gin@sepdefault\filename@ext}%
%     \fi
%   \fi
%     \ifx\Gin@ext\relax
%          \@latex@error{File `#1' not found}%
%          {I could not locate the file with any of these extensions:^^J%
%           \Gin@extensions^^J\@ehc}%
%     \else
%        \@ifundefined{Gin@rule@\Gin@ext}%
%          {\ifx\Gin@rule@*\@undefined
%             \@latex@error{Unknown graphics extension: \Gin@ext}\@ehc
%           \else
%             \expandafter\Gin@setfile\Gin@rule@*{\Gin@base\Gin@ext}%
%            \fi}%
%          {\expandafter\expandafter\expandafter\Gin@setfile
%              \csname Gin@rule@\Gin@ext\endcsname{\Gin@base\Gin@ext}}%
%     \fi
%   \endgroup\egroup\ifimage\else\copy\figbox\fi}


\def\@makefigurecaption#1#2{\figcaptionfont%\raggedright%
\global\setbox\figcapbox\hbox{\figcaptionfont{\figcaptionnumfont\fontseries{b}#1\figpunct\ }{\figcaptiondescfont\@figcaptiondesc}\hskip\figcapdescsep#2.\par}
\def\capprint{\centerline{\copy\figbox}\vskip\abovecaptionskip\unhbox\figcapbox}%
% \ifnosidecap\capprint\else%
% \ifdim\wd\figbox<245pt%
% \figcappush\wd\figbox%
% \advance\figcappush12pt%
% \global\setbox\figscapbox\vbox{\ifodd\c@page\ifswapfig\leftskip\else\rightskip\fi\else\ifswapfig\rightskip\else\leftskip\fi\fi\figcappush\unhbox\figcapbox}%
% \def\placefig{\copy\figbox\vspace*{-\ht\figscapbox}\unvbox\figscapbox}
% \ifodd\c@page\ifswapfig\placefig\vspace*{\textfloatsep}\else\hfill\placefig\fi\else\ifswapfig\hfill\placefig\else\placefig\vspace*{\textfloatsep}\fi\fi%
% \else%
\capprint%
%\fi\fi
}


\def\FigName{figure}
% \def\TabName{table}
%
\long\def\@makecaption#1#2{%
    \ifx\FigName\@captype
      \@makefigurecaption{#1}{\textcolor{clpgraytwo}{#2}}%
      \vskip0pt
    \else
%     \ifx\TabName\@captype
      \@maketablecaption{#1}{#2}%
      \vskip\belowcaptionskip
%       \else
%       \fi
    \fi
    }

\renewcommand\thetable{\arabic{table}}
%
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\ \thetable.\ }
%
\def\tablefootnote#1{
        \global\advance\tfootcount1\expandafter\gdef\csname tablefootnote\the\tfootcount\endcsname{#1}}
%
\newenvironment{table}
               {%\global\tableshowtrue
               \let\footnote\tablefootnote%
               \@float{table}}
               {\end@float\gdef\@tbnote{}} %\global\tableshowfalse
%
\def\tablebelowspace#1{\gdef\@tablebelowspace{#1}}\tablebelowspace{}
%
\newenvironment{table*}
               {\let\footnote\tablefootnote%%
               \@dblfloat{table}}
               {%
                  \ifx\@tablebelowspace\@empty%
                  \else%
                    \vspace*{\@tablebelowspace}\tablebelowspace{}%
                  \fi%
               \end@dblfloat\global\tablefootnotenonefalse\global\killtableabovespacefalse}
%

\newenvironment{Table}
               {\par\addvspace{12pt plus2pt}\def\@captype{table}}
               {\par\addvspace{12pt plus2pt}}
%
\newenvironment{boxtextTable}[1][\relax]%
               {\par\addvspace{12pt plus2pt}\def\@captype{table}}
               {\par\addvspace{12pt plus2pt}}
%
\newenvironment{Table*}
               {\par\addvspace{12pt plus2pt}\def\@captype{table}}
               {\par\addvspace{12pt plus2pt}}
%
\def\tableabovespace#1{\gdef\@tableabovespace{#1}}\tableabovespace{}
%

\tablenumcapsep=1.25pt
\def\TCH#1{\TCHfont#1}
%
\def\tableshade#1{\gdef\@tableshade{#1}}\tableshade{0pt}%
\def\tableruleheight#1{\gdef\@tableruleheight{#1}}\tableruleheight{138pt}%
%
\def\tablenum{{\tablecaptionnumfont \tablename~\thetable}}

\def\tbnote#1{\gdef\@tbnote{#1\par}}\tbnote{}%

\long\def\multicolumn#1#2#3{\multispan{#1}\begingroup
  \@mkpream{#2}%
  \def\@sharp{#3}%\setbox\tempbox\hbox{#3}\raise-5pt\hbox to 0pt{\hfill\hbox{\vrule height.5pt width\wd\tempbox depth0pt}}
  \set@typeset@protect
  \let\@startpbox\@@startpbox\let\@endpbox\@@endpbox
  \@arstrut \@preamble\hbox{}\endgroup\ignorespaces}
%
\def\@cline#1-#2\@nil{%
  \omit
  \@multicnt#1%
  \advance\@multispan\m@ne
  \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2%
  \advance\@multicnt-#1%
  \advance\@multispan\@ne
  \leaders\hrule\@height\arrayrulewidth\hfill
  \cr
  \noalign{\vskip-\arrayrulewidth}}
%
%%%%%%%%%%%%%%% B-Table Rules %%%%%%%%%%%%%%
%
\toprulewidth=0.5pt%.47pt
\midrulewidth=0.5pt%.47pt
\botrulewidth=\toprulewidth
\cmidrulewidth=0.25pt%.42pt
\belowbottomsep=0pt
\abovetopsep=0pt
\cmidrulesep=\doublerulesep
\cmidrulekern=.5em
\defaultaddspace=.5em
%
\newdimen\TableWidth%%
\newdimen\TableHeight%%
\newdimen\Tablecapht%%
\newdimen\spancolwidth%%
\newdimen\ccolumnwd%%
\newdimen\tempspancolwidth%%
\newdimen\tempaspancolwidth%%
\newdimen\addedcolsep%%
\newdimen\@@star@colcount%%%
\newdimen\@@TotalTableWidth%%
\newdimen\thatdim%%
\newdimen\thisdim%%
\newdimen\total@colsep%%
\newdimen\ext@colsep%%
\newdimen\tempadim%%
\newdimen\tabfirstcolsep%%
\newdimen\tabsecondcolsep%%
\newdimen\tablastcolsep%%
\newdimen\TB@dimen@one\TB@dimen@one10\p@%%
\newdimen\TB@dimen@two\TB@dimen@two40\p@%%

\newcount\tbodycount\tbodycount=0%%
\newcount\tempfltcount%%
\newcount\tqrtcount\tqrtcount=0%%
\newcount\ttqrtcount\ttqrtcount=0%%
\newcount\captionintab%%
\newcount\Ncols%%
\newcount\colcount%%
\newcount\rowcount%%
\newcount\spancolcount%%
\newcount\AlltgroupCount%%
\newcount\tabcount%%
\newcount\tabnotecount%%
\newcount\tempColnum%%
\newcount\colspancount%%
\newcount\starcolcount%%
\newcount\tempcounta%%
\newcount\col@cnta%%
\newcount\col@cnt%%
\newcount\col@cntc%%
\newcount\spanstart%%
\newcount\spanend%%
\newcount\chkcount%%
\newcount\temp@cnta%%
\newcount\temp@cntb%%
\newcount\temp@cntc\temp@cntc=0%%
\newcount\temp@cntd%%
\newcount\temp@cnte%%
\newcount\coltintpercent%%
\newcount\tqrtcount\tqrtcount0%
\newcount\ttqrtcount\ttqrtcount=0%
\newcount\TB@tempcount\TB@tempcount0%
\newcount\aidcount\aidcount0%
\newcount\colcount

%%%%%%%%%%%%%%% B-BookTabs %%%%%%%%%%%%%%
\newcount\@cmidla
\newcount\@cmidlb
\newdimen\@aboverulesep
\newdimen\@belowrulesep
\newcount\@thisruleclass
\newcount\@lastruleclass
%%%%%%%%%%%%%%% E-BookTabs %%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% B-Booktabs Materials %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\@lastruleclass=0
\def\futurenonspacelet#1{\def\@BTcs{#1}%
   \afterassignment\@BTfnslone\let\nexttoken= }
\def\@BTfnslone{\expandafter\futurelet\@BTcs\@BTfnsltwo}
\def\@BTfnsltwo{\expandafter\ifx\@BTcs\@sptoken\let\next=\@BTfnslthree
   \else\let\next=\nexttoken\fi \next}
\def\@BTfnslthree{\afterassignment\@BTfnslone\let\next= }
\def\topline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep %global cos for use in the next noalign
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\toprulewidth]}}
\def\midline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\midrulewidth]}}
\def\botline{\noalign{\ifnum0=`}\fi
  \@aboverulesep=\aboverulesep
  \global\@belowrulesep=\belowrulesep
  \global\@thisruleclass=\@ne
  \@ifnextchar[{\@BTrule}{\@BTrule[\botrulewidth]}}
\def\specialrule#1#2#3{\noalign{\ifnum0=`}\fi
  \@aboverulesep=#2\global\@belowrulesep=#3\global\@thisruleclass=\tw@
  \@BTrule[#1]}
\def\addlinespace{\noalign{\ifnum0=`}\fi
  \@ifnextchar[{\@addspace}{\@addspace[\defaultaddspace]}}
\def\@addspace[#1]{\global\@belowrulesep=#1\global\@thisruleclass=\tw@
  \futurelet\@tempa\@BTendrule}
\def\@BTrule[#1]{%
  \global\@thisrulewidth=#1\relax
  \ifnum\@thisruleclass=\tw@\vskip\@aboverulesep\else
  \ifnum\@lastruleclass=\z@\vskip\@aboverulesep\else
  \ifnum\@lastruleclass=\@ne\vskip\doublerulesep\fi\fi\fi
  \ifx\longtable\undefined
     \let\@BTswitch\@BTnormal
  \else\ifx\hline\LT@hline
     \let\@BTswitch\@BLTrule
  \else
     \let\@BTswitch\@BTnormal
  \fi\fi
  \@BTswitch}
\AtBeginDocument{%
   \providecommand*\CT@arc@{}}%% colortbl support
\def\@BTnormal{%\color{aucolor}{%
    {\CT@arc@\hrule\@height\@thisrulewidth}%
    \futurenonspacelet\@tempa\@BTendrule}%}
\def\@BLTrule{\@ifnextchar({\@@BLTrule}{\@@BLTrule()}}
\def\@@BLTrule(#1){\@setrulekerning{#1}%
\global\@cmidlb\LT@cols
\ifnum0=`{\fi}%
\@cmidruleb
\noalign{\ifnum0=`}\fi
\futurenonspacelet\@tempa\@BTendrule}
\def\@BTendrule{%
\ifx\@tempa\toprule\global\@lastruleclass=\@thisruleclass
\else
    \ifx\@tempa\midrule\global\@lastruleclass=\@thisruleclass
    \else
        \ifx\@tempa\bottomrule\global\@lastruleclass=\@thisruleclass
        \else
            \ifx\@tempa\cmidrule\global\@lastruleclass=\@thisruleclass
            \else
                \ifx\@tempa\specialrule\global\@lastruleclass=\@thisruleclass
                \else
                    \ifx\@tempa\addlinespace\global\@lastruleclass=\@thisruleclass
                    \else
                        \global\@lastruleclass=\z@
                    \fi
                \fi
            \fi
        \fi
    \fi
\fi
  \ifnum\@lastruleclass=\@ne\relax\else\vskip\@belowrulesep\fi
  \ifnum0=`{\fi}
  }
\def\@setrulekerning#1{%
   \global\let\cmrkern@l\z@
   \global\let\cmrkern@r\z@
   \@tfor\@tempa :=#1\do
  {\def\@tempb{r}%
   \ifx\@tempa\@tempb
      \global\let\cmrkern@r\cmidrulekern
      \def\cmrsideswitch{\cmrkern@r}%
   \else
      \def\@tempb{l}%
      \ifx\@tempa\@tempb
         \global\let\cmrkern@l\cmidrulekern
         \def\cmrsideswitch{\cmrkern@l}%
      \else
         \global\expandafter\let\cmrsideswitch\@tempa
      \fi
   \fi}}
\def\cmidrule{\noalign{\ifnum0=`}\fi
    \@ifnextchar[{\@cmidrule}{\@cmidrule[\cmidrulewidth]}}
\def\@cmidrule[#1]{\@ifnextchar({\@@cmidrule[#1]}{\@@cmidrule[#1]()}}
\def\@@cmidrule[#1](#2)#3{\@@@cmidrule[#3]{#1}{#2}}
\def\@@@cmidrule[#1-#2]#3#4{\global\@cmidla#1\relax
    \global\advance\@cmidla\m@ne
    \ifnum\@cmidla>0\global\let\@gtempa\@cmidrulea\else
    \global\let\@gtempa\@cmidruleb\fi
    \global\@cmidlb#2\relax
    \global\advance\@cmidlb-\@cmidla
    \global\@thisrulewidth=#3
    \@setrulekerning{#4}
    \ifnum\@lastruleclass=\z@\vskip \aboverulesep\fi
    \ifnum0=`{\fi}\@gtempa
    \noalign{\ifnum0=`}\fi\futurenonspacelet\@tempa\@xcmidrule}
\def\@xcmidrule{%
   \ifx\@tempa\cmidrule
       \vskip-\@thisrulewidth
       \global\@lastruleclass=\@ne
   \else \ifx\@tempa\morecmidrules
       \vskip \cmidrulesep
       \global\@lastruleclass=\@ne\else
       \vskip \belowrulesep
       \global\@lastruleclass=\z@
   \fi\fi
   \ifnum0=`{\fi}}
\def\@cmidrulea{%
   \multispan\@cmidla&\multispan\@cmidlb
   \unskip\hskip\cmrkern@l%
  {\CT@arc@\leaders\hrule \@height\@thisrulewidth\hfill}%
   \hskip\cmrkern@r\cr}%
\def\@cmidruleb{%
    \multispan\@cmidlb
    \unskip\hskip \cmrkern@l%
   {\CT@arc@\leaders\hrule \@height\@thisrulewidth\hfill}%
    \hskip\cmrkern@r\cr}%
\def\morecmidrules{\noalign{\relax}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% E-Booktabs Materials %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\tabtoprule{\TOPrule}
\def\tabmidrule{\COLrule}
\def\tabbotrule{\BOTrule}


\tabfirstcolsep=0.5pc%%
\tabsecondcolsep=0.5pc%%
\tablastcolsep=\z@%


%%%%%%%%%%%%%%% E-Table Rules %%%%%%%%%%%%%%

\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height .5pt \futurelet%\@height \arrayrulewidth
   \@tempa\@xhline}
%
\def\Mline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 0pt \futurelet%\@height \arrayrulewidth
   \@tempa\@xhline}
%
\def\topline{%
  \noalign{\ifnum0=`}\fi\hrule \@height .5pt \futurelet%\@height \arrayrulewidth
   \@tempa\@xhline}

% \def\colline{%
%   \noalign{\ifnum0=`}\fi\hrule \@height .25pt \futurelet%\@height \arrayrulewidth
%    \@tempa\@xhline}


\def\toprule{\\[-8.5pt]\topline\\[-6.1pt]}
\def\colrule{\\[-8.5pt]\midline\\[-6pt]}
\def\botrule{\\[-5.5pt]\botline\\[-6pt]}
%

\newdimen\tablemove

\def\tbl#1#2#3{%
\global\setbox\tabcapbox\vbox{#1}%
\global\setbox\tabbox\hbox{#2}%
\global\setbox\tabnotebox\vbox{#3}%
\hfil\vbox{%
\tablemove\textwidth%
\advance\tablemove-\wd\tabbox%
\divide\tablemove2%
%\hspace*{\tablemove}
\vbox{%
\hsize\wd\tabbox%
\@maketablecaption{\tablename~\thetable}{#1}\par%
%#1\par
%{\fontfamily{\sffamily}\fontsize{9}{10.8}\selectfont#2}\par%
#2\par
#3}}}



\def\@maketablecaption#1#2{
\setbox\tabcapbox\vbox{{\tablecaptionfont\noindent{\tablecaptionnumfont#1}{\tablecaptionnumfont}\hskip\tablenumcapsep#2.\vphantom{y}\par}}
%\ifdim\wd\tabcapbox<\textwidth
\ifdim\ht\tabcapbox<19pt
%\centerlast
{\tablecaptionfont\noindent{\tablecaptionnumfont#1}{\tablecaptionnumfont}\hskip\tablenumcapsep#2.\vphantom{y}\vskip.8pt}%\global\unnumtablefalse%
\else
{\tablecaptionfont\noindent{\tablecaptionnumfont#1}{\tablecaptionnumfont}\hskip\tablenumcapsep#2.\vphantom{y}\vskip.8pt}%\global\unnumtablefalse%
\fi}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

% \newcommand\@pnumwidth{1.55em}
% \newcommand\@tocrmarg{2.55em}
% \newcommand\@dotsep{4.5}
% \setcounter{tocdepth}{3}
% \newcommand\tableofcontents{%
%     \section*{\contentsname
%         \@mkboth{%
%            \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
%     \@starttoc{toc}%
%     }
% \newcommand*\l@part[2]{%
%   \ifnum \c@tocdepth >-2\relax
%     \addpenalty\@secpenalty
%     \addvspace{2.25em \@plus\p@}%
%     \setlength\@tempdima{3em}%
%     \begingroup
%       \parindent \z@ \rightskip \@pnumwidth
%       \parfillskip -\@pnumwidth
%       {\leavevmode
%        \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
%        \nobreak
%        \if@compatibility
%          \global\@nobreaktrue
%          \everypar{\global\@nobreakfalse\everypar{}}%
%       \fi
%     \endgroup
%   \fi}
% \newcommand*\l@section[2]{%
%   \ifnum \c@tocdepth >\z@
%     \addpenalty\@secpenalty
%     \addvspace{1.0em \@plus\p@}%
%     \setlength\@tempdima{1.5em}%
%     \begingroup
%       \parindent \z@ \rightskip \@pnumwidth
%       \parfillskip -\@pnumwidth
%       \leavevmode \bfseries
%       \advance\leftskip\@tempdima
%       \hskip -\leftskip
%       #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
%     \endgroup
%   \fi}
% \newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
% \newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
% \newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
% \newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
% \newcommand\listoffigures{%
%     \section*{\listfigurename}%
%       \@mkboth{\MakeUppercase\listfigurename}%
%               {\MakeUppercase\listfigurename}%
%     \@starttoc{lof}%
%     }
% \newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
% \newcommand\listoftables{%
%     \section*{\listtablename}%
%       \@mkboth{%
%           \MakeUppercase\listtablename}%
%          {\MakeUppercase\listtablename}%
%     \@starttoc{lot}%
%     }
% \let\l@table\l@figure
% \newdimen\bibindent
% \setlength\bibindent{1.5em}
% \newenvironment{thebibliography}[1]
%      {\section*{\refname}%
%       \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
%       \list{\@biblabel{\@arabic\c@enumiv}}%
%            {\settowidth\labelwidth{\@biblabel{#1}}%
%             \leftmargin\labelwidth
%             \advance\leftmargin\labelsep
%             \@openbib@code
%             \usecounter{enumiv}%
%             \let\p@enumiv\@empty
%             \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%       \sloppy
%       \clubpenalty4000
%       \@clubpenalty \clubpenalty
%       \widowpenalty4000%
%       \sfcode`\.\@m}
%      {\def\@noitemerr
%        {\@latex@warning{Empty `thebibliography' environment}}%
%       \endlist}
% \newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
% \let\@openbib@code\@empty

%\setlength{\bibsep}{0.3mm}
\def\bibfont{\fontsize{8}{10}\selectfont}
%\setlength{\bibhang}{9pt}
\def\bibname{Bibliography}
%\def\refname{References}
%\providecommand\@biblabel[1]{#1.}


\newenvironment{thebibliography}[1]{%
 \bibsection%
 \parindent\z@
 \bibpreamble
 \bibfont
 \list{\@biblabel{\the\c@NAT@ctr}}{\@bibsetup{#1}\global\c@NAT@ctr\z@}%
 \ifNAT@openbib
   \renewcommand\newblock{\par}%
 \else
   \renewcommand\newblock{}%
 \fi
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.\@m
 \let\NAT@bibitem@first@sw\@firstoftwo
    \let\citeN\cite \let\shortcite\cite
    \let\citeasnoun\cite
}{%
 \bibitem@fin
 \bibpostamble
 \def\@noitemerr{%
  \PackageWarning{natbib}{Empty `thebibliography' environment}%
 }%
 \endlist
 \bibcleanup
}
\newcommand\newblock{}

\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \columnseprule \z@
                \columnsep 35\p@
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
% \newcommand\figurename{Figure}
% \newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{18\p@}
\setlength\columnseprule{0\p@}
% \pagestyle{headings}
\pagenumbering{arabic}
% \if@twoside
% \else
%   \raggedbottom
% \fi
% \if@twocolumn
%   \twocolumn
%  \sloppy
%  \flushbottom
% \else
%   \onecolumn
% \fi

\DeclareMathSizes{5}     {5}   {3}  {2}
\DeclareMathSizes{6}     {6}   {4}  {3}
\DeclareMathSizes{7}     {7}   {4.5}  {3.5}
\DeclareMathSizes{8}     {8}   {6}  {5}
\DeclareMathSizes{9}     {9}   {5}  {4}
\DeclareMathSizes{9.5}     {9.5}   {6.5}  {4.5}
\DeclareMathSizes{10}   {10}   {6}  {5}
\DeclareMathSizes{10.95}{10.95}{7}  {6}
\DeclareMathSizes{12}   {12}   {9}  {7}
\DeclareMathSizes{14.4} {14.4} {10} {8}
\DeclareMathSizes{17.28}{17.28}{12} {9}
\DeclareMathSizes{20.74}{20.74}{14.4}{10}
\DeclareMathSizes{24.88}{24.88}{17.28}{12}

\endinput
%%
%% End of file `article.cls'.
