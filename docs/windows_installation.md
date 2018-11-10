# New WWIV 5 Installation on Windows

## Prerequisites

** Windows7 (or Later) **

The project officially supports Windows 7 or Windows Server 2012 or later.

** 32bit x86 Windows **

Although WWIV BBS will start and run on 64-bit (x64), 
none of the 16-bit DOS programs and utilities you use 
with WWIV will work on 64-bit windows. For the best
experience, we recommend you use a 32bit x86 version of Windows.

**Windows Updates and .Net 4.6**

You should have ALL high priority updates on your Windows
machine. This might mean running Windows Update several
times. As a part of this, you should also have installed
*Microsoft .Net Framework 4.6* (or newer).

## Installation

Take the build of WWIV you downloaded and extract all the files 
into ```c:\wwiv``` (or c:\bbs). To make it easy on the author(s) we'll 
just say ```c:\wwiv``` from now on.

You must copy  ```sbbsexec.dll``` to ```\%WINDIR%\system32```.

### Initial Configuration
From a command prompt run wwivconfig.exe  
You will see this:  

    WWIV v5.3.0 (Build ####) Configuration Program.
    Copyright (c) 1998-2018, WWIV Software Services
    CONFIG.DAT NOT FOUND.
    Perform initial installation?

Type Y & wwivconfig will install all the files need & create all the directories. You will then be prompted for the SysOp password. The default password is SYSOP.

You will then see the main wwivconfig screen.

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

You navigate these wwivconfig forms with the arrow keys and ENTER key.
Hit ESC to Exit the forms and save your changes.  
**NOTE:** All the changes you make are saved when you exit.  
But, you can always change it back later.

For a Quick Setup change the following fields to your preferences.

* System Password  
* System Name  
* Sysop Name  

Type ESC to exit back to the main menu  
On the Main Menu hit ESC or Q to exit wwivconfig

From the command prompt at c:\wwiv  

* Run WWIVServer.exe & The WWIV Server application will start.  
* Under the Server Menu select Preferences.  
* Change WWIV Executable to: c:\wwiv\bbs.exe  
* Change Home Directory to c:\wwiv  
* Click OK to close the Preferences dialog.  

### Create the SYSOP account

Under the Server menu, select Run Local Node  
**NOTE:** This starts a local copy of the WWIV BBS without opening up 
connections for outside users.

This is the Waiting For Caller (WFC) Screen.

```
┌──────────────────────────────────────┬───────────────────────────────────────┐
│ Date: 12/25/2016    Time: 12:52:52   │OS: Windows                            │
└──────────────────────────────────────┴───────────────────────────────────────┘
┌──────────────────────────────────────────────────────────────────────────────┐
│               Activity and Statistics of My WWIV BBS Node 1                  │
├──────────────────────────────────────┬───────────────────────────────────────┤
│ Calls Today....... 48                │ WWIV Version.... 5.2.0                │
│ Feedback Waiting.. 1       New: 1    │ Net Version..... 51                   │
│ Uploads Today..... 0                 │ Total Users..... 99                   │
│ Messages Today.... 98                │ Total Calls..... 20167                │
│ Local Msgs Today.. 12                │ Call/Day Ratio.. 52                   │
│ Email Today....... 9                 │ Chat Status..... Not Available        │
│ Feedback Today.... 4                 │                                       │
│ Mins Used Today... 720 Mins (50.0%)  │                                       │
├──────────────────────────────┬───────┴───────────────────────────────────────┤
│ Commands:                    │ Last User:                                    │
│                              │ Newsysop #1                                   │
│  SPACE) Local Log on         ├───────────────────────────────────────────────┤
│  Q) Quit BBS                 │ Instance Monitor - Node 1                     │
│  ?) Display Help             │ User.... Nobody                               │
│                              │ Status.. Waiting for Call                     │
└──────────────────────────────┴───────────────────────────────────────────────┘
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘
```

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
System Password you setup in wwivconfig.

_**Congratulations! You are now the SysOp of a WWIV BBS!**_

Continue on to more advanced [WWIV Server](wwiv_5_telnet_server.md) settings 
to get on the Internet. But we suggest you read through the rest of the 
documentation before you get too excited about that just yet. But don't worry, 
it's not hard at all!
