# Subs FIX Utility: FIX.EXE
***

###FIX.EXE
The FIX utility is a tool that can inspect your BBS's data files and is used sparingly when facing possible corruption in your .dat files

```FIX
Fix /? for info

Command Line Usage: FIX.EXE [-Y, -D, -U, -X]

        -Y      = Force Yes to All Prompts
        -D      = Check Directories
        -U      = Check User Records
        -X      = Use Experimental features
```


Running FIX.EXE without any parameters performs a default scan on the following files:

```FIX

\BBS\CONFIG.DAT
\BBS\DATA\STATUS.DAT
\BBS\DATA\dirs.dat
\BBS\DATA\subs.dat
Checks for critical DATA files [Paths? ]
```

Adding the -D command line switch instructs FIX to run the FixDirectoriesCommand

```FIX-D
Checks # of files
Checks and repairs Extended Descriptions
```

Adding the -U command line switch instructs FIX to run the FixUsersCommand

```FIX-U
Checks USER.LST
       Checks for trashed user records
       Checks size
Checks NAMES.LST
Compares STATUS.DAT with USER.LST
```
-X      = Use Experimental features

```FIX-X
Experimental Features [?]
```

Logfile saved in \BBS directory

```FIX.LOG
----------  Thu 24 Sep 2015, fix v5.00 (Build 1586)
+ 16:38:11  Reading config.dat...
+ 16:38:11  Reading C:\WWIV\DATA\status.dat...
+ 16:38:11  Reading C:\WWIV\DATA\dirs.dat...
+ 16:38:11  Found 6 directories
+ 16:38:11  Reading C:\WWIV\DATA\subs.dat...
+ 16:38:11  Found 61 subs
+ 16:38:11  Checking for Critical DATA files...
+ 16:38:11  All critical DATA files found
+ 16:38:11  Checking Directories...
+ 16:38:11  Basic directories present...
+ 16:38:11  Checking 6 directories
+ 16:38:11  Checking directory 'WWIV BBS Files'
! 16:38:11  Corrected # of files in WWIV BBS Files.
! 16:38:11  Fixed extended description for 'NET38B3 .ZIP'.
! 16:38:11  Fixed extended description for 'SBBSEXEC.ZIP'.
! 16:38:11  Fixed extended description for 'BREDIT10.ZIP'.
! 16:38:11  Fixed extended description for 'ALT-MENU.ZIP'.
! 16:38:11  Fixed extended description for '430SYSTX.ZIP'.
! 16:38:11  Fixed extended description for '430SYSMS.ZIP'.
! 16:38:11  Fixed extended description for 'WWIV5B3 .ZIP'.
! 16:38:11  Fixed extended description for 'WWIV430 .ZIP'.
! 16:38:11  Fixed extended description for 'WWIV424 .ZIP'.
+ 16:38:11  Checking directory 'Misc Door programs'
! 16:38:11  Fixed extended description for 'TRKTRV23.ZIP'.
! 16:38:11  Fixed extended description for 'PYRAMID .ZIP'.
! 16:38:11  Fixed extended description for 'OOSRCKIT.ZIP'.
! 16:38:11  Fixed extended description for 'OOSNDLIB.ZIP'.
! 16:38:11  Fixed extended description for 'OOII_120.ZIP'.
! 16:38:11  Fixed extended description for 'OOAT11MS.ZIP'.
! 16:38:11  Fixed extended description for 'OOAT11M .ZIP'.
! 16:38:11  Fixed extended description for 'OOAT11  .ZIP'.
! 16:38:11  Fixed extended description for 'OOACIT30.ZIP'.
! 16:38:11  Fixed extended description for 'OO112-3 .ZIP'.
! 16:38:11  Fixed extended description for 'OO112-2 .ZIP'.
! 16:38:11  Fixed extended description for 'OO112-1 .ZIP'.
! 16:38:11  Fixed extended description for 'OO111   .ZIP'.
! 16:38:11  Fixed extended description for 'OO110-M .ZIP'.
! 16:38:11  Fixed extended description for 'OO110-3 .ZIP'.
! 16:38:11  Fixed extended description for 'OO110-2 .ZIP'.
! 16:38:11  Fixed extended description for 'OO110-1 .ZIP'.
+ 16:38:11  Checking directory 'Old Graphic tools'
+ 16:38:11  Checking directory 'BLOOD STONE INITIATIVE'
+ 16:38:11  Skipping directory 'Really Old Shareware ' [OFFLINE]
+ 16:38:11  Skipping directory 'NO001A' [OFFLINE]
+ 16:38:11  FIX Completed.  Time elapsed: 0 seconds


ATUS.DAT matches expected user count of 174 users.
+ 19:57:54  FIX Completed.  Time elapsed: 0 seconds
```
