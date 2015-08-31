# INIT Settings
***

These are the SysOp tools and WWIV BBS settings which can be configured 
when you run init.exe from the command prompt.

TODO: Add an ASCII screen shot of the Init Screen

## General System Configuration
###Newuser restrict : LCMA*PEVKNU01234

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


## System Paths  
## External Transfer Protocol Configuration  

### Internal XMODEM, YMODEM & ZMODEM
TODO: I don't know anything about these. The initial settings are blank. Not sure they work.

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
## Auto-Validation Level Configuration  
## Archiver Configuration  
## Instance Configuration  
## Language Configuration  
## Network Configuration  
## Registration Information  
## User Editor  
## Update Sub/Directory Maximums
