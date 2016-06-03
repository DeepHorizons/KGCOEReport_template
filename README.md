KGCOE LaTeX template
====================

This repository contains a LaTeX template to generate reports that
are up to specification for the KGCOE departments.

### Features
* Can generate CMPE and EEEE reports
* Helper functions for common tasks (including graphics, ect.)
* Pandoc template for writing reports in Markdown

### Usage
Stick the `KGCOEReport.cls` class file in the same folder as the `.tex` document
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
Refer to the `README.md` and samples in the `/docs` folder

### Pandoc
Reports can also be written in Markdown and converted to a LaTeX formatted
PDF using [Pandoc](http://pandoc.org/).

To use, install [Pandoc](http://pandoc.org/installing.html),
copy the template and the class file into the same folder as the `.md` file,
and use the following command:
```
pandoc <lab file>.md --template=pandoc_full_template.tex -s -o <output file>.pdf
```
The file must contain a header defining the variables for the report.
Refer to the `README.md` and sample in the `/docs` folder


### Todos
* Add helper commands for including images
* Figure out better way for variables than `\newcommand`
* Reorder variables from least modified to most
* Optional parameters
