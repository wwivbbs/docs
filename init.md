# INIT Settings
***

These are the SysOp tools and WWIV BBS settings which can be configured 
when you run init.exe from the command prompt.

## General System Configuration
**System PW**  

This is the Password you enter as well as the user password to gain SysOp level access to the BBS.

**System Name**  

The name of the BBS.

**System Phone**  

This is where you would put the phone number for your BBS if you had one. WWIV 5.0 doesn't support dial-up
so its been the practice of current SysOps to put their proper AREA CODE and then NET-ONLY (e.g.: 206-NET-ONLY).

**Closed System**  

If your system is not open to new users, put Y in this field.

**Newuser PWD**  

You can specify a password that new users must have in order to join the BBS.

**Newuser restrict : LCMA*PEVKNU01234**  

These settings are used to restrict new users from certain features of the system.

Restriction | Description
:---: | ---
 L | 
 C | 
 M | Prevent posting to subs
 A | 
 * | 
 P | 
 E | 
 V | 
 K | 
 N | 
 U | 
 0 | 
 1 | 
 2 | 
 3 | 
 4 | 

**Newuser SL**  

This is the Security Level (SL) that new users will be assigned.

**Newuser DSL**  

This is the Download Security Level (DSL) that new users will be assigned.

**Newuser gold**  

Gold was a feature of WWIV BBS that was not widely used. You can ignore this. -P

**Sysop name**  

Your SysOp account name.

**Sysop time: from - to**  

Set the time when the SysOp should be shown as available. This was used like officer hours and it sets the 
SysOp is available to chat feature so users can summon you for an on screen chat. This was useful when the BBS 
was running on a PC in your basement or living room. Not so much if you system is hosted on a VM in the cloud.

**Net time: from - to**  

Net time is the time the system is closed to users but open for Nets to make contact and share messages and files.

**Ratios**  

In the days of dial-up, you didn't want to have all your users calling up and just downloading programs, you also
wanted to require them to upload things. This ratio was a mechanism to enforce that.

**Max waiting**  

**Max users**  

**Caller number**  

How many Callers has your BBS had?

**Days active**  

How long has your BBS been up and running, from the inital time the config.dat was created.

## System Paths  
```
┌──────────────────────────────────────────────────────────── System Paths ┐
│ Messages  : C:\wwiv\msgs\                                                │
│ GFiles    : C:\wwiv\gfiles\                                              │
│ Menus     : C:\wwiv\gfiles\menus\                                        │
│ Data      : C:\wwiv\data\                                                │
│ Downloads : C:\wwiv\dloads\                                              │
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
## External Transfer Protocol Configuration  

### Internal XMODEM, YMODEM & ZMODEM
TODO: I don't know anything about these. The initial settings are blank. Not sure they work.
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

### SEXYZ
This is a modern (and maintained) implementation of XMODEM, YMODEM, ZMODEM that is part of 
SynchroNet BBS's tools and maintained by it's author Rob Swindle. 
[read more](http://wiki.synchro.net/util:sexyz). Download sexyzNNN.zip where NNN is the 
newest version from the [SynchroFTP Site}(ftp://ftp.synchro.net/).

Once downloaded, extract SEXYZ.EXE from SEXYZNN.zip into c:\wwiv\.  
From the command prompt, run INIT and to to the `External Transfer Protocol Configuration` screen.  
Select INSERT and enter the highest number offered to place a new entry at the end of the list.  
Fill in the next screen so it matches this one.  

    +-------------------------------------- Protocol Configuration +
    ¦ Description    : XMODEM (SE-XYZ)                             ¦
    ¦ Xfer OK code   : 0                                           ¦
    ¦ Receive command line:                                        ¦
    ¦ C:\WWIV\SEXYZ.EXE %H -TELNET RX %3                           ¦
    ¦ Send command line   :                                        ¦
    ¦ C:\WWIV\SEXYZ.EXE %H -TELNET SX %3                           ¦
    ¦ Receive batch command line:                                  ¦
    ¦ C:\WWIV\SEXYZ.EXE %H -TELNET RX %3                           ¦
    ¦ Send batch command line:                                     ¦
    ¦ C:\WWIV\SEXYZ.EXE %H -TELNET SX @%3                          ¦
    ¦                                                              ¦
    ¦ %1 = com port baud rate                                      ¦
    ¦ %2 = port number                                             ¦
    ¦ %3 = filename to transfer, filename list to send for batch   ¦
    ¦ %4 = modem speed                                             ¦
    ¦ %5 = filename list to receive for batch UL                   ¦
    ¦ NOTE: Batch protocols >MUST< correctly support DSZLOG.       ¦
    +--------------------------------------------------------------+

The X in SX\RX indicated XMODEM. TO add YMODEM and ZMODEM, Insert 
two more entries to the list and just change the "SX\RX" to "SY\RY" or "SZ\RZ" on each line.

## External Editor Configuration  
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
## Instance Configuration  
```
┌─────────────────────────────────────── Temporary Directory Configuration ┐
│ Temporary Dir Pattern : temp%n                                           │
│ Batch Dir Pattern     : batch%n                                          │
│ Number of Instances:  : 4                                                │
│                                                                          │
│ To change these values please edit 'wwiv.ini'                            │
│                                                                          │
│ Press Any Key                                                            │
│                                                                          │
└──────────────────────────────────────────────────────────────────────────┘
```
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

Network configuration is discussed at length as part of setting up Nets to which your BBS 
joins. See [NETS on the Home page of the wiki](home).

## Registration Information  

WWIV 5.0 does not require a registration number. If you have a 4.x number you can put it in here though for 
nostalgic purposes.

## User Editor  

## Update Sub/Directory Maximums