# NSIS Completions & Snippets

[![The MIT License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](http://opensource.org/licenses/MIT)
[![Package Control](https://packagecontrol.herokuapp.com/downloads/NSIS%20Completions%20&%20Snippets.svg?style=flat-square)](https://packagecontrol.io/packages/NSIS%20Completions%20&%20Snippets)
[![GitHub release](https://img.shields.io/github/release/idleberg/sublime-nsis.svg?style=flat-square)](https://github.com/idleberg/sublime-nsis/releases)
[![Travis](https://img.shields.io/travis/sublime-nsis.svg?style=flat-square)](https://travis-ci.org/idleberg/sublime-nsis)
[![Gitter](https://img.shields.io/badge/chat-Gitter-ff69b4.svg?style=flat-square)](https://gitter.im/NSIS-Dev/SublimeText)

[Sublime Text](http://www.sublimetext.com/) completions for Nullsoft Scriptable Install System ([NSIS](http://nsis.sourceforge.net/)) supporting commands, macros and plugins that are bundled with NSIS v2.46 (and 3.0b2). Also included are snippets for scaffolding different types of empty scripts and to insert code blocks. You can extend these completions for third-party plug-ins using the [add-ons pack](https://github.com/sublime-nsis-plugins/).

![Screenshot](https://raw.githubusercontent.com/idleberg/sublime-nsis/master/screenshot.gif)

*Screenshot of NSIS file in Sublime Text*

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
* Headers:
    * FileFunc
    * LogicLib
    * Memento
    * Modern UI
    * MultiUser
    * Sections
    * WinMessages
    * WinVer
    * WordFunc
    * x64
* Includes, Graphics, UIs
* Scaffolding Snippets
* Code Snippets

## Installation

### Package Control

1. Make sure you already have [Package Control](https://packagecontrol.io/) installed
2. Choose *“Install Package”* from the Command Palette (<kbd>Super</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>)
3. Type *“NSIS Completions & Snippets”* and press <kbd>Enter</kbd>

With [auto_upgrade](http://wbond.net/sublime_packages/package_control/settings/) enabled, Package Control will keep all installed packages up-to-date!

### Windows Installer

Assuming that you're already familiar with NSIS, you can build yourself a setup executable to install this package. Download `installer.nsi` from the scripts folder, compile the source and execute the generated file. You can choose which packages you want to install.

There's also a collection of [Sublime Text Packages](https://github.com/NSIS-Dev/Sublime-Text-Packages) available as a Windows installer.

### GitHub

1. Change to your Sublime Text `Packages` directory
2. Clone repository `git clone https://github.com/sublime-nsis.git 'NSIS Completions & Snippets'`

### Manual installation

1. Download the latest [ZIP file](https://github.com/sublime-nsis/archive/master.zip)
2. Unzip the archive to your Sublime Text `Packages` directory

## Usage

### Auto-completion

When not specifying a flag alongside a command, completion will display all available flags, with the first flag always being the default.

### Scaffolding snippets

Scaffolding snippets start with the prefix `scaffold` followed by the type of script you'd like to build:

* Basic Script
* InstallOptions Script
* MUI2 Script
* nsDialogs Script
* nsDialogs MUI2 Script
* NSIS Language File
* Translate MUI2 (English, French, or Spanish)
* Library

Several of the above snippets can set the number of sections in a script or add an init function.

#### Example:
With Sublime Text's fuzzy search in mind, you could for instance type `scaffBasic` to trigger the `scaffold:Basic Script` snippet and create the following script:

```nsis
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
````

Use `Tab` to jump to the next relevant bit of code you might want to change, `Shift-Tab` to jump back.

### Code snippets

Code snippets start with the prefix `do` followed by the code block you'd like to insert to your script:

* help dialog
* illegal file characters define
* language dialog
* message boxes
* UAC init macro
* version information
* version compare
* IsWin, IsRunningX64, and IsServer checks

#### Examples:
To quickly add a message box with three buttons labeled "Yes", "No" and "Cancel", you could type something like `doync` to trigger the`do:MB_YESNOCANCEL` snippet. This will insert the following line to the current position:

```nsis
MessageBox MB_YESNOCANCEL "messagebox_text"
```

Use `Tab` to jump between the segments of the code.

To insert a code block of version information commands, you could type `doinf` to trigger the `do:Version Information` snippet. This will insert several lines of code:

```nsis
VIProductVersion "0.0.0.0"
VIFileVersion    "0.0.0.0"
VIAddVersionKey  "FileDescription"  "description"
VIAddVersionKey  "FileVersion"      "0.0.0.0"
VIAddVersionKey  "ProductName"      "product_name"
VIAddVersionKey  "ProductVersion"   "0.0.0.0"
VIAddVersionKey  "LegalCopyright"   "copyright"
VIAddVersionKey  "OriginalFilename" "file_name.exe"
VIAddVersionKey  "Comments"         "comment"
VIAddVersionKey  "LegalTrademarks"  "trademark"
VIAddVersionKey  "CompanyName"      "company_name"
VIAddVersionKey  "InternalName"     "internal_name"
VIAddVersionKey  "PrivateBuild"     "private_build"
VIAddVersionKey  "SpecialBuild"     "special_build"
```

Again, you can use `Tab` to jump back and forth.

## License

This work is licensed under the [The MIT License](LICENSE).

## Donate

You are welcome support this project using [Flattr](https://flattr.com/submit/auto?user_id=idleberg&url=https://github.com/sublime-nsis) or Bitcoin `17CXJuPsmhuTzFV2k4RKYwpEHVjskJktRd`
