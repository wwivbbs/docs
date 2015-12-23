# Upgrading WWIV 4.x to WWIV 5.0
***

# BACKUP your existing WWIV BBS


Before attempting an upgrade, please follow the 
[WWIV 5 Installation on Windows]
(Installing_on_Windows)
to install prerequisites.

# Did I say BACKUP your existing WWIV BBS? 

## Prerequisites

#### Minimum Version of Windows
The project officially supports Windows 7 or Windows Server 2008 R2 or later.

#### 32bit x86 Windows
WWIV BBS will start and run on Windows 10 x64 but none 
of the supporting programs and utilities you use with WWIV
will work on anything but 32bit x86 systems. We do not have code for 
all these other programs (yet?). Maybe down the road. So, for now 
use a 32bit x86 version of Windows.

#### Windows Updates and .Net 4.6
You should have ALL high priority updates on your Windows machine.
This might mean running windows update several times. As a part of this, 
you should also have installed Microsoft .Net Framework 4.6 or newer.

#### Microsoft Visual Studio C++ Runtime

WWIV 5 is compiled with MSVC 2015. Install the 
[Visual C++ Redistributable for Visual Studio 2015]
(https://www.microsoft.com/en-us/download/details.aspx?id=48145)


##Upgrade Steps:

####Download the current WWIV version
Visit the download page at wwivbbs.org 
[Get WWIV]
(/#get-wwiv-50)

####Install new EXEs
Take the build of WWIV you downloaded and extract all the  files 
into c:\wwiv (or c:\bbs). To make it easy on the author(s) we'll 
just say c:\wwiv from now on.

You must also must place a copy of ```sbbsexec.dll``` which is in the ZIP file in ```\windows\system32```.

####Update, edit or create your WWIV.INI file
There have been many changes to WWIV since 4.x so we are providing a detailed sample.ini.
You may either rename sample wwivini.5xx to wwin.ini or you may simply edit your existing wwiv.ini based on the sample.
####WWIV.INI sample 
[wwivini.5xx]
(wwivini)

####Update your configuration files using the new INIT
From an elevated Command Prompt session, run INIT and verify all settings.
Please note, as mentioned above there have been many changes. One such change is that the instance configuration is now 
in wwiv.ini and no longer requires configuring each instance from INIT.

####WWIV5TelnetServer
If you are using a 3rd party Telnet Server like Net2BBS, you may need to edit some parameters to launch the BBS.

Launch the WWIV5Telnet Server and set your preferences as outlined here: 
[WWIV5TelnetServer]
(WWIV_5_telnet_server)

Start the WWIV5TelnetServer and test by telnetting to your bbs!







