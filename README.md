# LaTeX Styles

This repository contains LaTeX styles I find useful to write scientific papers
along with common customizations. Everything here is built upon _exsiting_
styles and packages found in most LaTeX suites (e.g., the excellent
[TeXLive](http://www.tug.org/texlive) distribution.) The basic style files must
be downloaded from the publishers' website and placed somewhere where LaTeX can
find them.

## Installing

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

## Basic Styles

* [SIAM](http://www.siam.org) is the Society for Industrial and Applied
  Mathematics. The LaTeX style files for their journals may be downloaded from
  [www.siam.org/journals/auth-info.php](http://www.siam.org/journals/auth-info.php).
  The zip file contains all that is required.
  The main `cls` file is already included in `$LATEX_STYLES/styles/siampaper`.

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
  The main `svjour3.cls` is already included in `$LATEX_STYLES/styles/springerpaper`.

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

* the bibliography style is always `natbib`'s `abbrvnat` style.
  Thus we never use `\cite` but only `\citep` and `\citet`.
  See the [natbib reference sheet](http://merkel.texture.rocks/Latex/natbib.php).

## Format

- To format `.tex` files, use the [latexindent](https://latexindentpl.readthedocs.io/en/stable/) package. Install it on your Mac with the following command:

  ```bash
  brew install latexindent
  ```

- After installation, navigate to Parameters in Latex Workshop and find the setting for `latexindent`.

- Ensure that you adjust the ```Path``` and the ``Args`` as indicated below:

    <img src="https://github.com/MohamedLaghdafHABIBOULLAH/Optimization_with_Julia/blob/main/latexindent_settings.png" alt="latexindent" height="125px">

## Linting

- For semantic checking, employ [ChkTeX](https://www.nongnu.org/chktex/) which is also available as part of [TeXLive](https://www.tug.org/texlive/).

- After installation, navigate to Parameters in Latex Workshop and find the setting for `ChkTeX`.

- Enable linting Latex with ```ChkTeX``` and specify the correct ```Path``` to it if necessary:

  <img src="https://github.com/MohamedLaghdafHABIBOULLAH/Optimization_with_Julia/blob/main/Chktex_settings.png" alt="ChkTeX" height="125px">

- Ensure that the ```.chktexrc``` file (if exists) is present in the same folder as the ```.tex``` file.

- Make sure that your ```.chktexrc``` file does not include a ```CmdLine``` section with the following content:

  ```bash
  CmdLine
  {
    -v2  # This option should be removed
    -n 1
    -n 44
  }
  ```
