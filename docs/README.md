Documentation for KGCOEReport LaTeX Template
============================================

# General Usage
Stick the `KGCOEReport.cls` file in the same folder as the `.tex` document
and use it as the document class with the department code as an option
```
\documentclass[CMPE]{KGCOEReport}
```
### Variables
The following is a list of variables used by the template.
Examples are provides in the enclosing brackets

* `\className`: The 4 character code and 3 digit number `[CMPE 160]`
* `\exerciseNumber`: The exercise number `[1]` or `[one]`
* `\exerciseDescription`: Short description of the exercise. Generally taken from the exercise writeup `[Characterizing a OPB745 Sensor]`
* `\name`: Your name `[Jeff Mahoney]`
* `\dateDone`: The date the lab was performed in ISO 8601 format. If done over several lab periods then the first date `[2016-09-19]`
* `\dateSubmitted`: The date the report is due in ISO 8601 format `[2016-09-26]`
* `\LabSectionNum`: The lab section number `[01]`
* `\LabInstructor`: The name of the instructor for the lab section `[Professor Professor]`
* `\TAs`: A list of TA's separated by \\ `[TA One \\ TA Two \\ TA Three]`
* `\LectureSectionNum`: The lecture section number `[03]`
* `\LectureInstructor`: The name of the instructor for the lecture section `[Professor X]`
