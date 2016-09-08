Documentation for KGCOEReport LaTeX Template
============================================

# General Usage
Stick the `KGCOEReport.cls` file in the same folder as the `.tex` document
(or in a global location) and use it as the document class with the department
code as an option

```
\documentclass[CMPE]{KGCOEReport}
```
# Cover Page Variables
The following is a list of variables used by the template.
Examples are provides in the enclosing brackets.

## Generic Variables
### Required
* `\classCode`: The 4 character code and 3 digit number `[CMPE 160]`
* `\name`: Your name `[Jeff Mahoney]`
* `\LabSectionNum`: The lab section number `[01]`
* `\exerciseNumber`: The exercise number `[1]` or `[One]`
* `\exerciseDescription`: Short description of the exercise. Generally taken
  from the exercise write-up `[Characterizing a OPB745 Sensor]`
* `\dateDone`: The date the lab was performed in ISO 8601 format. If done over
   several lab periods then the first date `[2016-09-19]`
* `\dateSubmitted`: The date the report is due in ISO 8601 format `[2016-09-26]`

## CMPE Specific Variables
### Required
* `\LabInstructor`: The name of the instructor for the lab section
  `[Professor Professor]`
* `\TAs`: A list of TA's separated by double backslashes
  `[TA One \\ TA Two \\ TA Three]`
* `\LectureSectionNum`: The lecture section number `[03]`
* `\LectureInstructor`: The name of the instructor for the lecture section
  `[Professor X]`


## EEEE Specific Variables
### Required
* `\className`: The full name of the class `[Electronics 1]`
* `\TAs`: A list of TA's separated by ands `[TA One and TA Two and TA Three]`

### Optional
* `\partnerName`: The name of your partner `[Gary Lake]`


# Pandoc template
[Pandoc](http://pandoc.org/) is a markup converter.
In particular, it can convert [Markdown](https://en.wikipedia.org/wiki/Markdown)
to a LaTeX formatted PDF.
In this way, much of the LaTeX boilerplate is done away with.

## Usage
To use, install [Pandoc](http://pandoc.org/installing.html) and copy the
template (along with the KGCOEReport class file) to your lab folder.
Once the report is written, the PDF can be compiled by executing:

```
pandoc <lab file>.md --template=pandoc_full_template.tex -s -o <output file>.pdf
```

The report must end in `.md` to signify that it is a Markdown file.

## Writing a report in Markdown
Markdown is made to be readable, both in text and formatted,
and is very simple to write.
You can refer to the `GENERIC_sample_pandoc.md` to get an idea.

### Header
To allow Pandoc to format your document correctly,
a YAML header must first be added containing the variables.
(This header is non-standard Markdown and is purely used for Pandoc)

All variables are the same as above, with the only difference is that the
`department` key is added to know what to format the document as.
A sample is as follows

```
---
department: CMPE
classCode: CMPE 101
className: Intro to Computer Engineering
exerciseNumber: 1
exerciseDescription: Measuring resistance
name: Jeff Mahoney
partnerName: Gary Lake
dateDone: 2016-09-19
dateSubmitted: 2016-09-2016-09-26
LabSectionNum: L03
LabInstructor: Professor Professor
TAs: TA One and TA Two and TA Three
LectureSectionNum: 02
LectureInstructor: Professor X

documentclass: KGCOEReport
numbersections: false
---
```

The `documentclass` section tells Pandoc to use our class file.
The `numbersections` key is used to tell Pandoc if we want
numbered sections or not.
For KGCOE reports, sections are generally not numbered.

### Body
Everything after the header is what will be generated for the document.
Regular text will show up as text in paragraphs.

The rules for whitespace and paragraphs are as follows:
* Paragraphs are sectioned of as a blank line between two sections of text.
* As in LaTeX, a newline at the end of a line is interpreted as a space.
* A linebreak can be forced by adding 2 spaces to the end of a line.

The following is a short list of commonly used formating syntax.
There are far too many to cover, so refer to the
[Pandoc User Guide](http://pandoc.org/README.html#pandocs-markdown)
for more detail.

#### Sections
Sections are defined by `#`.
There must be a new line, the `#` character, one space,
and then the section name followed by a newline.
Subsections use `##`, subsubsections use `###`.

```
...

# Design Methodology
...

## A Specific Part
...

### Even More Specific
...
```

#### Math Equation
Math equations use the `$` character.
Equations are enclosed in these characters using the
[LaTeX math formatting syntax](https://www.sharelatex.com/learn/Mathematical_expressions)

A single `$` inlines an equation.
There must not be any spaces between the opening `$` and the first character,
and there must not be a space between the last character and the closing `$`

```
... $F = ma$ ...
```

A double `$$` centers the equation and puts it on a new line.
The space requirement is not in effect for this.

```
...
$$ F = -kx $$
...
```

#### Images
Images use the link syntax prepended with a `!`.
The image caption is enclosed within `[]`,
while the image location is enclosed within `()`.

There must be a new line above and below the image line or
Pandoc will attempt to inline the image (and fail).

```
...

![Graph of the waveforms](img/graph.png)

...
```

# Jupyter metadata
A Jupyter nbconvert exporter and template have also been created.

In order for the converter to know the data about the document,
metadata must be added.
To do so, go to `Edit > Edit Metadata`.
A window will pop up.
All data must be under `kgcoe`.
A sample metadata segment is under `jupyter_metadata.txt`,
copy and paste it in on top of the other metadata and modify the data as necessary.
