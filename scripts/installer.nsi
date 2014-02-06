; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Includes ---------------------------------
!include MUI2.nsh

; Settings ---------------------------------
Name "NSIS-Sublime-Text-Bundle"
OutFile "NSIS-Sublime-Text-Bundle.exe"
RequestExecutionLevel user
InstallDir "$APPDATA\Sublime Text 2\Packages"

; Pages ------------------------------------
!insertmacro MUI_PAGE_COMPONENTS 
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

; Languages --------------------------------
!insertmacro MUI_LANGUAGE "English"

; Sections ---------------------------------
Section "Basic Completions" NSIS-Sublime-Text

  InetLoad::load "https://github.com/idleberg/NSIS-Sublime-Text/archive/master.zip" "$PLUGINSDIR\NSIS-Sublime-Text.zip"
  ZipDLL::extractall "$PLUGINSDIR\NSIS-Sublime-Text.zip" "$INSTDIR"
  Rename /REBOOTOK "$INSTDIR\NSIS-Sublime-Text-master" "$INSTDIR\NSIS-Sublime-Text"

SectionEnd

Section "Plug-in Completions" NSIS-Sublime-Text-Addons

  InetLoad::load "https://github.com/idleberg/NSIS-Sublime-Text-Addons/archive/master.zip" "$PLUGINSDIR\NSIS-Sublime-Text-Addons.zip"
  ZipDLL::extractall "$PLUGINSDIR\NSIS-Sublime-Text-Addons.zip" "$INSTDIR"
  Rename /REBOOTOK "$INSTDIR\NSIS-Sublime-Text-Addons-master" "$INSTDIR\NSIS-Sublime-Addons-Menu"

SectionEnd

Section "Context Menu" NSIS-Sublime-Text-Menu

  InetLoad::load "https://github.com/idleberg/NSIS-Sublime-Text-Menu/archive/master.zip" "$PLUGINSDIR\NSIS-Sublime-Text-Menu.zip"
  ZipDLL::extractall "$PLUGINSDIR\NSIS-Sublime-Text-Menu.zip" "$INSTDIR"
  Rename /REBOOTOK "$INSTDIR\NSIS-Sublime-Text-Menu-master" "$INSTDIR\NSIS-Sublime-Text-Menu"

SectionEnd

; Descriptions -----------------------------
LangString DESC_NSIS-Sublime-Text ${LANG_English} "Adds autocompletion (and snippets) for NSIS commands and bundled plug-ins"
LangString DESC_NSIS-Sublime-Text-Addons ${LANG_English} "Adds autocompletion for several third party plug-ins"
LangString DESC_NSIS-Sublime-Text-Menu ${LANG_English} "Adds context menu to look up NSIS commands"

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${NSIS-Sublime-Text} $(DESC_NSIS-Sublime-Text)
	!insertmacro MUI_DESCRIPTION_TEXT ${NSIS-Sublime-Text-Addons} $(DESC_NSIS-Sublime-Text-Addons)
	!insertmacro MUI_DESCRIPTION_TEXT ${NSIS-Sublime-Text-Menu} $(DESC_NSIS-Sublime-Text-Menu)
!insertmacro MUI_FUNCTION_DESCRIPTION_END

; Functions --------------------------------
Function onInit
	InitPluginsDir
  
  ${If} ${FileExists} "$APPDATA\Sublime Text 2\Packages\*.*"
  ${AndIfNot} ${FileExists} "$APPDATA\Sublime Text 3\Packages\User\*.*"
    StrCpy $INSTDIR "$APPDATA\Sublime Text 2\Packages"
  ${ElseIfNot} ${FileExists} "$APPDATA\Sublime Text 2\Packages\*.*"
  ${AndIf} ${FileExists} "$APPDATA\Sublime Text 3\Packages\User\*.*"
    StrCpy $INSTDIR "$APPDATA\Sublime Text 3\Packages\User"
  ${ElseIf} ${FileExists} "$APPDATA\Sublime Text 2\Packages\*.*"
  ${AndIf} ${FileExists} "$APPDATA\Sublime Text 3\Packages\User\*.*"
    StrCpy $INSTDIR "$APPDATA\Sublime Text 2\Packages"
    MessageBox MB_YESNO|MB_ICONQUESTION "Do you prefer Sublime Text 3 over version 2?" IDNO +2
    StrCpy $INSTDIR "$APPDATA\Sublime Text 3\Packages\User"
  ${ElseIfNot} ${FileExists} "$APPDATA\Sublime Text 2\Packages\*.*"
  ${AndIfNot} ${FileExists} "$APPDATA\Sublime Text 3\Packages\User\*.*"
    MessageBox MB_OK|MB_ICONEXCLAMATION "Sublime Text not found, please specify the packages directory."
  ${EndIf}
FunctionEnd