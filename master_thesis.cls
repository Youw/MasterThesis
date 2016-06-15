% ********** Клас для написання пояснювальної записки **********
% *****************  до магістерської дисертації ***************
% ***** автори: Тавров Д. Ю., Борисенко П. Б., Дутчак І. О. ****

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --- Список доступних команд ---

% --- Глобальні параметри дисертації ---
%\setthesisinfo{params}, де params --- це розділені комами пари "параметр={значення}"
% StudentName --- ПІБ студента
% StudentNameGenitive --- TODO
% StudentNameShort --- прізвище та ініціали студента
% StudentMale --- стать студента (одне з: m,male,ч,м,f,female,ж)
% StudentGroup --- група студента
% ThesisTitle --- тема дисертації (без лапок)
% UDK --- УДК
% AdvisorName --- ПІБ наукового керівника
% AdvisorNameShort --- прізвище та ініціали наукового керівника
% AdvisorTitle --- посада, науковий ступінь, вчене звання наукового керівника
% Reviewer --- посада, науковий ступінь, вчене звання, прізвище, ініціали рецензента
% ConsultantChapter --- назва розділу, який консультував консультант
% Consultant --- посада, науковий ступінь, вчене звання, прізвище, ініціали консультанта
% ConsultantChapterSecond --- назва розділу, який консультував другий консультант
% ConsultantSecond --- посада, науковий ступінь, вчене звання, прізвище, ініціали другого консультанта
% Year --- рік захисту магістерської дисертації

% --- Титульна сторінка ---
% \maketitlepage

% --- Команда для побудови завдання ---
% \assignment{params}, де params --- це розділені комами пари "параметр={значення}"
%	Order --- дата та номер наказу
%	ApplicationDate --- 2. Термін подання студентом дисертації
%	Object --- 3. Об'єкт дослідження
%	Subject --- 4. Предмет дослідження
%	Contents --- 5. Перелік завдань, які потрібно розробити 
%	Graphics --- 6. Орієнтовний перелік ілюстративного матеріалу 
%	Publications --- 7. Орієнтовний перелік публікацій
% 8. Консультанти розділів проекту
% ConsultantChapter --- назва розділу, який консультував консультант
% Consultant --- прізвише, ініціали та посада консультанта
% ConsultantChapterSecond --- назва розділу, який консультував другий консультант
% ConsultantSecond --- прізвише, ініціали та посада другого консультанта
%	AssignmentDate --- 8(9). Дата видачі завдання
%	Calendar --- внутрішня частина таблиці з календарним планом
% кожний рядок таблиці повинен мати формат:
% #1 & #2 & #3 & \\
% де #1 --- номер з/п
% #2 --- назва завдання
% #3 --- термін виконання завдання
% після кожного рядка, окрім останнього, потрібно на окремому рядку
% залишати \hline
% Year --- рік затвердження завдання

% --- Команда для реферата ---
% \abstract[lang]{params}, де lang - мова реферата, наприклад urk або eng,  params --- розділені комами пари "параметр={значення}"
% General --- загальна інформація про роботу
% TopicRelevance --- Актуальність теми
% Connections --- Optional-has default value: Зв'язок роботи з науковими програмами, планами, темами
% Goal --- Мета і задачі дослідження
% Object --- Об'єкт дослідження
% Subject --- Предмет дослідження
% Methods --- Методи дослідження
% Contribution --- Наукова новизна
% PracticalValue --- Практичне значення
% Approbation --- Апробація
% Publications --- Публікації
% Keywords --- Ключові слова

% --- Зміст ---
% \tableofcontents

% --- Перелік умовних позначень ---
% \shortings

% --- Зміст ---
% \intro

% --- Висновки --- 
% \conclusions

% --- Список використаної літератури
% \begin{thebibliography}
%    \bibitem{bibl_name_here} bibl_text_here
% \end{thebibliography}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 1. Ідентифікуємо клас
\ProvidesClass{master_thesis}[2015/12/10 v3.1 Клас для написання пояснювальної записки]
\NeedsTeXFormat{LaTeX2e} % потрібний формат

% 2. Завантажуємо "батьківський клас"
\LoadClass[a4paper,14pt,ukrainian,oneside]{extreport}


% 3. Завантажуємо пакети
% мовні пакети
\RequirePackage{cmap}% для кодування шрифтів у pdf
\RequirePackage[T2A]{fontenc} % пакет для підтримки кирилічних шрифтів
\RequirePackage[utf8]{inputenc} % пакет для підтримкм UTF8
\RequirePackage[russian,ukrainian]{babel} % пакет для підтримки української та російської мов
\RequirePackage{pscyr} % пакет із гарними кирилічними шрифтами
\RequirePackage{mathtext} % потрібні символи в режимі математичних формул
\RequirePackage{amssymb,amsfonts,amsmath,amsthm} % потрібні символи в режимі математичних формул
\RequirePackage{textcomp} % потрібні символи в режимі математичних формул
\RequirePackage{upgreek} % пакет для прямих грецьких літер

