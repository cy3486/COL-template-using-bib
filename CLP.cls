% CLP.cls
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CLP}[2020/11/26 v1.03 CLP document class]

%\def\CTEX@classtoload{CLParticle}
\LoadClass{CLParticle}
\RequirePackage{ctex}
\RequirePackage{jabbrv}

% \input{ctex-common-opts.def}
% \input{ctex-caption-opts.def}
% \input{ctex-class-opts.def}

% \global\CTEX@indentfalse
\InputIfFileExists{ctexopts.cfg}{}{}

% \input{ctex-loadclass.def}
%
% \input{ctex-common.def}
% %\input{ctex-caption.def}
% %\input{ctex-class.def}
% %\input{ctex-article.def}
%
% \ifpdf
% 	\pdfmapline{=gbk@UGBK@ <simsun.ttc}
% 	\pdfmapline{=gbksong@UGBK@ <simsun.ttc}
% 	\pdfmapline{=gbkkai@UGBK@ <simkai.ttf}
% 	\pdfmapline{=gbkhei@UGBK@ <SourceHanSans-Regular.ttf}
% 	\pdfmapline{=gbkfs@UGBK@ <simfang.ttf}
% 	\pdfmapline{=gbkli@UGBK@ <simli.ttf}
% 	\pdfmapline{=gbkyou@UGBK@ <simyou.ttf}
%
% 	\pdfmapline{=cyberb@Unicode@ <simsun.ttc}
% 	\pdfmapline{=unisong@Unicode@ <simsun.ttc}
% 	\pdfmapline{=unikai@Unicode@ <simkai.ttf}
% 	\pdfmapline{=unihei@Unicode@ <SourceHanSans-Regular.ttf}
% 	\pdfmapline{=unifs@Unicode@ <simfang.ttf}
% 	\pdfmapline{=unili@Unicode@ <simli.ttf}
% 	\pdfmapline{=uniyou@Unicode@ <simyou.ttf}
%
% 	\pdfmapline{=gbksongsl@UGBK@ <simsun.ttc}
% 	\pdfmapline{=gbkkaisl@UGBK@ <simkai.ttf}
% 	\pdfmapline{=gbkheisl@UGBK@ <SourceHanSans-Bold.ttf}
% 	\pdfmapline{=gbkfssl@UGBK@ <simfang.ttf}
% 	\pdfmapline{=gbklisl@UGBK@ <simli.ttf}
% 	\pdfmapline{=gbkyousl@UGBK@ <simyou.ttf}
%
% 	\pdfmapline{=unisongsl@Unicode@ <simsun.ttc}
% 	\pdfmapline{=unikaisl@Unicode@ <simkai.ttf}
% 	\pdfmapline{=uniheisl@Unicode@ <SourceHanSans-Regular.ttf}
% 	\pdfmapline{=unifssl@Unicode@ <simfang.ttf}
% 	\pdfmapline{=unilisl@Unicode@ <simli.ttf}
% 	\pdfmapline{=uniyousl@Unicode@ <simyou.ttf}
%
% \else
% 	\special{pdf:mapline + gbk@UGBK@ unicode :0:simsun.ttc -v 50}
% 	\special{pdf:mapline + gbksong@UGBK@ unicode :0:simsun.ttc -v 50}
% 	\special{pdf:mapline + gbkkai@UGBK@ unicode simkai.ttf -v 70}
% 	\special{pdf:mapline + gbkhei@UGBK@ unicode SourceHanSans-Regular.ttf -v 150}
% 	\special{pdf:mapline + gbkfs@UGBK@ unicode simfang.ttf -v 50}
% 	\special{pdf:mapline + gbkli@UGBK@ unicode simli.ttf -v 150}
% 	\special{pdf:mapline + gbkyou@UGBK@ unicode simyou.ttf -v 60}
%
% 	\special{pdf:mapline + cyberb@Unicode@ unicode :0:simsun.ttc -v 50}
% 	\special{pdf:mapline + unisong@Unicode@ unicode :0:simsun.ttc -v 50}
% 	\special{pdf:mapline + unikai@Unicode@ unicode simkai.ttf -v 70}
% 	\special{pdf:mapline + unihei@Unicode@ unicode SourceHanSans-Regular.ttf -v 150}
% 	\special{pdf:mapline + unifs@Unicode@ unicode simfang.ttf -v 50}
% 	\special{pdf:mapline + unili@Unicode@ unicode simli.ttf -v 150}
% 	\special{pdf:mapline + uniyou@Unicode@ unicode simyou.ttf -v 60}
%
% 	\special{pdf:mapline + gbksongsl@UGBK@ unicode :0:simsun.ttc -s .167 -v 50}
% 	\special{pdf:mapline + gbkkaisl@UGBK@ unicode simkai.ttf -s .167 -v 70}
% 	\special{pdf:mapline + gbkheisl@UGBK@ unicode SourceHanSans-Regular.ttf -s .167 -v 150}
% 	\special{pdf:mapline + gbkfssl@UGBK@ unicode simfang.ttf -s .167 -v 50}
% 	\special{pdf:mapline + gbklisl@UGBK@ unicode simli.ttf -s .167 -v 150}
% 	\special{pdf:mapline + gbkyousl@UGBK@ unicode simyou.ttf -s .167 -v 60}
%
% 	\special{pdf:mapline + unisongsl@Unicode@ unicode :0:simsun.ttc -s .167 -v 50}
% 	\special{pdf:mapline + unikaisl@Unicode@ unicode simkai.ttf -s .167 -v 70}
% 	\special{pdf:mapline + uniheisl@Unicode@ unicode SourceHanSans-Regular.ttf -s .167 -v 150}
% 	\special{pdf:mapline + unifssl@Unicode@ unicode simfang.ttf -s .167 -v 50}
% 	\special{pdf:mapline + unilisl@Unicode@ unicode simli.ttf -s .167 -v 150}
% 	\special{pdf:mapline + uniyousl@Unicode@ unicode simyou.ttf -s .167 -v 60}
%
% \fi

