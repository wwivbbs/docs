# Upgrading WWIV 4.x to WWIV 5
***

# BACKUP your existing WWIV BBS


Before attempting an upgrade, please follow the 
[WWIV 5 Installation on Windows](windows_installation.md)
to install prerequisites.

# Did I say BACKUP your existing WWIV BBS? 

## Prerequisites

#### Minimum Version of Windows
The project officially supports Windows 7 or Windows Server 2012 or later.

#### 32bit x86 Windows
WWIV BBS will start and run on Windows 10 x64 but none of the 16-bit DOS
programs and utilities you use with WWIV will work on 64-bit windows.
For the best experience, we recomment you use a 32bit x86 version of Windows.

#### Windows Updates and .Net 4.6
You should have ALL high priority updates on your Windows machine.
This might mean running windows update several times. As a part of this, 
you should also have installed Microsoft .Net Framework 4.6 or newer.


##Upgrade Steps:

####Download the current WWIV version
Read [the GET WWIV instructions](index.md#get-wwiv-50) 

####Install new EXEs
Take the build of WWIV you downloaded and extract the files into: ```c:\wwiv```.

You must copy  ```sbbsexec.dll``` to ```\windows\system32```.

#### Update, edit or create your WWIV.INI file
There have been many changes to WWIV since 4.x so we are providing a detailed sample.ini.
You may either rename sample wwivini.5xx to wwin.ini or you may simply edit your existing wwiv.ini based on the sample.
####WWIV.INI sample that is included in the archive.
[wwivini.5xx](wwivini.md)

#### Update your configuration files using the new INIT
From an elevated Command Prompt session, run INIT and verify all settings.
Please note, as mentioned above there have been many changes. One such change is that the instance configuration is now 
in wwiv.ini and no longer requires configuring each instance from INIT.

#### WWIVServer
If you are using a 3rd party Telnet Server like Net2BBS, you may need to edit some parameters to launch the BBS.

Launch WWIVServer and set your preferences as outlined here: 
[WWIVServer](wwiv_5_telnet_server.md)

Start WWIVServer and test by telnetting or sshing to your bbs on localhost!







