Documentation for KGCOEReport LaTeX Template
============================================

# General Usage
Stick the `KGCOEReport.cls` file in the same folder as the `.tex` document (or in a global location)
and use it as the document class with the department code as an option

```
\documentclass[CMPE]{KGCOEReport}
```
# Cover Page Variables
The following is a list of variables used by the template.
Examples are provides in the enclosing brackets.

## Generic Variables
### Required
* `\classCode`: The 4 character code and 3 digit number `[CMPE 160]`
* `\exerciseNumber`: The exercise number `[1]` or `[One]`
* `\exerciseDescription`: Short description of the exercise. Generally taken from the exercise write-up `[Characterizing a OPB745 Sensor]`
* `\name`: Your name `[Jeff Mahoney]`
* `\dateDone`: The date the lab was performed in ISO 8601 format. If done over several lab periods then the first date `[2016-09-19]`
* `\dateSubmitted`: The date the report is due in ISO 8601 format `[2016-09-26]`
* `\LabSectionNum`: The lab section number `[01]`

## CMPE Specific Variables
### Required
* `\LabInstructor`: The name of the instructor for the lab section `[Professor Professor]`
* `\LectureSectionNum`: The lecture section number `[03]`
* `\LectureInstructor`: The name of the instructor for the lecture section `[Professor X]`
* `\TAs`: A list of TA's separated by double backslashes `[TA One \\ TA Two \\ TA Three]`


## EEEE Specific Variables
### Required
* `\className`: The full name of the class `[Electronics 1]`
* `\TAs`: A list of TA's separated by ands `[TA One and TA Two and TA Three]`

### Optional
* `\partnerName`: The name of your partner `[Gary Lake]`