% графічні пакети
\RequirePackage{graphicx} % основний пакет для вставки графіки
\RequirePackage{subfig} % пакет для вставки підрисунків
\RequirePackage{flafter} % пакет гарантує, що рисунок чи таблиця ніколи не з'являться раніше посилання на самих себе
\RequirePackage{caption} % пакет для персоналізації заголовків рисунків та таблиць
\RequirePackage{xtab} % пакет для довгих таблиць
\RequirePackage{longtable} % пакет для довгих таблиць
\RequirePackage{multirow} % пакет для об'єднання рядків таблиці
\RequirePackage{array} % пакет для вирівнювання всередині таблиці

% пакети для форматування відступів та полів
\RequirePackage[includehead, headsep=0pt, footskip=0pt, top=2cm, bottom=2cm, left=2cm, right=1cm]{geometry} % задаємо поля сторінки
\RequirePackage{indentfirst} % відступ для першого рядка абзацу
\RequirePackage{hanging} % відступ для всіх інших рядків абзацу
\RequirePackage[shortlabels]{enumitem}	% пакет для форматування списків
\RequirePackage{setspace}	% пакет для того, щоб можна було задати міжрядковий інтервал
\RequirePackage{fancyhdr} % пакет потрібний для виставлення позиції номеру сторінки
\RequirePackage{etoolbox} % пакет для прибирання висячого відступу в бібліографії та прописування умовних відстаней між заголовками

% стилі заголовків та змісту
\RequirePackage[rm,small,raggedright]{titlesec} % пакет для ручного керування стилем заголовків
\RequirePackage[titles,subfigure]{tocloft} % пакет для ручного керування стилем змісту

% пакет для коректного представлення інтернет-посилань у "Списку використаної літератури"
\RequirePackage{url}

% пакет для нормальних пробілів після ком у десяткових дробах
\RequirePackage{icomma}

% пакет для відображення форматування вихідних кодів
\RequirePackage{listings}

% пакет для параметричних команд
\RequirePackage{xkeyval}

% пакет для лічильників
\RequirePackage{totcount}

% пакет для гіперпосилань у змісті
\RequirePackage[hidelinks]{hyperref}

% пакет для кодів програм
\RequirePackage{verbatim}

\RequirePackage{lscape}

% для вставки PDF
\RequirePackage{pdfpages}

% 4. Основна частина
\frenchspacing
\doublespacing % інтервал "1,5" між рядками

\renewcommand{\rmdefault}{ftm} % задаємо шрифт за промовчанням --- "Times New Roman" із пакету pscyr

