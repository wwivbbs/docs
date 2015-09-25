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

