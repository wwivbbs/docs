# Upgrading WWIV 4.x to WWIV 5
***

# BACKUP your existing WWIV BBS


Before attempting an upgrade, please follow the 
[WWIV 5 Installation on Windows](win.md)
to install prerequisites.

# Did I say BACKUP your existing WWIV BBS? 

Also copy your wwiv.ini to another file, like wwiv4.ini, since the 
wwiv 5.x includes a new wwiv.ini.

## Prerequisites

#### Minimum Version of Windows

The project officially supports Windows 7 or later and Windows Server 
2012R2 or later.  All development is done on Windows 10 however.

#### 32bit x86 Windows

WWIV BBS will start and run on Windows 10 x64 but none of the 16-bit DOS
programs and utilities you use with WWIV will work on 64-bit windows.
For the best experience, we recomment you use a 32bit x86 version of Windows.

#### Windows Updates

You should have ALL high priority updates on your Windows machine.
This might mean running windows update several times.


## Upgrade Steps:

#### Download the current WWIV version

Read the [GET WWIV instructions](../index.md) 

#### Install new EXEs

Take the build of WWIV you downloaded and extract the files into: ```c:\wwiv```.

You must copy  ```sbbsexec.dll``` to ```\windows\system32```.

#### Update, edit or create your WWIV.INI file

There have been many changes to WWIV since 4.x so we are providing a new wwiv.ini.
You may either simply edit your existing wwiv.ini, bringing over any customizations
you have in your wwiv 4.x wwiv.ini file.

See [wwivini.5xx](../cfg/wwivini.md)

#### Update your configuration files using the new wwivconfig

Run wwivconfig and verify all settings. **Please note**, as mentioned above 
there have been many changes. One such change is that there is no longer
per instance configuration, apart from the temp directory which is set using
as pattern in wwiv.ini. Therefore WWIV no longer requires configuring each 
instance from wwivconfig.

#### wwivd

wwivd is the telnet server bundled with WWIV. 

Configure wwivd as outlined here:  [wwivd](../conn/telnet.md)

Start wwivd and test by telnetting or sshing to your bbs on localhost
port 23 on Windows or 2323 on UNIX by default.  You can change this in
wwivconfig.