\newcommand{\setfontsize}[1]{\fontsize{#1pt}{#1pt}\selectfont} % команда для задавання розміру шрифта
\newcommand{\invcommas}[1]{\guillemotleft #1\guillemotright} % команда для французьких кутових лапок

% текст гіперпосилань буде того ж шрифту, що й основний текст
\urlstyle{same}

% стиль сторінки для позиції номеру сторінки
\fancypagestyle{plain}{
    \fancyhf{}
    \rhead{\thepage}
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
}

% команди для заборони розриву формул у небажаному місці
\binoppenalty=10000
\relpenalty=10000

% команди для заборони використання перенесень
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% ініціалізовуємо лічильники
\@ifpackageloaded{totcount}{
	%\regtotcounter{part}
	%\regtotcounter{chapter}
	%\regtotcounter{section}
	%\regtotcounter{subsection}
	%\regtotcounter{subsubsection}
	%\regtotcounter{paragraph}
	%\regtotcounter{subparagraph}
	%\regtotcounter{footnote}
	%\regtotcounter{mpfootnote}
	\regtotcounter{page}
	\newtotcounter{equations}\AtBeginEnvironment{equation}{\stepcounter{equations}}
	\newtotcounter{figures}\AtBeginEnvironment{figure}{\stepcounter{figures}}
	\newtotcounter{tables}\AtBeginEnvironment{table}{\stepcounter{tables}}
	\newtotcounter{bibitemcount}\pretocmd\bibitem{\stepcounter{bibitemcount}}{}{}
}{}

% команда для створення ненумерованого розділу, який тим не менше показується в змісті
\newcommand{\uchapter}[1]{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}} 

% для створення вступу використаємо команду \uchapter
\newcommand{\intro}{\uchapter{Вступ}}

% для створення висновків використаємо команду \uchapter
\newcommand{\conclusions}{\uchapter{Висновки}}

% для створення переліку умовних позначень використаємо команду \shortings
\newcommand{\shortings}{\uchapter{Перелік умовних позначень, скорочень і термінів}}

% хитра команда для створення додатків
\newcounter{pages}\@ifpackageloaded{totcount}{\regtotcounter{pages}}{}
\newcounter{appendnum}\@ifpackageloaded{totcount}{\regtotcounter{appendnum}}{}
\newcommand{\append}[1]{
\setcounter{chapter}{0}
\setcounter{figure}{0}
\setcounter{table}{0}
\setcounter{section}{0}
\setcounter{subsection}{0}
\titleformat{\chapter}{\centering\normalsize}{\hspace{1cm}\thechapter}{0.5em}{}
\chapter*{Додаток \Asbuk{appendnum}\\#1}
\addcontentsline{toc}{chapter}{Додаток \Asbuk{appendnum}\ #1}
\addvspace{-28pt}
\preto\section{%
	\ifnum\value{section}=0\addvspace{0pt}\fi%
}
}
% прибираємо недопустимі букви з позначення додатків
\pretocmd\append{
\renewcommand{\theappendnum}{\Asbuk{appendnum}}
\renewcommand{\thefigure}{\Asbuk{appendnum}.\arabic{figure}}
\renewcommand{\thetable}{\Asbuk{appendnum}.\arabic{table}}
\renewcommand{\thesection}{\Asbuk{appendnum}.\arabic{section}}
\renewcommand{\thesubsection}{\Asbuk{appendnum}.\arabic{section}.\arabic{subsection}}
	\refstepcounter{appendnum}
	\ifnum\Asbuk{appendnum}=Ґ \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=Є \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=З \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=І \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=Ї \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=Й \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=О \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=Ч \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=Ь \stepcounter{appendnum}\fi
}{}{}

% будемо змінювати стилі заголовків
% спочатку --- для розділу
\titleformat{\chapter} % указуємо, що модифікуємо саме розділ
			{\centering\normalsize}
			{\hspace{1cm}\thechapter} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{\MakeUppercase} % текст, що передує назві --- команда щоб вказати формат назви ("усі великі")
	
% тепер --- для підрозділу
\titleformat{\section}[block] % указуємо, що модифікуємо саме підрозділ
			{\normalsize} % указуємо формат назви (жирний)
			{\hspace{1.25cm}\thesection} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{} % текст, що передує назві

% тепер --- для підрозділу ще нижчого рівня
\titleformat{\subsection}[block] % указуємо, що модифікуємо саме підрозділ нижнього рівня
			{\normalsize} % указуємо формат назви (жирний)
			{\hspace{1.25cm}\thesubsection} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{} % текст, що передує назві
			
% тепер задамо відступи для заголовку розділу
\titlespacing{\chapter} % указуємо, що модифікуємо саме розділ
			{0pt} % відступ зліва
			{-28pt} % відступ зверху (немає)
			{48pt} % відступ знизу (2 рядки)

% тепер задамо відступи для заголовку підрозділу			
\titlespacing{\section} % указуємо, що модифікуємо саме підрозділ
			{0pt} % відступ зліва
			{48pt} % відступ зверху (2 рядки)
			{48pt} % відступ знизу (2 рядки)
			
% тепер задамо відступи для заголовку пункта
\titlespacing{\subsection} % указуємо, що модифікуємо саме пункт
			{0pt} % відступ зліва
			{48pt} % відступ зверху (2 рядки)
			{48pt} % відступ знизу (2 рядки)

% тепер зробимо так, щоб між двома заголовками була звичайна відстань
\preto\section{%
	\ifnum\value{section}=0\addvspace{-48pt}\fi%
}

\preto\subsection{%
	\ifnum\value{subsection}=0\addvspace{-48pt}\fi%
}
			
% видозмінюємо зміст
\makeatletter
\renewcommand{\tableofcontents}{
	\clearpage
	\thispagestyle{plain}

	\begin{center}
	  \MakeUppercase{Зміст}
	\end{center}
	
	\addvspace{42pt}
	
	\@starttoc{toc}
}
\makeatother

% змінюємо формат нумерації формул
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

% задамо оновлені списки, з правильними відступами
% нумерований першого рівня
\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}
\setlist[itemize,1]{label=--, partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=1.7cm, leftmargin=0pt}
\setlist[itemize,2]{label=--, partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=2.25cm, leftmargin=0pt}
\setlist[enumerate,1]{label=\asbuk*), partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=1.9cm, leftmargin=0pt}
\setlist[enumerate,2]{label=\arabic*), partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=2.6cm, leftmargin=0pt}

% тепер займемося змістом
% задаємо відстань між точками
\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}
\renewcommand{\cftsubsecdotsep}{1}

% задаємо розмір поля, що виділяється під номер сторінки
\cftsetpnumwidth{1em}

% задамо відстані між рядками в змісті
\setlength\cftbeforechapskip{0pt}