\def\baselinestretch{1}%
% \AtBeginDocument{
% \renewcommand*\CTEXindent{\parindent10pt}
% \renewcommand*\CTEXnoindent{\parindent10pt}
% }
\def\CTEX@figurename{}
\def\CTEX@tablename{}
% \let\@afterindenttrue\@afterindentfalse
% \@afterindentfalse

% \ifCTEX@indent
%   \AtBeginDocument{\CTEXindent}
% \else
\AtBeginDocument{
\setlength{\parindent}{10pt}
\baselineskip12pt plus .2pt minus .05pt
}
% \fi


%\setlength{\bibsep}{0.3mm}
\def\bibfont{\fontsize{8}{10}\selectfont}
%\setlength{\bibhang}{9pt}
\def\bibname{Bibliography}
%\def\refname{References}
%\providecommand\@biblabel[1]{#1.}
\def\sourcelink#1#2{\href{https://doi.org/#1}{\textcolor{blue}{#2}}}

\renewenvironment{thebibliography}[1]{%
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
 \sloppy\clubpenalty10000\widowpenalty10000
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
\renewcommand\newblock{}

\renewcommand\@biblabel[1]{\hfill#1.}
\def\bibfont{\fontsize{8}{10}\selectfont}
\renewcommand\NAT@bibsetnum[1]{\settowidth\labelwidth{\@biblabel{#1}}%
   \setlength{\leftmargin}{\labelwidth}\addtolength{\leftmargin}{\labelsep}%
   \setlength{\itemsep}{\bibsep}\setlength{\parsep}{\z@}%
   \ifNAT@openbib
     \addtolength{\leftmargin}{\bibindent}%
     \setlength{\itemindent}{-\bibindent}%
     \setlength{\listparindent}{\itemindent}%
     \setlength{\parsep}{0pt}%
   \fi
}
\setlength{\bibhang}{1em}
\setlength{\bibsep}{0em}
\def\bibpreamble{\setlength{\labelsep}{3pt}}

% {\@listi \global\bibsep\itemsep \global\advance\bibsep by\parsep}


\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}

\def\akrobatEight#1{{\fontfamily{phv}\fontseries{c}\fontsize{8}{8}\selectfont\textcolor{clpgraytwo}{#1}}}
\def\akrobatEightbold#1{{\fontfamily{phv}\fontseries{bc}\fontsize{8}{8}\selectfont\textcolor{clpblue}{#1}}}
\def\firstfootersep{\hskip2.5pt\raisebox{-1pt}{\textcolor{clpblue}{\vrule height 7pt width 0.4pt depth0pt}}\hskip2.5pt}
\def\footercp#1{\hbox{\textcolor{footcpcolor}{\fontfamily{phv}\fontsize{7}{7}\selectfont#1}}}

\def\ps@plain{\let\@mkboth\@gobbletwo
     \let\@oddhead\@empty%
\def\@oddfoot{%
\raisebox{-6pt}{%\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lcr@{}}%
\hbox to \textwidth{{\akrobatEightbold{{\copyright}\ {\the\year}\ Chinese\ Optics\ Letters}}\hfill{{{\akrobatEight{Chinese\ Optics\ Letters\ xx(x),\ xxxxxx\ ({\the\year})}}}}}\rlap{\hspace*{-\textwidth}\hbox to \textwidth{\hfill{\akrobatEight{xxxxxx-\thepage}}\hfill}}%
%\multicolumn{2}{@{}c@{}}{\raisebox{0.5pt}{\footercp{{\copyright}\ {\the\year}\ Chinese\ Optics\ Letters}}}%
%\end{tabular*}
}%
}
     \let\@evenhead\@empty%
     \let\@evenfoot\@oddfoot}

  \def\ps@headings{%
           \def\@oddfoot{%
\raisebox{-6pt}{%\begin{tabular*}{\textwidth}{@{}p{.5\textwidth}@{\hfill}p{.5\textwidth}@{}}%
%\hbox to .5\textwidth{\raisebox{2.5pt}{\akrobatEightbold{Chinese\ Optics\ Letters}{\firstfootersep}{\akrobatEight{http://col.clp.ac.cn}}{\firstfootersep}{\akrobatEight{http://col.osa.org}}}\hfill}&\hbox to .5\textwidth{\hfill\raisebox{0.5pt}{{\akrobatEight{\the\year}}{\firstfootersep}{{\fontfamily{phv}\fontseries{bc}\fontsize{8}{8}\selectfont XXXXXXXX}}}}\\[-7pt]%
%\multicolumn{2}{@{}c@{}}{\raisebox{0.5pt}{\footercp{{\copyright}\ {\the\year}\ Chinese\ Optics\ Letters}}}%
%\end{tabular*}
\hbox to \textwidth{\hfill{\akrobatEight{xxxxxx-\thepage}}\hfill}
}%
}
      \let\@evenfoot\@oddfoot
\def\@evenhead{%
{{\llap{\includegraphics{versoBar.pdf}\hspace*{-569pt}\@@par}}}%
\rlap{\raisebox{7pt}{\hbox to \textwidth{{\fontfamily{phv}\fontseries{bc}\fontsize{10}{10}\selectfont\textcolor{white}{Vol.\ xx,\ No.\ x{\titlebarvoldatesep}\today}} \hfill \fontfamily{phv}\fontseries{bc}\fontsize{14}{14}\selectfont\textcolor{white}{Chinese\ Optics\ Letters}}}}  % {\fontfamily{phv}\fontseries{bc}\fontsize{10}{10}\selectfont\textcolor{white}{DOI:\@doi}}\enspace
        }
          \def\@oddhead{%
{{\llap{\includegraphics{rectoBar.pdf}\hspace*{-569pt}\@@par}}}%
\rlap{\raisebox{7pt}{\hbox to \textwidth{{{\fontfamily{phv}\fontseries{bc}\fontsize{14}{14}\selectfont\textcolor{white}{Chinese\ Optics\ Letters}}} \hfill {\fontfamily{phv}\fontseries{bc}\fontsize{10}{10}\selectfont\textcolor{white}{Vol.\ xx,\ No.\ x{\titlebarvoldatesep}\today}}}}}  % \enspace{\fontfamily{phv}\fontseries{bc}\fontsize{10}{10}\selectfont\textcolor{white}{DOI:\@doi}}
        }%
    \let\@mkboth\markboth
    \def\chaptermark##1{\markboth{\@versorh}{\@rectorh}}%
}

% ctex.cfg should be loaded very last
\AtEndOfPackage{%
  \makeatletter
  \InputIfFileExists{ctex.cfg}{}{}
  \makeatother}

\renewcommand{\today}{\ifcase \month \or January\or February\or March\or %
April\or May \or June\or July\or August\or September\or October\or November\or %
December\fi\ \number \year}

% \RequirePackage{CJK}

\def\@maketitle{\par%
\vspace*{-37.7pt}\llap{\includegraphics{barWithLogo.pdf}\hspace*{-569pt}\@@par\vspace*{-31pt}}%
\rlap{\hbox to \textwidth{\null\hfill {\fontfamily{phv}\fontseries{bc}\fontsize{10}{10}\selectfont\textcolor{white}{Vol.\ xx,\ No.\ x{\titlebarvoldatesep}\today\hskip-.5pt}}}\vspace*{15pt}}
{\parindent\z@%
\vspace*{12pt}
{\titlefont\@title\vskip6pt}%\global\boldfalse%
\vspace*{14.5pt}
% \begin{CJK*}{UTF8}{hei}
{{\authorfont\textcolor{clpblue}{\@author}\par}\vskip4pt}%
% \end{CJK*}
{\ifx\printaffil\undefined\else\affilfont\printaffil\fi%\printmember
}%
{\ifx\printcorresp\undefined\else\correspfont\printcorresp\fi%\printmember
}%
{\@historyline\par}%
{%\ifx\@abstract\@undefined\else
\vskip18pt\abstractfont\unvbox\abstractbox{\par}\vskip7.5pt%\fi
}%
{\ifx\@corid\undefined\else\vskip-1.5pt{{\corresfont \unhbox\correspbox}}\fi\vskip8pt}%
{\ifx\printhistory\undefined\else\printhistory\par\vskip1pt\fi}%
}
%\vskip29pt%
% \ifSingleColAbs\addvspace{14pt}\else\addvspace{29pt}\fi%
\addvspace{18pt plus 6pt minus 6pt}
% \vspace*{\mktitleskip}%
%\@afterheading%
\setcounter{section}{0}%
\@afterindentfalse%
}

% \setlength\paperwidth{216mm}
% \setlength\paperheight{279mm}

\setlength\paperheight {279mm}%
   \setlength\paperwidth  {216mm}


\setlength\textheight{673pt}%
%\addtolength\textheight{-2pt}%
%
%\setlength\normaltextheight{\textheight}%
\setlength\textwidth{523pt}%
%
%\setlength\typeheight{\textheight}%
%\setlength\typewidth{\textwidth}%

\setlength\topmargin{10.5pt}%
\setlength\oddsidemargin{48.5pt}%
\setlength\evensidemargin{48.5pt}%
%
\setlength\headheight{23\p@}%
\setlength\headsep   {15pt}% \typeheight - \textheight - \headheight
\setlength\topskip   {10\p@}
%
\setlength\footskip{32.5pt}
\setlength\maxdepth{664pt}
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



\renewcommand\figurename{Fig.}
\renewcommand\tablename{Table}

% \bibliographystyle{opticajnl}
% \AtBeginDocument{\pretocmd{\bibliography}{\typeout{}}{}{}}


\pagestyle{headings}%
\sloppy%
\flushbottom%
%\raggedbottom
\frenchspacing

\endinput
