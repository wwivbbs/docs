# New WWIV 5 Installation on Windows

## Prerequisites

#### 32bit x86 Windows
WWIV BBS will start and run on Windows 10 x64 (I did it), but none 
of the supporting programs and utilities you use with WWIV
will work on anything but 32bit x86 systems. We do not have code for 
all these other programs (yet?). Maybe down the road. So, for now 
use a 32bit x86 version of Windows.

**NOTE: **We are also unsure if Windows Server will work. We have one failed attempt
on Windows Server 2003 R2. Let us know if you try it and it works.

#### Windows Updates and .Net 4.5
You should have ALL high priority updates on your windows mahcine. This might mean running windows update several times. As a part of this, you should also have installed Microsoft .Net Framework 4.5.x installed. The [4.5.2 install is here](http://www.microsoft.com/en-us/download/details.aspx?id=42642) if it was automatically installed by Windows Update. **XP** For Windows XP [4.5 was the last supported release](http://www.microsoft.com/en-us/download/details.aspx?id=30653), there may be updates on top of that, so install and then run Windows Update.

#### Microsoft Visual Studio C++ Runtime

WWIV 5 is compiled with MSVC 2015. Install the 
[Visual C++ Redistributable for Visual Studio 2015]
(https://www.microsoft.com/en-us/download/details.aspx?id=48145)

#### Fossils Driver

WWIV 5.0 is tested and used primarily with a fork of the Synchro BBS FOssil Driver.

TODO: This needs to be in the packaged build 

Download [sbbsexec.zip](http://sourceforge.net/projects/wwiv/files/redist/sbbsexec.zip/download) and place the mentioned files like so:
* sbbsexec.dll in \windows\system32
* dosxtrn.exe in \wwiv

## Installation Steps

Take the build of WWIV you downloaded and extract all the  files 
into c:\wwiv (or c:\bbs). To make it easy on the author(s) we'll 
just say c:\wwiv from now on.


From a command prompt run INIT.EXE  
You will see this:  

    WWIV v5.00 (Build 479) Initialization/Configuration Program.
    Copyright (c) 1998-2014, WWIV Software Services
    CONFIG.DAT NOT FOUND.
    Perform initial installation?

Type Y & INIT will install all the files need & create all the directories. You will then be prompted for the SysOp password. The default password is SYSOP.

You will then see the main INIT screen.

    ┌────────────────────────────────── Main Menu ┐
    │ G. General System Configuration             │
    │ P. System Paths                             │
    │ T. External Transfer Protocol Configuration │
    │ E. External Editor Configuration            │
    │ S. Security Level Configuration             │
    │ V. Auto-Validation Level Configuration      │
    │ A. Archiver Configuration                   │
    │ I. Instance Configuration                   │
    │ L. Language Configuration                   │
    │ N. Network Configuration                    │
    │ R. Registration Information                 │
    │ U. User Editor                              │
    │ X. Update Sub/Directory Maximums            │
    │ Q. Quit                                     │
    └─────────────────────────────────────────────┘

You can navigate this menu with the arrow keys and hit Enter,
or type the letter of the menu option to go to the next screen.

Select G. General System Configuration

    ┌─────────────────────────────────── System Configuration ┐
    │ System PW        : SYSOP                                │
    │ System name      : My WWIV BBS                          │
    │ System phone     :    -   -                             │
    │ Closed system    : No                                   │
    │ Newuser PW       :                                      │
    │ Newuser restrict :   M                                  │
    │ Newuser SL       : 10                                   │
    │ Newuser DSL      : 0                                    │
    │ Newuser gold     : 0                                    │
    │ Sysop name       : The New Sysop                        │
    │ Sysop time: from : 00:00     00:00                      │
    │ Net time  : from : 00:00 to: 00:00                      │
    │ Ratios    :  U/D : 0.000  Post/Call: 0.000              │
    │ Max waiting      : 50                                   │
    │ Max users        : 500                                  │
    │ Caller number    : 0                                    │
    │ Days active      : 0                                    │
    └─────────────────────────────────────────────────────────┘

You navigate these INIT forms with the arrow keys and ENTER key.
Hit ESC to Exit the forms and save your changes.  
**NOTE: **All the changes you make are saved when you exit.  
But, you can always change it back later.

For a Quick Setup change the following fields to your preferences.

* System Password  
* System Name  
* Sysop Name  

Type ESC to exit back to the main menu  
On the Main Menu hit ESC or Q to exit INIT

From the command prompt at c:\wwiv  

* Run WWIV5TelnetServer.exe & The WWIV5 Telnet Server application will start.  
* Under the Server Menu select Preferences.  
* Change WWIV Executable to: c:\wwiv\bbs.exe  
* Change Home Directory to c:\wwiv  
* Click OK to close the Preferences dialog.  

### Create the SYSOP account

Under the Server menu, select Run Local Node  
**NOTE: **This starts a local copy of the WWIV BBS without opening up 
connections for outside users.

This is the Waiting For Caller (WFC) Screen.

    ┌──────────────────────────────────────┬───────────────────────────────────────┐
    │ Date: 08/18/2015    Time: 01:27:16   │OS: Windows 8                          │
    └──────────────────────────────────────┴───────────────────────────────────────┘
    ┌──────────────────────────────────────────────────────────────────────────────┐
    │               Activity and Statistics of My WWIV BBS Node 1                  │
    ├──────────────────────────────────────┬───────────────────────────────────────┤
    │ Calls Today....... 0                 │ WWIV Version.... v5.00 (Development)  │
    │ Feedback Waiting.. 1       New: 1    │ Net Version..... 0                    │
    │ Uploads Today..... 0                 │ Total Users..... 1                    │
    │ Messages Today.... 0                 │ Total Calls..... 0                    │
    │ Local Msgs Today.. 0                 │ Call/Day Ratio.. N/A                  │
    │ Email Today....... 0                 │ Chat Status..... Not Available        │
    │ Feedback Today.... 1                 │ Modem........... Local Mode           │
    │ Mins Used Today... 0 Mins (0.0%)     │ Modem Status.... Waiting For Command  │
    ├──────────────────────────────┬───────┴───────────────────────────────────────┤
    │ Hard Disk Space Left:        │ Last User:                                    │
    │                              │ Newsysop #1                                   │
    │                              ├───────────────────────────────────────────────┤
    │                              │ Instance Monitor - Node 1                     │
    │                              │ User.... Nobody                               │
    │                              │ Status.. Waiting for Call                     │
    └──────────────────────────────┴───────────────────────────────────────────────┘
    ┌──────────────────────────────────────────────────────────────────────────────┐
    │                                                                              │
    └──────────────────────────────────────────────────────────────────────────────┘

* Hit the SPACE bar and answer Yes to logon to your WWIV BBS.  
* At the logon prompt enter NEW to create a new account.  
* Fill out out all the information. Yes some of it seems odd,
* you can modify these things.  
**When you are prompted to accept or change your password, stop.**

You are going to use the Waiting For Caller (WFC) commands to edit this user and
grant it the SysOp security levels.

* Hit F1 and the WWIV User Editor will appear over the top of the 
screen you were just at.
```
    ┌────────────────────────────────────────────────────────────────────┐
    │ WWIV User Editor                                    [Newsysop #-1] │
    ├────────────────────────────────────────────────────────────────────┤
    │ Security Level(SL): ░░░             Message AR:                    │
    │ DL Sec. Level(DSL): 0              Download AR:                    │
    │    User Exemptions: 0             Restrictions:                    │
    ├────────────────────────────────────────────────────────────────────┤
    │          Sysop Sub: 999              Time Bank: 0                  │
    │         Ass Points: 0              Gold Points: 0.                 │
    ├────────────────────────────────────────────────────────────────────┤
    │        KB Uploaded: 0            KB Downloaded: 0                  │
    │     Files Uploaded: 0         Files Downloaded: 0                  │
    │    Messages Posted: 0         Number of Logons: 0                  │
    ├────────────────────────────────────────────────────────────────────┤
    │ Note:                                                              │
    ├────────────────────────────────────────────────────────────────────┤
    │    (ENTER) Next Field   (UP-ARROW) Previous Field    (ESC) Exit    │
    └────────────────────────────────────────────────────────────────────┘
```
* Change the Security Level (SL) to 255.
* Change the DL Sec. Level (DSL) to 255.  

* Hit ESC to save the changes to this user.  

You will be back at your normal user session screen and can complete the
new account setup. You can change your password or use the one provided.
It does not have to be (should not be for security) the same as your 
System Password you setup in INIT.

_**Congratulations! You are now the SysOp of a WWIV 5.0 BBS!**_

Continue on to more advanced [WWIV5 Telnet Server](wwwiv5telnetserver) settings 
to get on the internet. But we suggest you read through the rest of the 
documentation before you get too excited about that just yet. But don't worry, 
it's not hard at all!