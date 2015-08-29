# Darkness
***

Darkness is available at [Demonic's download page](http://www.demonic.net/files.php?id=2).

## Known Issues
Issue | OS | FOSSIL and Telnet | Resolution
--- | --- | --- | ---
Fossil disabled seems to work best and prevents NTVDM crashes. | Win7 | SYNC and WWIV5 Telnet | 


## Installation on Windows 7

* Download the beta3 zip from the [Demonic Site](http://www.demonic.net/files.php?id=2).
* Extract the zip file to c:\wwiv\doors\dark
* From the command prompt ```c:\wwiv\doors\dark``` run INSTALL.BAT
* Run DARKCFG.EXE and set the SysOp, BBS Name and setup the Nodes so that the handoff file format is Door32.sys and the location is \wwiv\temp# where # is the number of the node your configuring.
* Go into Chain Edit and set it up as follows:
```
A) Description  : Darkness
B) Filename     : c:\wwiv\doors\dark\dark32.exe -n%N -p%D
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) DOS Interrupt: NOT Used
G) Win32 FOSSIL : No
J) Local only   : No
K) Multi user   : Yes
L) Registered by: AVAILABLE
M) Usage        : 0
N) Age limit    : 0 - 255                                           
```
* **NOTE:** That the setting to NOT use FOSSIL. I don't know why this works. ;-)
