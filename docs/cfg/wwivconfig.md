# WWIVconfig
***

## Table of Contents

[TOC]

***
These are the SysOp tools and WWIV BBS settings which can be configured 
when you run wwivconfig.exe from the command prompt.

The following steps will get you up and running quickly, but I would not say
you're ready to go live and open up to users. After you complete these installation 
steps, see the full details on related wwivconfig settings, WWIV.INI and other Advanced 
configuration topics.

## Commandline Parameters

**wwivconfig** has several commandline parameter to launch specific editors.

Commandline Parameter | Description
:---: | ---
**--user_editor** | Launches directly into the WWIV User Editor.
**--menu_editor** | Launches directly into the WWIV Menu Editor.
**--network_editor** | Launches directly into the WWIV Network Editor.  This is also allows WWIV 4.x to use the Net51+ network stack.

****

## General System Configuration

This is where the basic configuration options and values including system name, sysop name
and other options are specified.

**System PW**  

The system password defaults to SYSOP, but you should be sure to change it to 
something else, hopefully something that other people will have a difficult 
time guessing.  Selecting your own personalized system password prevents other 
people from gaining unauthorized access to your BBS. When you type the 
password it will show on screen as XXXXX.

**System Name**  

The name of the BBS.  It should be unique within the network if possible,
so try to look at the wwivnet bbs lists, as well as the network files
for any other networks you plan on joining to see if the name you would
like to use it already taken.

**System Phone**  

This is where you would put the phone number for your BBS if you had one. 
WWIV doesn't support dial-up so its been the practice of current SysOps to 
put their proper AREA CODE and then NET-ONLY (e.g.: 206-NET-ONLY).

**Closed System**  

If your system will not be allowing users to dial up and establish accounts on 
your system, set this to Yes.  If someone does dial up a closed system, they 
will be presented with a short message telling them it is a closed system and 
does not accept new users.


**Newuser PWD**  

This is the password users will have to enter in order to log on as new 
users. If there is no Newuser password, anyone may log on as a new user. 
This should only be used if you wish to operate a "private" system where 
you only allow people you know to log on.


**Newuser restrict : LCMA\*PEVKNU01234**

These settings are used to restrict new users from certain features of the system.


Restriction | Description
:---: | ---
 L | Logons      : Limits the caller to 1 logon per day.
 C | Chat        : Caller won't be able to request chats with you.
 M | The default restriction of M means that any messages that the user posts, will not be seen by anyone else until you have validated the messages.
 A | Automessage : The caller cannot change the automessage. 
 * | Anonymous   : The caller cannot post anonymously.
 P | Post        : The caller cannot post messages.
 E | E-mail      : The caller cannot send e-mail.
 V | Voting      : The caller is not permitted to vote.
 K | Chat        : Restricts the user from chat room
 N | WWIVnet     : The caller cannot use the WWIV network.
 U | Upload      : All uploads by this user will go to the sysop dir.
 0 | 
 1 | 
 2 | 
 3 | 
 4 | 

**Newuser SL**  

This sets the security level that all new users are given. The default is 10. 
This should also be left alone until you understand what the different 
security levels do, and even then, most sysops will probably want to leave 
this set to 10.

**Newuser DSL**  

This sets the download security level that all new users are given. The 
default is zero. New users are severely limited in what they can do on the 
BBS until you have 'validated' them which usually involves an increase in 
their SL and DSL as well as possibly the assignment of some Access 
Restrictions (AR's) and Download Access Restrictions (DAR's).

**Newuser gold**  

WWIV keeps track of an amount of "gold" for use in online games, if needed. 
This sets the default amount new users are given. The regular distribution 
version of WWIV does not use gold for anything. If you have registered your 
BBS and obtained the source code, modifications are available which can allow 
you to use gold, for example, to regulate downloads or game use by requiring 
that the caller "earn" a certain amount of gold by posting.

**Sysop name**  

At a few points in the BBS, the system will need to print out the name of the 
system operator. This is where you can set what that name will be.  You may 
use your real name, but many sysops use "handles" or aliases instead. This is 
totally up to you.

**Sysop time: from - to**  

