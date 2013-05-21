# NSIS Autocomplete and Snippets
*by Jan T. Sott*

[Sublime Text](http://www.sublimetext.com/) completions for Nullsoft Scriptable Install System ([NSIS](http://nsis.sourceforge.net)) supporting commands, macros and plugins that are bundled with NSIS v2.46 (and 3.0a).

Also included are snippets for scaffolding different types of empty scripts and to insert code blocks. You can extend these completions for third-party plug-ins using the [add-ons pack](https://github.com/idleberg/NSIS-Sublime-Text-Addons).

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
    * Sections
    * WinMessages
    * WinVer
    * x64
* Includes, Graphics, UIs
* Scaffolding Snippets:
    * Basic Script
    * InstallOptions Script
    * MUI2 Script
    * nsDialogs Script
    * nsDialogs MUI2 Script
* Code Snippets:
    * insert help dialog
    * insert language dialog
    * insert version information

## Installation

The easiest way to install the package is to use [Package Control](http://wbond.net/sublime_packages/package_control):

1. open the Command Palette (`Ctrl+Shift+P` on Windows, `⌘+⇧+P` on OS X)
2. type *Install Package* hit `Enter`
3. select the package *NSIS Autocomplete and Snippets*

Package Control will keep all installed packages up-to-date!

### Windows Installer
Assuming that you're already familiar with NSIS, you can build yourself a setup file to install this package. Download `installer.nsi` from the scripts folder, compile the source and execute the generated file. You can choose which packages you can install.

### Manual installation

* Download the files using the GitHub .zip download option
* Unzip the files to your Sublime Text 2 `Packages/User` directory