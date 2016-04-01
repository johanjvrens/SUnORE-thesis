# [Thesis Starter Template](http://sunore.co.za/)

SUnORE-thesis is a Latex starter template that will help you make a better thesis.

* Source: [http://sunore.co.za/SUnORE-thesis](http://sunore.co.za/SUnORE-thesis)
* Homepage: [http://sunore.co.za/](http://sunore.co.za/)
* Documentation: [http://sunore.co.za/docs/](http://sunore.co.za/blog/)


## Installation

Clone the git repo - `git clone git://github.com/johanjvrens/SUnORE-thesis.git` - or [download the latest stable release](https://github.com/johanjvrens/SUnORE-thesis/releases/latest) and then rename the directory to the name of your thesis.

## Quick Start
###Linux / Mac
* Open a terminal and point it to the SUnORE-thesis location on your drive.
* Run the following command: `sh sunore.sh` to open the sunore menu as shown below.
```

 $$$$$$\  $$\   $$\            $$$$$$\  $$$$$$$\  $$$$$$$$\
$$  __$$\ $$ |  $$ |          $$  __$$\ $$  __$$\ $$  _____|
$$ /  \__|$$ |  $$ |$$$$$$$\  $$ /  $$ |$$ |  $$ |$$ |
\$$$$$$\  $$ |  $$ |$$  __$$\ $$ |  $$ |$$$$$$$  |$$$$$\
 \____$$\ $$ |  $$ |$$ |  $$ |$$ |  $$ |$$  __$$< $$  __|
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |
\$$$$$$  |\$$$$$$  |$$ |  $$ | $$$$$$  |$$ |  $$ |$$$$$$$$\
 \______/  \______/ \__|  \__| \______/ \__|  \__|\________|
                                            www.sunore.co.za

============================================================
Select from the following functions.              q to EXIT.
============================================================
1 - Build everything [3-7]
2 - Build (without DocCheck) [3,5,6,7]
3 - Clean workspace
4 - Run DocCheck
5 - Compile R Code
6 - Compile PDF
7 - Show PDF
q - EXIT
Enter your choice [1-7] :
============================================================
```
* Alternativly you can run the `make` commands
  * `make`
  * `make build`
  * `make clean`
  * `make check`
  * `make code`
  * `make pdf`
  * `make show`

###Windows
* In a terminal run the ```make``` command to compile the project with pdflatex
* run the make pdf command to compile twice for references
* run make clean command to clean up all the compiled files

## Configuration

**Setting up biber in your LATEX editor**

**Kile**

* In Kile go to `Settings ! Configure Kile`
* Under `Tools` click on `Build`
* Click on the `New` button, name your new tool `Biber` and click on `Next` and `Finish`
* Under `Select a tool` click on `Biber`
* On the left in the `Command` box type `biber`
* In the `Options` box type `'%S'` (include the apostrophies!)
* Go to the `Advanced` tab on the left
* In the `Source extension` box type `aux`
* In the `Target extension` box type `bbl`
* Go to the `Menu` tab
* From the `Add tool to Build menu` drop down list select `Compile`
* Click on `Ok`
* In the Kile toolbar there is a dropdown list of compile commands. In that list `Biber` will now
  appear, and you can simply click on it there to run it on the current file

**LEd**

* Locate the file C:\ProgramFiles\LEd\Batches\user1.bat (depends on where LEd is installed on
your PC)
* Right click on it and select `Edit`
* Add the following three lines to the end of the file
  * %3
  * cd %1
  * biber.exe %2
* In one of the LEd toolbars there is a button that reads U1. This will run biber on the current file
* If this button is not there, go to `View ! Toolbars` and add toolbars until you see the U1 button

**TeXnicCenter**

1. In TeXnicCenter go to `Build ! Define Output Profiles`
2. Select `LaTeX=>PDF` or `LaTeX=>PS` or whatever you want to use
3. In the box `Path to BibTeX executable` replace `bibtex.exe` with `biber.exe`
4. Go to `Build ! Current File ! BibTeX` to run biber on the current file

##Packages included in SUnORE style file.
* [geometry](https://www.ctan.org/pkg/geometry?lang=en)  
* [subfig](https://www.ctan.org/pkg/subfig?lang=en)  
* [algorithm2e](https://www.ctan.org/pkg/algorithm2e)  
* [xcolor](https://www.ctan.org/pkg/xcolor)  
* [latexsym](https://www.ctan.org/tex-archive/macros/latex/base?lang=en)  
* [graphicx](https://www.ctan.org/pkg/graphicx)  
* [longtable](https://www.ctan.org/pkg/longtable)  
* [booktabs](https://www.ctan.org/pkg/booktabs)  
* [amsmath](https://www.ctan.org/pkg/amsmath)  
* [colortbl](https://www.ctan.org/pkg/colortbl)  
* [hhline](https://www.ctan.org/pkg/hhline)  
* [enumitem](https://www.ctan.org/pkg/enumitem)  
* [rotating](https://www.ctan.org/pkg/rotating)  
* [amssymb](https://www.ctan.org/search/?phrase=amssymb)  
* [fmtcount](https://www.ctan.org/pkg/fmtcount)  
* [url](https://www.ctan.org/pkg/url)  
* [multirow](https://www.ctan.org/pkg/multirow)  
* [pgf, tikz](https://www.ctan.org/pkg/pgf)  
* [pgfplots](https://www.ctan.org/pkg/pgfplots)  
* [hyperref](http://www.ctan.org/pkg/hyperref)  Added to main.tex  

## Contributing

Everyone is welcome to help [contribute](CONTRIBUTING.md) and improve this project. There are several ways you can contribute:

* Reporting issues (please read [issue guidelines](https://github.com/necolas/issue-guidelines))
* Suggesting new features
* Writing or refactoring code
* Fixing [issues](https://github.com/johanjvrens/SUnORE-thesis/issues)
