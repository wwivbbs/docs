# WWIVEdit
***

### History of WWIVEdit


### Installing WWIVEdit on Windows

Download WWIVEdit25.zip & WEDIT25B.zip from a WWIV BBS.
Extract all the files from WWIVEdit25.zip into a temporary folder.
From the command prompt in that temporary folder, run INSTALL.EXE

The installer will copy all the files into the correct sub directories
and make the neccessary config changes to WWIV (almos) **NOTE:** It will 
ask you about deleting files, say Yes.

When that is complete, copy the WWIVEDIT.EXE from WEDIT25B.zip into c:\wwiv\wwivedit\
and overwrite the existing file.

Your install is done. To set WWIVEdit as your editor, at the Main Menu go to "D" defaults and using
option "9" change your fullscreen editor.

When you run install, this will be added to your external editors section in wwivconfig.exe
```
┌───────────────────────────────────────────── External Editor Configuration ┐
│ Description       : WWIVEdit -- Highly Recommended                         │
│ BBS Type          : WWIV                                                   │
│ Use DOS Interrupts: No                                                     │
│ Emulate FOSSIL    : Yes                                                    │
│ Filename to run remotely:                                                  │
│ C:\WWIV\WWIVEDIT\WWIVEDIT %1 %2 %3 %4                                      │
│                                                                            │
│ Filename to run locally:                                                   │
│ C:\WWIV\WWIVEDIT\WWIVEDIT %1 %2 %3 %4 -set:local                           │
│                                                                            │
│ %1 = filename to edit                                                      │
│ %2 = chars per line                                                        │
│ %3 = lines per page                                                        │
│ %4 = max lines                                                             │
│                                                                            │
└────────────────────────────────────────────────────────────────────────────┘
```

Using your favorite text editor open c:\wwiv\wwivedit\config\default.def and 
edit the file so has the following changes:

```
; The default settings -- These work for WWIV 4.21a & WWIV 4.22
; See CONFIG.DOC for a complete description
LOCAL: [N] Whether this is a local definition
SETUP: [2] 0=None, 1=CHAIN.TXT, 2=EDITOR.INF (WWIV 4.21a)
RESULT: [2] 0=None, 1=RESULT.ED, 2=FEDIT.INF (WWIV 4.21a)
REPLY: [1] 0 = Never Ask User
            1 = Ask User if E-Mail and user wants to be asked
            2 = Ask User if user wants to be asked
TAG: [N] Disable User Tag Lines (if 1 or Y)
BBSTAG: [N] Disable BBS Tag (if 1 or Y)
COLORS: [0-9] Legal Color Range (See CONFIG.DOC for format)
MCI: [] Characters treated as MCI chars as per Merlin's Mod
LINES: [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1] (see CONFIG.DOC for meaning)
KEYBOARD: [2] 0=XT, 1=AT, 2=Attempt to Auto-Detect
MONO: [3] 0=CGA/EGA/VGA, 1=MONO, 2=Auto-Detect first use, 3=Always Auto
CHATKEY: [LR] L=Left Shift, R=Right Shift, C=Control, A=Alt
            LR=Both shifts, CA=Control-Alt, Etc
DOSKEY: [] Same Format as ChatKey
DIVIDER: [] Filename of the file that contains Tagline divider
NOTAG: [NOTAG.BBS] File that contains list of bases to exclude BBS tag from
NOPERSON: [] File that contains list of bases to exclude User Tag From
WARNTIME: [90] Number of seconds before user is beeped at (0=Never)
ABORTTIME: [180] Number of seconds before message auto-aborts
ESCTICKS: [50] Increase this if [A [B [C etc starts appearing remotely]
WWIVEDITMACROS:[Y] Whether or not WWIVEdit (MACROS.LCL) macros are allowed
QUOTER: [0] 0 = None, 1=Goose's Quote 3.01 or greater, 2=WWIV 4.21a
PERSONALDICT: [Y] Whether or not personal dictionaries should be kept
COLORTITLE: [Y] Whether or not Color Changes are allowed in the title
MOUSE: [N] Y=Allow Mouse Locally
DIRECTVIDEO: [N] Must be set to 0/N for Remote use
SCROLL: [N] Smooth Scrolling (won't work remotely);
PREFIX: [9] This is the character which will be inserted before each quoted line.
BBSDISABLE: [1] If Disable Taglines is set in boardedit, and this is 1,
            then User taglines will still work. If set to 2, user
            taglines wont work, but bbs taglines will.
; The following shouldn't be modified unless you know what you are doing!
COMPORT: [1] Set this to 0 for local and WWIV definitions
FOSSIL: [1] 1=Use fossil driver if Comport > 0
BBS: [3] 0=None, 1=WWIV
```

After you edit file from the command prompt run `C:\WWIV\WWIVEDIT\WWIVEDIT -F` which compiles the changes.

### Installing WWIVEdit on Linux

### Information on Older Verions of WWIVEdit

TODO: It would be nice to talk about the older versions.
