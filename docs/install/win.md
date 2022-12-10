# New WWIV 5 Installation on Windows

## Prerequisites

**Windows Versions**

The windows version of WWIV is developed and tested on Windows 10, however
may also run on Windows 8.1 or Windows Server 2012R2 (NT 6.3) or later, however
is not tested on anything older than Windows 10 currently. 

**32bit x86 Windows**

Although WWIV BBS will start and run on 64-bit (x64), none of the 16-bit DOS
programs and utilities you use with WWIV will work on 64-bit windows. For 
the best experience, you may want to use a 32bit x86 version of Windows.

**Windows Updates**

You should have ALL high priority updates on your Windows machine. This may
mean running Windows Update several times.

## Installation

Take the build of WWIV you downloaded and extract all the files 
into ```c:\wwiv``` (or c:\bbs). To make it easy on the author(s) we'll 
just say ```c:\wwiv``` from now on.

You must copy  ```sbbsexec.dll``` to ```\%WINDIR%\system32```.

### Initial Configuration

From a command prompt run wwivconfig.exe  
You will see this:  

    WWIV v5.6.0 (Build ####) Configuration Program.
    Copyright (c) 1998-2021, WWIV Software Services
    CONFIG.DAT NOT FOUND.
    Perform initial installation?

Type **Y** and wwivconfig will install all the files need and create all of 
the directories. 

You will also be prompted for the the following information:
* SysOp Handle or Alias
* Sysop Real Name
* SysOp Password.

You will then see the main wwivconfig screen that looks as follows:

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
    │ W. wwivd Configuration                      │
    │ Q. Quit                                     │
    └─────────────────────────────────────────────┘


You navigate these wwivconfig forms with the arrow keys and ENTER key.
Hit ESC to Exit the forms and save your changes.  

**NOTE:** All the changes you make are saved when you exit.  

Type ESC to exit back to the main menu  
On the Main Menu hit ESC or Q to exit wwivconfig

From the command prompt at c:\wwiv  

* Run wwivd.exe & The WWIV Server daemon will start.
* If you need to make changes, please use wwivconfig to do so in the (W)
  menu item for wwivd.

### Log on to the BBS

From a command prompt run: ```bbs``` to launch the bbs's Waiting for Caller
screen.  Note that the name is for historical reasons, and the BBS isn't 
actually waiting for a call anymore, wwivd handles the inbound telnet sessions.

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
│ Calls Today....... 48                │ WWIV Version.... 5.8.0                │
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
* At the logon prompt enter ```F``` to log in as the sysop account created
  in wwivconfig.

**Congratulations! You are now the SysOp of a WWIV BBS!**

Continue on to more advanced [wwivd](../conn/telnet.md) settings 
to get on the Internet. But we suggest you read through the rest of the 
documentation before you get too excited about that just yet. But don't worry, 
it's not hard at all!


### Configuring WWIVnet 

See [WWIVnet](../network/wwivnet.md) for details on configuring WWIVnet and 
subscribing to subboards (aka message areas).
