# [Thesis Starter Template](http://optimalsolutions.co.za/)

Optimalsolutions is a Latex starter template that will help you make a better thesis.

* Source: [https://johanjvrens/optimalsolutions](https://github.com/johanjvrens/optimalsolutions)
* Homepage: [http://optimalsolutions.co.za/](http://optimalsolutions.co.za/)
* Documentation: [http://optimalsolutions.co.za/docs/](http://optimalsolutions.co.za/docs/)

## Installation

Clone the git repo - `git clone git://github.com/johanjvrens/optimalsolutions.git` - or [download it](https://github.com/johanjvrens/optimalsolutions/zipball/master) and then rename the directory to the name of your thesis.

## Configuration

**Setting up biber in your LATEX editor**

**Kile**
 In Kile go to Settings ! Configure Kile
 Under Tools click on Build
* Click on the New button, name your new tool Biber and click on Next and Finish
* Under Select a tool click on Biber
* On the left in the Command box type biber
* In the Options box type '%S' (include the apostrophies!)
* Go to the Advanced tab on the left
* In the Source extension box type aux
* In the Target extension box type bbl
* Go to the Menu tab
* From the Add tool to Build menu drop down list select Compile
* Click on Ok
* In the Kile toolbar there is a dropdown list of compile commands. In that list Biber will now
  appear, and you can simply click on it there to run it on the current File
**LEd**
* Locate the File C:\ProgramFiles\LEd\Batches\user1.bat (depends on where LEd is installed on
your PC)
* Right click on it and select Edit
* Add the following three lines to the end of the File
  * %3
  * cd %1
  * biber.exe %2
* In one of the LEd toolbars there is a button that reads U1. This will run biber on the current File
* If this button is not there, go to View ! Toolbars and add toolbars until you see the U1 button
**TeXnicCenter**
1. In TeXnicCenter go to Build ! Define Output Profiles
2. Select LaTeX=>PDF or LaTeX=>PS or whatever you want to use
3. In the box Path to BibTeX executable replace bibtex.exe with biber.exe
4. Go to Build ! Current File ! BibTeX to run biber on the current File

## Contributing

Everyone is welcome to help [contribute](CONTRIBUTING.md) and improve this project. There are several ways you can contribute:

* Reporting issues (please read [issue guidelines](https://github.com/necolas/issue-guidelines))
* Suggesting new features
* Writing or refactoring code
* Fixing [issues](https://github.com/johanjvrens/optimalsolutions/issues)