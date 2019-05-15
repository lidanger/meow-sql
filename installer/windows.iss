; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MeowSQL"
#define MyAppVersion "0.3.1"
#define MyAppPublisher "Ragnar Lodbrok"
#define MyAppURL "https://github.com/ragnar-lodbrok/meow-sql"
#define MyAppExeName "meow-sql.exe"

#define SourceDir "C:\data\work\projects\build-meow-sql-Desktop_Qt_5_6_2_MSVC2013_32bit-Release\release"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D8440414-9746-4247-AC5C-AB896497AA74}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\data\work\projects\meowsql\gpl.txt
OutputBaseFilename=Setup-MeowSql-{#MyAppVersion}
SetupIconFile=C:\data\work\projects\meowsql\meowsqlico.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.islu"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SourceDir}\meow-sql.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libmysql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
; Do we need GL dlls?
Source: "{#SourceDir}\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
; VC 2013 runtime
Source: "{#SourceDir}\msvcp120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
; PostgreSQL
Source: "{#SourceDir}\libpq.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion
;
Source: "{#SourceDir}\gpl.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\license.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceDir}\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceDir}\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
