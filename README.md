# NSIS Autocomplete and Snippets
*by Jan T. Sott*

[Sublime Text](http://www.sublimetext.com/) completions for Nullsoft Scriptable Install System ([NSIS](http://nsis.sourceforge.net)) supporting commands, macros and plugins that are bundled with NSIS v2.46 (and 3.0a).

Also included are snippets for scaffolding different types of empty scripts and to insert code blocks. You can extend these completions for third-party plug-ins using the [add-ons pack](https://github.com/idleberg/NSIS-Sublime-Text-Addons).

This package has been tested and approved for Sublime Text versions 2 and 3 (beta).

### Features
* all inbuilt NSIS commands, variables, defines and constants
* Plugins:
    * AdvSplash
    * Banner
    * BgImage
    * Dialer
    * InstallOptions
    * LangDLL
    * Math
    * nsDialogs
    * nsExec
    * NSISdl
    * Splash
    * StartMenu
    * System
    * UserInfo
    * VPatch
* Macros:
    * FileFunc
    * WordFunc
    * LogicLib
    * Memento
    * Modern
    * MultiUser
    * Sections
    * WinMessages
    * WinVer
    * x64
* Includes, Graphics, UIs
* Scaffolding Snippets
* Code Snippets

## Installation

The easiest way to install the package is to use [Package Control](http://wbond.net/sublime_packages/package_control):

1. Make sure you already have [Package Control](http://wbond.net/sublime_packages/package_control) installed
2. Choose *Install Package* from the Command Palette (`Ctrl+Shift+P` on Windows and Linux, `⇧⌘P` on OS X)
3. Select *NSIS Autocomplete and Snippets* and press `Enter`

With [auto_upgrade](http://wbond.net/sublime_packages/package_control/settings) enabled, Package Control will keep all installed packages up-to-date!

### Windows Installer
Assuming that you're already familiar with NSIS, you can build yourself a setup executable to install this package. Download `installer.nsi` from the scripts folder, compile the source and execute the generated file. You can choose which packages you want to install.

### Manual installation

1. Download the files using the GitHub .zip download option
2. Unzip the files to your Sublime Text 2 `Packages/User` directory

## Usage

### Scaffolding snippets

Scaffolding snippets start with the prefix `scaffold` followed by the type of script you'd like to build:

* Basic Script
* InstallOptions Script
* MUI2 Script
* nsDialogs Script
* nsDialogs MUI2 Script
* Translate MUI2

#### Example:
To create a basic NSIS script, type `scaffoldBasicScript` (or `scaffBasic`for short) and press `Tab` to create the following script:

    ; Settings ---------------------------------
    Name "installer_name"
    OutFile "installer_name.exe"
    RequestExecutionLevel user
    InstallDir "$PROGRAMFILES\installer_name"
    
    ; Pages ------------------------------------
    Page components
    Page directory
    Page instfiles
    
    ; Sections ---------------------------------
    Section "section_name" section_index
    
        # your code here
    
    SectionEnd
    
    ; Functions --------------------------------

You can use `Tab` to jump to the next relevant bit of code you might want to change.

### Code snippets

Code snippets start with the prefix `do` followed by the code block you'd like to insert to your script:

* help dialog
* illegal file characters define
* language dialog
* message boxes
* UAC init macro
* version information

#### Examples:
To quickly add a message box with buttons for "Yes", "No" and "Cancel", you can use the `do:MB_YESNOCANCEL` snippet. Thanks to Sublime Text's fuzzy search, typing `doync` (and pressing `Tab`) will insert the following line:

    MessageBox MB_YESNOCANCEL "messagebox_text"
    
You can use `Tab` (and `Shift-Tab`) to jump between the segments of the inserted code.

To insert a code block of version information commands, simply type `dover` to trigger the `do:Version Information` snippet.

    VIProductVersion "0.0.0.0"
    VIFileVersion "0.0.0.0"
    VIAddVersionKey "FileDescription" "description"
    VIAddVersionKey "FileVersion" "0.0.0.0"
    VIAddVersionKey "ProductName" "product_name"
    VIAddVersionKey "ProductVersion" "0.0.0.0"
    VIAddVersionKey "LegalCopyright" "copyright"
    VIAddVersionKey "OriginalFilename" "file_name.exe"
    VIAddVersionKey "Comments" "comment"
    VIAddVersionKey "LegalTrademarks" "trademark"
    VIAddVersionKey "CompanyName" "company_name"
    VIAddVersionKey "InternalName" "internal_name"
    VIAddVersionKey "PrivateBuild" "private_build"
    VIAddVersionKey "SpecialBuild" "special_build"

Again, you can use `Tab` to jump back and forth.

## License

The MIT License (MIT)

Copyright (c) 2013 Jan T. Sott

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.