\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{KGCOEReport}[2016/05/25 Example LaTeX class]

% Base class
\LoadClass[12pt]{article}

% Commenting what you use packages for is a good idea
\RequirePackage{multicol} %Make columns
\RequirePackage[margin=1in]{geometry} %Change margins

% Write a CE report
\DeclareOption{CMPE}{\OptionNotUsed}
% Write a EE report
\DeclareOption{EEEE}{\OptionNotUsed}
% Pass any other options to
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\setlength{\parindent}{0pt} % Don't indent paragraphs

% Used to make sure the TA listing is even
\newenvironment{TAalignment}{%
\def\\{\newline\leavevmode\phantom{TA:}}
}

\renewcommand{\maketitle}{%
\vspace*{2.5cm} 
	
    \begin{center}
	    \large
	    \textbf{\className \hspace{1ex}Laboratory Exercise \exerciseNumber}
	    
	    \bigskip

        \textbf{\exerciseDescription}
	    \normalsize 
    \end{center}
	
	\vspace*{5cm}
	
    \begin{multicols}{2}
        \phantom{LaTeX doesn't like empty columns} % Phantom will take up that much space, but not actually appear
        \columnbreak{} % Starts the second column
        \begin{flushleft} % Make sure LaTeX does not try to justify these lines
            \name\\
            Performed: \dateDone\\
            Submitted: \dateSubmitted\\
            \vspace*{\baselineskip} % Adds one line of spacing on this line, like the template
            Lab Section: \LabSectionNum\\
            Instructor: \LabInstructor\\
            %TA: \TAOne\\
            %\leavevmode\phantom{TA:} \TATwo\\ %phantom adds the appropriate amount of space
            %% leavevmode (leave vertical mode) prevents a new paragraph, 
            %% keeping the space added by phantom on the same line
            %\leavevmode\phantom{TA:} \TAThree\\ % You can delete the extra TA's if you don't have three
			TA:\begin{TAalignment}\TAs  % There can't be a space between the \TAs and the enviroment declaration
			\end{TAalignment}
            \vspace*{\baselineskip}
            Lecture Section: \LectureSectionNum\\
            Professor: \LectureInstructor\\
        \end{flushleft}
    \end{multicols}
	
	
    \vspace{1cm}
	
	By submitting this report, you attest that you neither have given nor have received any assistance (including writing, collecting data, plotting figures, tables or graphs, or using previous student reports as a reference), and you further acknowledge that giving or receiving such assistance will result in a failing grade for this course.
	
	\vfill
	
	{\centering{}
    Your Signature: \hrulefill}
	
	\newpage
}