# About

Fork of the ShareLateX version of the [Friggeri CV](https://www.sharelatex.com/templates/cv-or-resume/fancy-cv) from Adrien Friggeri changed to render in A4 paper format.

## Usage

Run `make setup NAME=<name>` to copy the template text file (`<name>-cv.tex`).
Run `make pdf NAME=<name>` to create the PDF file (`<name>-cv.pdf`).
Run `make clean NAME=<name>` to clean build file.

This template needs the following dependencies installed:

* TikZ (header)
* XeTex and fontspec (custom fonts)
* biblatex/biber (publications)
* textpos (aside)

<pre>
sudo apt-get install xelatex latex texlive-xetex biber xetex texlive-xetex texlive-latex-extra
</pre>

![](samples/cv_nocolors.png?raw=true)

## License

[MIT License](https://opensource.org/licenses/MIT), Copyright (C) 2017, Marvin Frommhold
