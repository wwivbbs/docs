# INIT Settings
***

These are the SysOp tools and WWIV BBS settings which can be configured 
when you run init.exe from the command prompt.

TODO: Add an ASCII screen shot of the Init Screen

## General System Configuration
**System PW**  
**System Name**  
**System Phone**  
**Closed System**  
**Newuser PWD**  
**Newuser restrict : LCMA*PEVKNU01234**  

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
**Newuser DSL**  
**Newuser gold**  
**Sysop name**  
**Sysop time: from - to**  
**Net time: from - to**  
**Ratios**  
**Max waiting**  
**Max users**  
**Caller number**  
**Days active**  

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