% займемося розділами
\renewcommand{\cftchapaftersnum}{} % що буде писатися після номеру розділу (нічого)
\renewcommand{\cftchapindent}{0cm} % відступ номера розділу від лівого краю
\renewcommand{\cftchapnumwidth}{1em} % розмір поля, що виділяється під номер розділу
\renewcommand{\cftchappagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftchapfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% тепер займемося підрозділами
\renewcommand{\cftsecaftersnum}{} % що буде писатися після номеру підрозділу (нічого)
\renewcommand{\cftsecindent}{1em} % відступ номера підрозділу від лівого краю
\renewcommand{\cftsecnumwidth}{2em} % розмір поля, що виділяється під номер підрозділу
\renewcommand{\cftsecpagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftsecfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% тепер займемося пунктами
\renewcommand{\cftsubsecaftersnum}{} % що буде писатися після номеру пункта (нічого)
\renewcommand{\cftsubsecindent}{3em} % відступ номера пункта від лівого краю
\renewcommand{\cftsubsecnumwidth}{2.5em} % розмір поля, що виділяється під номер пункта
\renewcommand{\cftsubsecpagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftsubsecfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsubsecdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% заголовки таблиць, рисунків і лістингів
\DeclareCaptionLabelFormat{tablecap}{Таблиця #2} % формат за промовчанням "Табл." не влаштовує
\DeclareCaptionLabelFormat{figurecap}{Рисунок #2} % формат за промовчанням "Рис." не влаштовує
\DeclareCaptionFormat{listing}{Лістинг файлу #3} % формат за промовчанням "Listing" не влаштовує

\captionsetup[table]{margin=0pt,singlelinecheck=false, justification=justified, labelsep=endash, labelformat=tablecap, font = {stretch = 1.5}, belowskip=18pt, aboveskip=3pt} % формат для таблиць
\captionsetup[figure]{justification=centering, labelsep=endash, labelformat=figurecap, font = {stretch = 1.5}} % формат для рисунків
\captionsetup[lstlisting]{margin=0pt, format=listing, singlelinecheck=false, font = {stretch = 1.5}} % формат для лістингів

\setlength{\textfloatsep}{21pt}
\setlength{\intextsep}{21pt}

% додаткові стилі для вирівнювання колонок в таблицях
\makeatletter
\@ifpackageloaded{array}{
	\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash}p{#1}}
	\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash}p{#1}}
	\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash}p{#1}}
}{}
\makeatother

% команда, що змінює латинські літери на кирилічні в підрисунках
\renewcommand{\thesubfigure}{\asbuk{subfigure}}

% нове оточення для довгих таблиць
\renewenvironment{table}[4]{
\setlength{\LTpre}{-14pt}
\setlength{\LTpost}{14pt}
\setlength{\LTcapwidth}{0pt}
	\begingroup\centering
	\begin{longtable}{#1}
		\kill
		\caption{#2}\label{#3}\\
		#4
		\endfirsthead
		\kill
		\caption*{Продовження таблиці \thetable}\\
		#4
		\endhead
		\hline
		\endfoot
}
	{%
	\end{longtable}
	\endgroup
}

% наведемо порядок із відступами в бібліографії
\patchcmd{\thebibliography}
  {\advance\leftmargin\labelsep}
  {\leftmargin=0pt\itemindent=1.9cm\advance\itemindent\labelsep}
  {}{}

% змінюємо формат номеру для переліку посилань (число + крапка)
\makeatletter
\renewcommand{\@biblabel}[1]{#1.}
\makeatother

% оновимо стандартне оточення, оскільки потрібно додати перелік посилань у зміст
\let\tempbib\thebibliography
\let\tempbibend\endthebibliography
\renewenvironment{thebibliography}{
	\renewcommand{\bibname}{СПИСОК ВИКОРИСТАНОЇ ЛІТЕРАТУРИ}% змінюємо заголовок
	\tempbib{99.}% максимально можливий номер джерела --- 99
	% далі наведемо порядок із відступами
	\setlength\partopsep{0pt}
	\setlength\parskip{0pt}
	\setlength\parsep{0pt}
	\setlength\topsep{0pt}
	\setlength\itemsep{0pt}
	\addcontentsline{toc}{chapter}{Список використаної літератури}% додаємо в зміст
	}
	{
	\tempbibend
}

% спеціальна команда для вставки лістингів
\newcommand{\listing}[3][C++]{\singlespacing\lstinputlisting[language=#1, basicstyle=\tiny, breaklines=true, caption={#2}]{#3}\doublespacing}

% команда для визначення глобальних змінних
\makeatletter
\define@cmdkey[Thesis]{University}{FirstLine}{}
\define@cmdkey[Thesis]{University}{SecondLine}{}
\define@cmdkey[Thesis]{University}{Faculty}{}
\define@cmdkey[Thesis]{University}{Department}{}
\presetkeys[Thesis]{University}{
	FirstLine={Національний технічний університет України},
	SecondLine={\invcommas{Київський політехнічний інститут}},
	Faculty={Факультет прикладної математики},
	Department={Кафедра прикладної математики}
}{}
\newcommand{\setuniversityinfo}[1]{\setkeys[Thesis]{University}{#1}}
\define@cmdkey[Thesis]{Global}{StudentName}{}
\define@cmdkey[Thesis]{Global}{StudentNameGenitive}{}
\define@cmdkey[Thesis]{Global}{StudentNameShort}{}
\define@boolkey[Thesis]{Global}{StudentMale}{}
\define@choicekey*[Thesis]{Global}{StudentGender}[\stgender\stnum]{m,male,ч,м,f,female,ж}[m]{
	\ifboolexpr{test{\ifnumless{\stnum}{4}}}
	{\setkeys[Thesis]{Global}{StudentMale=true}}
	{\setkeys[Thesis]{Global}{StudentMale=false}}
}
\define@cmdkey[Thesis]{Global}{StudentGroup}{}
\define@cmdkey[Thesis]{Global}{ThesisTitle}{}
\define@cmdkey[Thesis]{Global}{UDK}{}
\define@cmdkey[Thesis]{Global}{AdvisorName}{}
\define@cmdkey[Thesis]{Global}{AdvisorNameShort}{}
\define@cmdkey[Thesis]{Global}{AdvisorTitle}{}
\define@cmdkey[Thesis]{Global}{Reviewer}{}
\define@cmdkey[Thesis]{Global}{Consultant}{}
\define@cmdkey[Thesis]{Global}{ConsultantTitle}{}
\define@cmdkey[Thesis]{Global}{ConsultantChapter}{}
\define@cmdkey[Thesis]{Global}{ConsultantDesignation}{}
\define@cmdkey[Thesis]{Global}{ConsultantSecond}{}
\define@cmdkey[Thesis]{Global}{ConsultantTitleSecond}{}
\define@cmdkey[Thesis]{Global}{ConsultantChapterSecond}{}
\define@cmdkey[Thesis]{Global}{ConsultantDesignationSecond}{}
\define@cmdkey[Thesis]{Global}{Year}{}
\define@cmdkey[Thesis]{Global}{Speciality}{}
\define@cmdkey[Thesis]{Global}{DepartmentHead}{}
\define@cmdkey[Thesis]{Global}{NormControl}{}
\presetkeys[Thesis]{Global}
{
	Speciality={8.04030101 \invcommas{Прикладна математика}},
	DepartmentHead={О.~Р.~Чертов},
	NormControl={старший~викладач Мальчиков~В.~В.}
}{}
\newcommand{\setthesisinfo}[1]{\setkeys[Thesis]{Global}{#1}}

% нова команда для титульного аркушу
\newcommand{\maketitlepage}[1][]{
	\ifundef{\cmdThesis@University@FirstLine}{\setuniversityinfo{}}{}
	\ifstrempty{#1}{}{\setkeys[Thesis]{Global}{#1}}
		\thispagestyle{empty}
		\setlength{\parindent}{0cm}
		\begingroup\centering % центрування
			\setfontsize{14}
			\textbf{\MakeUppercase{\cmdThesis@University@FirstLine}}
			
			\textbf{\MakeUppercase{\cmdThesis@University@SecondLine}}

			\textbf{\cmdThesis@University@Faculty}
			
			\textbf{\cmdThesis@University@Department}

		\endgroup
		
		\addvspace{14pt}
		
		%\setlength\parindent{9cm}
			{\renewcommand{\arraystretch}{0.8}
		  \begin{tabular}{>{\raggedright}p{10cm}l}
				\invcommas{На правах рукопису} & \invcommas{До захисту допущено} \\
				\multirow{3}{*}{\parbox{8cm}{УДК \cmdThesis@Global@UDK}} & Завідувач кафедри\\
				& \_\_\_\_\_\_\_\_\_\_\_\_\_~\cmdThesis@Global@DepartmentHead \\
				& \invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\cmdThesis@Global@Year\ р. \\
			\end{tabular}}
		\setlength\parindent{0cm}
			
		\addvspace{14pt}
		
		\setfontsize{20}
		\centerline{\textbf{Магістерська дисертація}}
		
		\setfontsize{14}
		\centerline{\textbf{на здобуття ступеня магістра}}
		
		\addvspace{6pt}
		
		зі спеціальності \cmdThesis@Global@Speciality

		\begin{singlespace}
			на тему: \cmdThesis@Global@ThesisTitle
		\end{singlespace}
		
		\addvspace{14pt}
		
		\ifThesis@Global@StudentMale
			Виконав: студент
		\else
			Виконала: студентка
		\fi
  		II курсу, групи {\cmdThesis@Global@StudentGroup} 
		
		{\renewcommand{\arraystretch}{1.0}
		 \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}>{\raggedright}p{4.6cm}>{\raggedright}p{8.25cm}l}
			& \cmdThesis@Global@StudentName & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
			Науковий керівник & \cmdThesis@Global@AdvisorTitle\ \cmdThesis@Global@AdvisorNameShort & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
			\ifundef{\cmdThesis@Global@ConsultantChapter}{\relax}%
				{Консультант \cmdThesis@Global@ConsultantDesignation & \cmdThesis@Global@ConsultantTitle\ \cmdThesis@Global@Consultant & \_\_\_\_\_\_\_\_\_\_\_\_\_\\}
			\ifundef{\cmdThesis@Global@ConsultantChapterSecond}{\relax}%
				{Консультант \cmdThesis@Global@ConsultantDesignationSecond & \cmdThesis@Global@ConsultantTitleSecond\ \cmdThesis@Global@ConsultantSecond & \_\_\_\_\_\_\_\_\_\_\_\_\_\\}
			Консультант із нормоконтролю & \cmdThesis@Global@NormControl & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
			Рецензент & \cmdThesis@Global@Reviewer & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
		 \end{tabular*}}
		
		\vfill
		
		\begin{singlespace}
			\setlength\parindent{8cm}
				\begin{tabular}{l}
					Засвідчую, що в цій магістерській\\
					дисертації немає запозичень із праць інших\\
					авторів без відповідних посилань.\\
					\ifThesis@Global@StudentMale
						Студент
					\else
						Студентка
					\fi
					~\_\_\_\_\_\_\_\_\_\_\_\_\_
				\end{tabular}
			\setlength\parindent{0cm}
		\end{singlespace}
			
		\vfill
		
		\begingroup\centering
			Київ --- \cmdThesis@Global@Year\\
		\endgroup
		
		\clearpage % починаємо з нової сторінки

		\setcounter{page}{2} % номер сторінки буде 2
}
\makeatother

\makeatletter
\define@cmdkey[Thesis]{Assignment}{StudentName}{}
\define@cmdkey[Thesis]{Assignment}{Advisor}{}
\define@cmdkey[Thesis]{Assignment}{ThesisTitle}{}
\define@cmdkey[Thesis]{Assignment}{Order}{}
\define@cmdkey[Thesis]{Assignment}{ApplicationDate}{}
\define@cmdkey[Thesis]{Assignment}{Object}{}
\define@cmdkey[Thesis]{Assignment}{Subject}{}
\define@cmdkey[Thesis]{Assignment}{Contents}{}
\define@cmdkey[Thesis]{Assignment}{Graphics}{}
\define@cmdkey[Thesis]{Assignment}{Publications}{}
\define@cmdkey[Thesis]{Assignment}{AssignmentDate}{}
\define@cmdkey[Thesis]{Assignment}{Calendar}{}
\define@cmdkey[Thesis]{Assignment}{StudentNameShort}{}
\define@cmdkey[Thesis]{Assignment}{AdvisorNameShort}{}
\define@cmdkey[Thesis]{Assignment}{Year}{}
\presetkeys[Thesis]{Assignment}
{
	StudentName=\cmdThesis@Global@StudentNameGenitive,
	ThesisTitle=\cmdThesis@Global@ThesisTitle,
	Advisor={\cmdThesis@Global@AdvisorName\ \cmdThesis@Global@AdvisorTitle},
	StudentNameShort=\cmdThesis@Global@StudentNameShort,
	AdvisorNameShort=\cmdThesis@Global@AdvisorNameShort,
	Year=\cmdThesis@Global@Year
}{}

\newcommand{\assignment}[1]{
	\setkeys[Thesis]{Assignment}{#1}
		\pagestyle{empty}
		\setlength{\parindent}{0cm}

		\begingroup\centering % центрування
			\textbf{\cmdThesis@University@FirstLine}
			
			\textbf{\cmdThesis@University@SecondLine}

		\endgroup

			\cmdThesis@University@Faculty
			
			\cmdThesis@University@Department
			
			Рівень вищої освіти --- другий (магістерський)
			
			Спеціальність \cmdThesis@Global@Speciality

			\addvspace{14pt} % невеликий відступ
			
			\setlength\parindent{10cm}
			{\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
					\MakeUppercase{Затверджую} \\
					Завідувач кафедри\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~\cmdThesis@Global@DepartmentHead \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\cmdThesis@Assignment@Year\ р. \\
				\end{tabular}}
			\setlength\parindent{0cm}

			\addvspace{28pt} % невеликий відступ
			
		\begingroup\centering
			\textbf{\MakeUppercase{Завдання}}

			\textbf{на магістерську дисертацію} 
			\ifThesis@Global@StudentMale
				\textbf{студенту}
			\else
				\textbf{студентці}
			\fi

			\cmdThesis@Assignment@StudentName	

		\endgroup

		1.~Тема дисертації: \invcommas{\cmdThesis@Assignment@ThesisTitle},
		науковий керівник дисертації \cmdThesis@Assignment@Advisor,
		затверджені наказом по університету від \cmdThesis@Assignment@Order.

		2.~Термін подання \ifThesis@Global@StudentMale
			студентом
		\else
			студенткою
		\fi дисертації:	\cmdThesis@Assignment@ApplicationDate

		3.~Об'єкт дослідження: \cmdThesis@Assignment@Object.
		
		4.~Предмет дослідження: \cmdThesis@Assignment@Subject.

		5.~Перелік завдань, які потрібно розробити: \cmdThesis@Assignment@Contents.

		6.~Орієнтовний перелік ілюстративного матеріалу: \cmdThesis@Assignment@Graphics.

		7.~Орієнтовний перелік публікацій \cmdThesis@Assignment@Publications.

		\ifundef{\cmdThesis@Global@ConsultantChapter}{8.~Дата видачі завдання: \cmdThesis@Assignment@AssignmentDate}%
			{8.~Консультанти розділів дисертації:

				\setfontsize{12}
				\begin{center}
				\renewcommand{\arraystretch}{1.2}
				\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}|>{\raggedright}p{5.7cm}|>{\raggedright}p{5.7cm}|c|c|@{\extracolsep{\fill}}}
					\hline
					\multirow{3}{*}{\parbox[t]{5.7cm}{\centering{} Розділ}} & \multirow{3}{*}{\parbox[t]{5.7cm}{\centering{} Прізвище, ініціали та посада консультанта}} & \multicolumn{2}{c|}{Підпис, дата} \\
					\cline{3-4}
					&  & \parbox[t]{5.6em}{\centering{}завдання\\видав} & \parbox[t]{5.6em}{\centering{}завдання\\прийняв} \\
					\hline
					\cmdThesis@Global@ConsultantChapter & \cmdThesis@Global@Consultant, \cmdThesis@Global@ConsultantTitle & & \\
					\ifundef{\cmdThesis@Global@ConsultantChapterSecond}{\hline}%
						{\hline
						\cmdThesis@Global@ConsultantChapterSecond & \cmdThesis@Global@ConsultantSecond, \cmdThesis@Global@ConsultantTitleSecond & & \\
						\hline}
				\end{tabular*}
				\end{center}
				
				\setfontsize{14}
				
				9.~Дата видачі завдання: \cmdThesis@Assignment@AssignmentDate
			}

		\addvspace{14pt}

		\begingroup\centering
			Календарний план

			\setfontsize{12}

			\renewcommand{\arraystretch}{1.1}
			\setlength{\LTleft}{0pt}
			\setlength{\LTright}{0pt}
			\setlength{\LTcapwidth}{0pt}
			\begin{longtable}{@{\extracolsep{\fill}}|c|>{\raggedright}p{8cm}|c|c|@{\extracolsep{\fill}}}
				\kill
				\hline
				\multirow{2}{*}{\No\ з/п} & \multirow{2}{*}{\parbox[t]{8cm}{\centering Назва етапів виконання\\магістерської дисертації}} & \multirow{2}{*}{\parbox[t]{12em}{\centering{}Термін виконання етапів\\магістерської дисертації}} & \multirow{2}{*}{\parbox[t]{5em}{\centering{}Примітка}} \\
				& & & \\
				\hline
				\endfirsthead
				\kill
				\hline
				\multirow{2}{*}{\No\ з/п} & \multirow{2}{*}{\parbox[t]{8cm}{\centering{}Назва етапів виконання\\магістерської дисертації}} & \multirow{2}{*}{\parbox[t]{12em}{\centering{}Термін виконання етапів\\магістерської дисертації}} & \multirow{2}{*}{\parbox[t]{5em}{\centering{}Примітка}} \\
				& & & \\
				\hline
				\endhead
				\hline
				\endfoot
				\cmdThesis@Assignment@Calendar
			\end{longtable}
		\endgroup
		
		\addvspace{28pt} % невеликий відступ
		
		\setfontsize{14}
		
		\renewcommand{\arraystretch}{1.1}
		\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lrl}
			\ifThesis@Global@StudentMale
				Студент
			\else
				Студентка
			\fi
			&  \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assignment@StudentNameShort \\
			Науковий керівник дисертації & \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assignment@AdvisorNameShort \\
		\end{tabular*}

		\clearpage

		\setlength{\parindent}{1.25cm} % задаємо відступ першого рядка абзацу (5 знаків, або 1,25 см)
		
		% пропуск рядка до та після формули
		\setlength{\belowdisplayskip}{21pt}
		\setlength{\abovedisplayskip}{21pt}
		\setlength{\belowdisplayshortskip}{21pt}
		\setlength{\abovedisplayshortskip}{21pt}
}
\makeatother

\makeatletter
\define@cmdkey[Thesis]{Abstract}{General}{}
\define@cmdkey[Thesis]{Abstract}{TopicRelevance}{}
\define@cmdkey[Thesis]{Abstract}{Connections}{}
\define@cmdkey[Thesis]{Abstract}{Goal}{}
\define@cmdkey[Thesis]{Abstract}{Object}{}
\define@cmdkey[Thesis]{Abstract}{Subject}{}
\define@cmdkey[Thesis]{Abstract}{Methods}{}
\define@cmdkey[Thesis]{Abstract}{Contribution}{}
\define@cmdkey[Thesis]{Abstract}{PracticalValue}{}
\define@cmdkey[Thesis]{Abstract}{Approbation}{}
\define@cmdkey[Thesis]{Abstract}{Publications}{}
\define@cmdkey[Thesis]{Abstract}{Keywords}{}

\renewcommand{\abstract}[2][]{
	\ifstrempty{#1}{#2}{
	\ifstrequal{#1}{ukr}{
		\setkeys[Thesis]{Abstract}{Connections={Дисертаційна робота виконувалась згідно з планом науково-дослідних робіт кафедри прикладної математики Національного технічного університету України \invcommas{Київський політехнічний інститут}.}}{}
		\setkeys[Thesis]{Abstract}{#2}
		\chapter*{РЕФЕРАТ}
		\thispagestyle{empty}
		\renewcommand{\arraystretch}{1.5}
		\setfontsize{14}
		
		\cmdThesis@Abstract@General
		
		\textbf{Актуальність теми.} \cmdThesis@Abstract@TopicRelevance
		
		\textbf{Зв'язок роботи з науковими програмами, планами, темами.} \cmdThesis@Abstract@Connections
		
		\textbf{Мета і задачі дослідження.} \cmdThesis@Abstract@Goal
		
		\emph{Об'єктом дослідження є} \cmdThesis@Abstract@Object
		
		\emph{Предметом дослідження є} \cmdThesis@Abstract@Subject
		
		\textbf{Методи дослідження.} Для розв'язання поставленої задачі використовувалися такі методи: \cmdThesis@Abstract@Methods
		
		\textbf{Наукова новизна одержаних результатів} складається з наступних положень: \cmdThesis@Abstract@Contribution
		
		\textbf{Практичне значення одержаних результатів.} \cmdThesis@Abstract@PracticalValue
		
		\textbf{Апробація результатів дисертації.} \cmdThesis@Abstract@Approbation
		
		\textbf{Публікації.} \cmdThesis@Abstract@Publications
		
		\textbf{Ключові слова: } \cmdThesis@Abstract@Keywords
	}{}
	\ifstrequal{#1}{eng}{
		\setkeys[Thesis]{Abstract}{Connections={The thesis was prepared according to the scientific research plan of the Applied Mathematics Department of the National Technical University of Ukraine ``Kyiv Polytechnic Institute''.}}{}
		\setkeys[Thesis]{Abstract}{#2}
		\chapter*{ABSTRACT}
		\thispagestyle{empty}
		\renewcommand{\arraystretch}{1.5}
		\setfontsize{14}
		
		\cmdThesis@Abstract@General
		
		\textbf{Topic relevance.} \cmdThesis@Abstract@TopicRelevance
		
		\textbf{Thesis connection to scientific programs, plans, and topics.} \cmdThesis@Abstract@Connections
				
		\textbf{Research goal and objectives.} \cmdThesis@Abstract@Goal
		
		\emph{Object of research} is \cmdThesis@Abstract@Object
		
		\emph{Subject of research} is \cmdThesis@Abstract@Subject
		
		\textbf{Methods of research.} To solve the task, the following methods were used:  \cmdThesis@Abstract@Methods
		
		\textbf{Scientific contribution} consists of the following: \cmdThesis@Abstract@Contribution
		
		\textbf{Practical value of obtained results.} \cmdThesis@Abstract@PracticalValue
		
		\textbf{Approbation of the thesis results.} \cmdThesis@Abstract@Approbation
		
		\textbf{Publications.} \cmdThesis@Abstract@Publications
		
		\textbf{Keywords: } \cmdThesis@Abstract@Keywords
	}{}
		
		\clearpage % починаємо з нової сторінки
		\pagestyle{plain}
	}
}
\makeatother

% виправляємо помилки з апострофами в формулах
\makeatletter
\def\latex@@rquote{^\bgroup\prim@s} 
\let\hang@@h@ngrquote\h@ngrquote
\renewcommand{\h@ngrquote}{
	\relax\ifmmode
		\expandafter\latex@@rquote
	\else
		\expandafter\hang@@h@ngrquote
	\fi}
\makeatother
