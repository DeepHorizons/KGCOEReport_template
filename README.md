KGCOE LaTeX template
====================

This repository contains a LaTeX template to generate reports that
are up to specification for the KGCOE departments

### Features
* Can generate CMPE reports
* Helper functions for common tasks (including graphics, ect.)

### Usage
Stick the `KGCOEReport.cls` file in the same folder as the `.tex` document
and use it as the document class
```
\documentclass{KGCOEReport}
```

The document must also contain proper variables containing the class
name, exercise number, and others.
Refer to the sample in the `/docs` folder

The template defaults to CMPE reports. To specify another department,
pass the department code as a option:
```
\documentclass[EEEE]{KGCOEReport}
```

### Todos
* Add formatting for EEEE reports
* Don't default to CMPE, require explicit department
* Add helper commands for including images
* Figure out better way for variables than `\newcommand`
* Reorder variables from least modified to most