The sysop low time and sysop high time set the time limits that the sysop is 
available to be chatted with.  If, for example, you don't want people to be 
able to request a chat between 11pm and 7am, then your chat hours would be 
7am to 11pm.  The low time (when chat hours begin) would then be 7am, and 
the high time (when chat hours end) would be 11pm. You enter the time in the 
standard 24-hour format, where 7am is 07:00 and 11pm is 23:00.

Normally, the scroll lock key determines when the sysop is available for chat. 
If sysop hours are defined, the system ignores the status of scroll lock 
during the hours the sysop is supposed to be unavailable. In other words, if 
you followed the above example and chose available hours to be from 7am to 
11pm, callers will not be able to request chats with you from 11pm to 7am, 
regardless of the scroll lock setting.

During the sysop hours (7am to 11pm), scroll lock IS monitored, and will 
determine whether or not the sysop is available for chat.  If the scroll lock 
is on, callers will be told you are available, and if they request a chat, a 
chat alarm will be sounded (unless you have turned the beep off.

**Net time: from - to**  

Net time is the time the system is closed to users but open for Nets to make contact and share messages and files.

**Upload/Download Ratios**  

Many sysops want to have up/download ratio requirements. This allows you to 
set them. A caller's ratio is defined to be the number of kilobytes (k) 
(1024 bytes) of files uploaded divided by the number of kilobytes of files 
downloaded. So, if you want a caller to be able to download 5k for every 1k 
uploaded, the required ratio would then be 1/5=0.2, so you would set the ratio 
required to be 0.200. This way, when a caller has violated the ratio 
(downloaded over five times what he/she uploaded), the caller would not be 
allowed to download again until the caller uploaded enough data to clear the 
ratio.

**Post/Call ratio**

Similar to the Up/Download ratio, this restricts users from downloading if 
they do not meet the minimum ratio established.

**Max waiting**  

Each caller may have a number of pieces of mail waiting. This allows you to 
set the maximum number of pieces of mail a caller can have waiting. NOTE: The 
sysop (SL=255) can have 5 times this number of mail waiting. So, if, for 
normal callers, 20 is the maximum, then 100 would be the maximum for the 
sysop. If the sysop has more than 254 pieces of email waiting, only the first 
254 will show up at the mail prompt, but the rest will not be deleted. After 
the sysop reads some email, the software will make more of the waiting email 
available, but will still only show the first 254 pieces at the mail prompt.

**Max users**  

The BBS requires you set the maximum number of users that can be on the 
system. This defaults to 500, but you may increase or decrease it. The 
absolute maximum is 32,767, but 2,000 is probably more than enough for
a BBS now-a-days.

**Total Calls**  

If you have converted to WWIV v4 from another BBS (possibly an earlier version 
of WWIV), you may set the current caller number with this option. This counter 
is incremented each time the system receives a non-network call unless the 
remote caller is the sysop.

**Days active**  

Again, if you converted from another BBS, you can set the number of days your 
BBS has been active here.

**Max backups**

When WWIV saves critical datafiles such as subs.json, it retains backup copies
of this datafile in case of corruption or misconfiguration.  The backups
are of the format:

```FILENAME.backup.DATE```

The date is the YYYYMMDDHHmmSS of the timestamp the file was backed up.

For example:
```subs.json.backup.20200927073046``` 

The limits the number of backups to keep when making new datafile backups, and
by default the value is 0 which means do not remove old backups when making
new ones.

** 4.x Reg Number **

WWIV 5.x is open source software and is free to use in accordance with it's
very liberal Apache 2 license.  WWIV does not require a registration number,
however if you have a 4.x number you may enter it here though entirely for
nostalgic purposes.  It will be displayed in the post-logon system information
 (lilo) when a user logs in.



****


## System Paths  
```
┌──────────────────────────────────────────────────────────── System Paths ┐
│   Messages: msgs\                                                        │
│     GFiles: gfiles\                                                      │
│      Menus: gfiles\menus\                                                │
│       Data: data\                                                        │
│       Logs: logs\                                                        │
│    Scripts: scripts\                                                     │
│  Downloads: dloads\                                                      │
│                                                                          │
│                                                                          │
│ CAUTION: ONLY EXPERIENCED SYSOPS SHOULD MODIFY THESE SETTINGS.           │
│                                                                          │
│   Changing any of these requires YOU to MANUALLY move files and / or     │
│   directory structures.  Consult the documentation prior to changing     │
│   any of these settings.                                                 │
│                                                                          │
└──────────────────────────────────────────────────────────────────────────┘
```

If you have more than one hard disk, you may wish to split up the BBS files among your hard disks, in order to better use the space. Using this option, you may change the directories that the BBS looks to for certain things.  

**NOTE:** Changing any of the options here will only change where the BBS looks for the data; IT WILL NOT ACTUALLY MOVE ANY FILES OR DIRECTORIES. The following rules should be observed when assigning or changing directories:

1. Never use the root directory of any drive to store BBS files; the root directory can only hold a fixed number of files, while any sub-directories may hold an unlimited number of files in them.
2. The directory may be specified relative to the main BBS directory, or as a full pathname. In other words, "MSGS\" is recognized as a sub-directory of the main BBS dir.  In most instances, however, you won't need to change the default directories.   For security reasons, you are strongly advised to use complete paths to these directories. If you choose to have directories located on another drive, you MUST include a drive letter in the pathname.

**Messages Directory**  
Information regarding all e-mail and posts is stored here.

**GFILES Directory**  
The Directory where the BBS text files are stored. These files can be read by users while they are on line. If you have any GFILE sections (described later), the BBS will create sub-directories of the GFILES directory, i.e. "gfiles\section1\". See[????] for information on G-Files.

**DATA Directory**  
Data files used by the BBS are stored here.

**LOGS Directory**  
Log files (\*.log) produced by the BBS and other executables are stored here.

**Scripts Directory**  
WWIVbasic scripts are stored here.

**DLOADS Directory**  
This directory is used to set the default directory for new file sections.

If you change the Messages, GFILES, or DATA directories, you must:

1. Go to DOS and create the new directory.
2. Move all files from the old to the new directory.
3. You should then probably erase the old files and old  directory, to ensure you aren't confused by multiple  copies later on.
4. You will then need to create subdirectories, of the  new directories, with THE SAME NAME, and copy all files  from the old subdirectories to the new ones.

## External Transfer Protocol Configuration  
```
┌────────────── Select Protocol ┐
│ 2. XModem (Internal)          │
│ X. XModem CRC (Internal)      │
│ Y. YModem (Internal)          │
│ 6. X-MODEM (SEXYZ) (External) │
│ 7. YMODEM (SEXYX) (External)  │
│ 8. ZMODEM (SEXYZ) (External)  │
└───────────────────────────────┘
```

#### SEXYZ
This is a modern (and maintained) implementation of XMODEM, YMODEM, ZMODEM that is part of 
SynchroNet BBS's tools and maintained by it's author Rob Swindle. 
[read more](http://wiki.synchro.net/util:sexyz). Download sexyzNNN.zip where NNN is the 
newest version from the [SynchroFTP Site](ftp://ftp.synchro.net/).

Once downloaded, extract SEXYZ.EXE from SEXYZNN.zip into c:\wwiv\.  
From the command prompt, run wwivconfig and to to the `External Transfer Protocol Configuration` screen.  
Select INSERT and enter the highest number offered to place a new entry at the end of the list.  
Fill in the next screen so it matches this one.  

    +-------------------------------------- Protocol Configuration +
    ¦ Description    : ZMODEM (SE-XYZ)                             ¦
    ¦ Xfer OK code   : 0                                           ¦
    ¦ Receive command line:                                        ¦
    ¦ \WWIV\SEXYZ.EXE %H rz %B                                     ¦
    ¦ Send command line:                                           ¦
    ¦ \WWIV\SEXYZ.EXE %H sz %3                                     ¦
    ¦ Receive batch command line:                                  ¦
    ¦ \WWIV\SEXYZ.EXE %H rz %B                                     ¦
    ¦ Send batch command line:                                     ¦
    ¦ \WWIV\SEXYZ.EXE %H sz @%3                                    ¦
    ¦                                                              ¦
    ¦ %1 = com port baud rate                                      ¦
    ¦ %2 = port number                                             ¦
    ¦ %3 = filename to transfer, filename list to send for batch   ¦
    ¦ %4 = modem speed                                             ¦
    ¦ %5 = filename list to receive for batch UL                   ¦
    ¦ NOTE: Batch protocols >MUST< correctly support DSZLOG.       ¦
    +--------------------------------------------------------------+

The z in sz/rz indicated ZMODEM. TO add XMODEM and YMODEM, Insert 
two more entries to the list and just change the "Ssz/rz" to "sx/rx" or "sy/ry" on each line.

## External Editor Configuration 

WWIV supports external editors in addition to the internal line editor and an 
internal full screen editor. A full screen editor (FSED) allows you and your
callers (with ANSI) to write email and posts using an editor that is not
restricted to the line-by-line approach used by the internal line editor.
Some editors allow the use of function and arrow keys to move the cursor about
the screen, in much the same manner as a regular word processor. There are
some great advantages to using a full screen editor, especially from the
sysop's point of view, and so provision is made in WWIV for their use.  The
full screen editor must do all I/O through DOS or socket calls.

WWIVedit, another WSS product, is the most popular DOS based FSED that is
written specifically for use on WWIV BBS systems. WWIVedit is self installing
and requires very little intervention during installation. WWIVedit is
available on all Support Boards and on the Internet FTP site.
[More information about WWIVEdit on WWIV](../editors/wwivedits)
 
## Security Level Configuration  
```
┌──── Security Level Editor ┐
│ Security level   : 10     │
│ Time per day     : 25     │
│ Time per logon   : 10     │
│ Messages read    : 100    │
│ Emails per day   : 5      │
│ Posts per day    : 10     │
│ Post anony       : No     │
│ Email anony      : No     │
│ Read anony posts : No     │
│ Read anony email : No     │
│ Limited co-sysop : No     │
│ Co-sysop         : No     │
└───────────────────────────┘
```

For each security level (SL) there is a set of data that determine what a caller with this SL may do. These levels are numbered 0 through 255. You may change the default settings to suit your particular situation but most find the default setup satisfactory. If you should desire to change the settings, use {,},[,], to scan through until you find an SL you want to change. Then, hit enter to edit the data. You can then alter:

**Security level**  
Changing this field moves you to the entered security level. The other data on the screen is appropriately changed. Any data changed for the previous SL is saved.

**Time per day**  
This gives the time, in minutes, that a caller with that SL is able to be logged on the system per day, regardless of the number of calls.

**Time per logon**  
This gives the time, in minutes, that a caller with that SL is able to be logged on to the system per call. Normally, the time per day is 2.5 times the time per logon. Normally, the time allowed on is limited by the time per logon, but after the second call that day, the time per day may cut down the total amount of time on. Of course, the time allowed on may be affected by uploads, chat time, and extra time allowed by the sysop.

**Messages read**  
This sets the number of messages that can be read (per call) by a caller with that SL.

**Emails per day**  
This sets the maximum number of pieces of mail that a caller with that SL can send, per day. 
**NOTE:** Email excludes feedback. All callers are allowed to send up to five pieces of feedback per day.

**Posts per day**  
This sets the maximum number of posts a caller with that SL can post per day.

**Post anony**  
If set, this means that a caller can post anonymously on any message base.

**Email anony**  
If set, this means that a caller can send anonymous e-mail on the system. No network emails may be sent anonymously.

**Read anony posts**  
If set, a caller with this SL can read the names on anonymous posts.

**Read anony email**  
If set, a caller with this SL can read the names on anonymous e-mail.

**Limited co-sysop**  
If set, a caller with this SL can validate and delete messages from any caller. Normally, callers can only delete messages they have written.

**Co-sysop**  
If set, a caller with this SL has access to all co-sysop functions.

## Auto-Validation Level Configuration  
```
┌───────────────────────────────────────────────────────────── Select AutoVal ┐
│ ALT-F1    10    0                                                           │
│ ALT-F2    10    0                                                           │
│ ALT-F3    10    0                                                           │
│ ALT-F4    10    0                                                           │
│ ALT-F5    10    0                                                           │
│ ALT-F6    10    0                                                           │
│ ALT-F7    10    0                                                           │
│ ALT-F8    10    0                                                           │
│ ALT-F9    10    0                                                           │
│ ALT-F10   10    0                                                           │
└─────────────────────────────────────────────────────────────────────────────┘
```

The sysop can set the Alt-F keys (Alt-F1 through Alt-F10) to set certain data for a caller.  This function allows you to change that data.	You may set the SL, Download Security Level (DSL), Access Restriction (AR), Download Access Restriction (DAR), and System Restrictions.  Then, when a caller is on-line, you may press any ALT-F key combination to immediately change that caller's access levels and restrictions.  This may be useful for validating a user that is online.  You can, for example, just hit Alt-F1, and if you have that configured to give the caller standard access, the caller will immediately receive the configured access. It all happens very quickly, and there is no immediate indication on the caller's side that anything has happened, save perhaps a dramatic increase in the time-left display.  The Alt-F10 key combination is used if you have configured the optional Simple Auto-Sysop Validation ASV. The first four (Alt+F1-F4) settings are used in the optional Advanced ASV system.  See Section 4.1.15 for more information on ASV.

**CAUTION:** If you are logged-on locally, and hit an Alt-F key combination, your user account will be altered as well.  This would do no permanent damage, but it will cause an annoyance as you have to reset your own access levels again.

## Archiver Configuration  
```
┌──────── Select Archiver ┐
│ [ZIP] Zip               │
│ [ARJ] Arj               │
│ [RAR] Rar               │
│ [EXT]                   │
│ [EXT]                   │
│ [EXT] New Archiver Name │
│ [EXT] New Archiver Name │
│ [EXT] New Archiver Name │
│ [EXT] New Archiver Name │
│ [EXT] New Archiver Name │
└─────────────────────────┘
```

You may configure up to 15 archiver formats. ZIP, ARJ, PAK, LHA, and RAR are pre-configured on first installation. The first archiver record is the default archive on the system. The first four are also copied into the pre 4.30 archiver structure for backward compatibility with other supporting programs.	
For most users, you will not need to adjust these settings. The standard DOS replacement parameters %1 and %2 are used for source and destination filenames. To navigate through the archiver records, use the bracket keys [ and ].  To edit a record, hit enter.

**CAUTION:** It is *HIGHLY* recommended that you edit the command lines of all archivers and specify a complete path and filename to the program to run (i.e. c:\bat\pkzip.exe -a %1 %2). It is possible, though very unlikely, that malicious user could upload a batch file or compiled executable with an archiver name that may do harm to your system if run.

**Archiver Name**  
This is a recognizable name you canassign to the archive type.

**Archive Extension**  
This is the three letterextension applied to files of this particular type.
This setting is how the BBS identifies archives.

**Archive List**  
This command lists the archive tothe screen without actually extracting the files.

**Archive Extract**  
This command extracts the archiveto the temporary directory for the current instance.

**Archive Add**  
This command adds a file to anarchive.

**Archive Delete**  
This command deletes a specifiedfile or list of files from the current archive.

**Archive Comment**  
This command applies a BBScomment to the selected archive. 
**%K** substitutes GFILES\COMMENT.TXT for commenting.

**Archive Test**  
This command tests the selectedarchive for validity and integrity.


## Language Configuration 
```
┌──────────────────────────────────────────────────── Language Configuration ┐
│ Language name  : English                                                   │
│ Data Directory :                                                           │
│ C:\wwiv\gfiles\                                                            │
│                                                                            │
│ Menu Directory :                                                           │
│ C:\wwiv\gfiles\                                                            │
│                                                                            │
└────────────────────────────────────────────────────────────────────────────┘
``` 

## Network Configuration  

This option will allow configuration of networks. The prompts are self explanatory. 

The only setting that affects the BBS itself is the Network Type.
This setting tells the BBS and the network software how to handle the 
particular network. There are currently three network types: 
WWIV, Fido, and Internet.

**WWIV network type**  
This type is processed normally and entirely by the NET5x package.

**Fido network type**  
Use with net5x FTN support to attach WWIV subs as FTN echo areas.

**Internet network type**  
Implements internal hooks for pre-processors and tossers such the PPP
Project to convert native type messages and email to WWIV format and
vice versa.

**NOTE:** Network configuration is discussed at length as part of setting up
Nets to which your BBS  joins. See [NETS on the Home page of 
the wiki](../index.md#Nets).


## User Editor  

## Update Sub/Directory Maximums

This is a system tuning parameter.  These items require runtime memory thus
the higher they are set, the less memory is available. This setting may be
modified later if you require more subs or directories.

## Dial-Up Modem Access

The ability to support Modems and Dial-up Access was removed with WWIV 5.0
You may use an utility like 
[SexPOTS](http://wiki.synchro.net/util:sexpots) to support dial-up access.
