; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MeowSQL"
#define MyAppVersion "0.4.16"
#define MyAppPublisher "Ragnar Lodbrok"
#define MyAppURL "https://github.com/ragnar-lodbrok/meow-sql"
#define MyAppExeName "meowsql.exe"

; TODO: this is shit!!!
#define SourceDir "c:\data\projects\build_meow_sql"

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
LicenseFile={#SourceDir}\gpl.txt
OutputBaseFilename=Setup-MeowSql-{#MyAppVersion}
SetupIconFile={#SourceDir}\meowsqlico.ico
Compression=lzma
SolidCompression=yes

[Languages]
;some languages are not working in inno 6 anymore  (commented out)
Name: "english"; MessagesFile: "compiler:Default.isl"
;Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
;Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
;Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
;Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
;Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
;Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
;Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
;Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
;Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SourceDir}\meowsql.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libmysql.dll"; DestDir: "{app}"; Flags: ignoreversion
; TODO: call windeployqt instead
Source: "{#SourceDir}\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
; QtSQL
Source: "{#SourceDir}\Qt5Sql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\sqldrivers\*"; DestDir: "{app}\sqldrivers"; Flags: ignoreversion recursesubdirs createallsubdirs
; Do we need GL dlls?
Source: "{#SourceDir}\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
; VC 2017 runtime
Source: "{#SourceDir}\msvcp140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\msvcp140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\concrt140.dll"; DestDir: "{app}"; Flags: ignoreversion
; Runtime - really need?
Source: "{#SourceDir}\api-ms-win-core-file-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-core-file-l2-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-core-localization-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-core-processthreads-l1-1-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-core-synch-l1-2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-core-timezone-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-conio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-convert-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-environment-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-filesystem-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-heap-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-locale-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-math-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-runtime-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-stdio-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-string-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-time-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\api-ms-win-crt-utility-l1-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
; PostgreSQL
Source: "{#SourceDir}\libpq.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#SourceDir}\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion; TODO: uncomment?
;Source: "{#SourceDir}\libintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion; TODO: uncomment?
;Source: "{#SourceDir}\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion; TODO: uncomment?
;Source: "{#SourceDir}\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion; TODO: uncomment?
; mysqldump
Source: "{#SourceDir}\mysqldump.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\mysqldump_license"; DestDir: "{app}"; Flags: ignoreversion
; plink (from putty)
Source: "{#SourceDir}\plink.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\plink_license"; DestDir: "{app}"; Flags: ignoreversion
;
Source: "{#SourceDir}\gpl.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\license.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourceDir}\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceDir}\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceDir}\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourceDir}\styles\*"; DestDir: "{app}\styles"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
