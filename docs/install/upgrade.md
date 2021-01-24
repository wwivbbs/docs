# Upgrading from previous versions.
***

# BACKUP your existing WWIV BBS


Before attempting an upgrade, please follow the 
[WWIV 5 Installation on Windows](win.md)
to install prerequisites.


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

#### Upgrade to 4.30.

If you are using a version of WWIV prior to 4.30, you must upgrade to 4.30 first.
This will add the default menus and other new files.  Alternatively you can unzip
the files listed in upgrade.bat or unzip the following wwiv distribution archives
that come with 5.x using -n to not overwrite files.

i.e:
```
unzip -qq -n gfiles.zip -d gfiles
unzip -qq -n data.zip -d data
unzip -qq -o regions.zip -d data
unzip -qq -o zip-city.zip -d data
```

#### Download the current WWIV version

Read the [GET WWIV instructions](../index.md) 

#### Upgrading from previos versions of WWIV 5.x or 4.3

Install new EXEs

Take the build of WWIV you downloaded and extract the files into: ```c:\wwiv```.

You must copy  ```sbbsexec.dll``` and ```netfoss.dll``` to 
```\windows\system32```. Note that netfoss.dll is contained in the netfossil
zip file named something matching ```net\*.zip```)

#### Update, edit or create your WWIV.INI file

There have been many changes to WWIV since 4.x so we are providing a new wwiv.ini.
You may either simply edit your existing wwiv.ini, bringing over any customizations
you have in your wwiv 4.x wwiv.ini file.

See [wwivini.5xx](../cfg/wwivini.md)

#### Update your configuration files using the new wwivconfig

Run wwivconfig and verify all settings.  This has to happen every time
we upgrade wwiv.

**Please note**, as mentioned above 
there have been many changes. One such change is that there is no longer
per instance configuration, apart from the temp directory which is set using
as pattern in wwiv.ini. Therefore WWIV no longer requires configuring each 
instance from wwivconfig.

#### Copy over newer datafiles

The easiest way to do this is to unzip using ```-n``` on top of the existing
datafiles.  -n tells unzip not to overwrite anything existing.  You can also
use a diff tool (like windiff) to look at the changes and bring over any
of the new changes while keeping your customizations.


```
unzip -qq -n gfiles.zip -d gfiles
unzip -qq -n data.zip -d data
unzip -qq -n scripts.zip -d scripts
```

The regions and zip-city are unlikely to have been edited by hand, so you 
likely want to use ```-o``` to overwrite.

Also if use windows, you should fix the path separators.

```
unzip -qq -o regions.zip -d data/regions
unzip -qq -o zip-city.zip -d data/zip-city
```

#### wwivd

wwivd is the telnet server bundled with WWIV. 

Configure wwivd as outlined here:  [wwivd](../conn/telnet.md)

Start wwivd and test by telnetting or sshing to your bbs on localhost
port 23 on Windows or 2323 on UNIX by default.  You can change this in
wwivconfig.







