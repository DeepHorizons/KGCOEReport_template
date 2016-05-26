KGCOE LaTeX template
====================

This repository contains a LaTeX template to generate reports that
are up to specification for the KGCOE departments

### Features
* Can generate CMPE and EEEE reports
* Helper functions for common tasks (including graphics, ect.)

### Usage
Stick the `KGCOEReport.cls` file in the same folder as the `.tex` document
and use it as the document class with the department as an option:
```
\documentclass[CMPE]{KGCOEReport}
```
or
```
\documentclass[EEEE]{KGCOEReport}
```

The document must also contain proper variables containing the class
name, exercise number, and others.
Refer to the sample in the `/docs` folder


### Todos
* Fix formatting for EEEE reports
* Add helper commands for including images
* Figure out better way for variables than `\newcommand`
* Reorder variables from least modified to most
