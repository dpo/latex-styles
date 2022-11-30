# LaTeX Styles

This repository contains LaTeX styles I find useful to write scientific papers
along with common customizations. Everything here is built upon _exsiting_
styles and packages found in most LaTeX suites (e.g., the excellent
[TeXLive](http://www.tug.org/texlive) distribution.) The basic style files must
be downloaded from the publishers' website and placed somewhere where LaTeX can
find them.

## Installing

### Mac / Linux

* If you don't want to read the two bullets below, simply run `install.sh`.

* Set the environment variable `LATEX_STYLES` to point to the top of this
  repository. E.g., if you cloned this repository to `/some/dir/latex-styles`
  then `export LATEX_STYLES=/some/dir/latex-styles`.

* Add `$LATEX_STYLES` to your `$TEXINPUTS`, `$BIBINPUTS` and `$BSTINPUTS`
  to ensure LaTeX will find the style and bibliography files:
  ```bash
  export TEXINPUTS=.:$LATEX_STYLES/styles//:$TEXINPUTS
  export BSTINPUTS=.:$LATEX_STYLES/styles/common::
  export BIBINPUTS=.:$LATEX_STYLES/share::
  ```
  Note the double slash symbols and double colons.

### Windows (TeXLive)

* run `kpsewhich -var-value=TEXHOME` to retrieve the directory `path\to\texmf` where to put the files. The typical output is `C:/Users/username/texmf` with `username` your actual user name.

* If the `texmf` folder does not exist in `path\to\`, create it.

* Following the [TeX directory structure (TDS)](https://ctan.org/pkg/tds)

  * create the subdirectory `path\to\texmf\tex\latex\` and copy in there the content of `\latex-styles\styles\`.

  * create the subdirectory `path\to\texmf\bibtex\bib` and copy in there the folder `\latex-styles\share`.

  * create the subdirectory `path\to\texmf\bibtex\bts` and copy in there the folder `\latex-styles\share`.

### Windows (MiKTeX)

* See [this discussion thread](https://tex.stackexchange.com/questions/69483/create-a-local-texmf-tree-in-miktex)

## Basic Styles

* [SIAM](http://www.siam.org) is the Society for Industrial and Applied
  Mathematics. The LaTeX style files for their journals may be downloaded from
  [www.siam.org/journals/auth-info.php](http://www.siam.org/journals/auth-info.php).
  The zip file contains all that is required.

* [AMS](http://www.ams.org) is the American Mathematical Society. The style
  files for their journals is found in most LaTeX distributions. The class I
  use is `amsart`.

* [LNCS](https://www.springer.com/gb/computer-science/lncs) is a style used for Springer's
  _Lecture Notes on Computer Science_ collection. The LaTeX files may be
  downloaded from
  https://www.springer.com/gb/computer-science/lncs/conference-proceedings-guidelines.
  The file `llncs2e.zip` contains all that is required.

* [Springer](https://media.springer.com/full/springer-instructions-for-authors-assets/zip/468198_LaTeX_DL_468198_240419.zip) is the style used for journals such as _Mathematical Programming_ and _Mathematical Programming Computation_.
  The LaTeX files may be downloaded from https://media.springer.com/full/springer-instructions-for-authors-assets/zip/468198_LaTeX_DL_468198_240419.zip.

## Editor Setup

If you use VSCode, install the extensions

* [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
* [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.vscode-ltex)

## Customizations

The styles offer a number of standard customizations that I find useful across
almost all scientific papers I write. Those include basic packages such as
`graphicx`, `tikz` and others but also the following:

* the ability to add a table of contents, which is not supported by all styles
  by default (at least not without serious conflicts), and which I find very
  useful while writing the paper

* the inclusion of the `todonotes` package along with the ability to add a
  list of todo items, which is not supported by all styles either

* a few commands to produce boxed lemmas, theorems and corollaries so as to
  make them stand out. Some style files seem to go to great lengths to make
  lemmas, theorems and corollaries blend in so much with the text that you
  almost can't see them

* integration with `git`.

Some choices have been made that may not be to everybody's taste but that fit
my needs and preferences best. Among them:

* the bibliography style is always `natbib`'s `plainnat` number style.
  Thus we never use `\cite` but only `\citep` and `\citet`.
  See the [natbib reference sheet](http://merkel.texture.rocks/Latex/natbib.php).


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dpo/latex-styles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

