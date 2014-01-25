# NSIS Completions & Snippets

[Sublime Text][1] completions for Nullsoft Scriptable Install System ([NSIS][2]) supporting commands, macros and plugins that are bundled with NSIS v2.46 (and 3.0a). Also included are snippets for scaffolding different types of empty scripts and to insert code blocks. You can extend these completions for third-party plug-ins using the [add-ons pack][3].

![Screenshot](https://raw.github.com/idleberg/NSIS-Sublime-Text/master/screenshot.gif)

*Screenshot of NSIS file in Sublime Text with [Paraíso theme](https://github.com/idleberg/Paraiso.tmTheme)*

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

### Package Control

1. Make sure you already have [Package Control][4] installed
2. Choose *Install Package* from the Command Palette (`Ctrl+Shift+P` on Windows and Linux, `⇧⌘P` on OS X)
3. Select *NSIS Completions & Snippets* and press `Enter`

With [auto_upgrade][5] enabled, Package Control will keep all installed packages up-to-date!

### Windows Installer

Assuming that you're already familiar with NSIS, you can build yourself a setup executable to install this package. Download `installer.nsi` from the scripts folder, compile the source and execute the generated file. You can choose which packages you want to install.

There's also a collection of [Sublime Text Packages][6] available as a Windows installer.

### GitHub

1. Change to your Sublime Text `Packages/User` directory
2. Clone repository `git clone https://github.com/idleberg/NSIS-Sublime-Text.git`

### Manual installation

1. Download the files using the GitHub .zip download option
2. Unzip the files to your Sublime Text `Packages/User` directory

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

Several of the above snippets can set the number of sections in a script or add an init function.

#### Example:
With Sublime Text's fuzzy search in mind, you could for instance type `scaffBasic` to trigger the `scaffold__Basic Script` snippet and create the following script:

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

    MessageBox MB_YESNOCANCEL "messagebox_text"
    
Use `Tab` to jump between the segments of the code.

To insert a code block of version information commands, you could type `dover` to trigger the `do__Version Information` snippet. This will insert several lines of code:

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

## Donate

You are welcome support this project using [Flattr](https://flattr.com/submit/auto?user_id=idleberg&url=https://github.com/idleberg/NSIS-Sublime-Text) or Bitcoin `17CXJuPsmhuTzFV2k4RKYwpEHVjskJktRd`

[1]: http://www.sublimetext.com/
[2]: http://nsis.sourceforge.net/
[3]: https://github.com/idleberg/NSIS-Sublime-Text-Addons/
[4]: http://wbond.net/sublime_packages/package_control/
[5]: http://wbond.net/sublime_packages/package_control/settings/
[6]: https://github.com/NSIS-Handbook/Tools/tree/master/Sublime%20Text%20Packages/