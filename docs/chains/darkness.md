# Darkness
***

Darkness is available at [Demonic's download page](http://www.demonic.net/files.php?id=2).

## Known Issues
Issue | OS | FOSSIL | Resolution
--- | --- | --- | ---
Fossil disabled seems to work best and prevents NTVDM crashes. | Win7 | sbbsexec  | 


## Installation on 32-bit Windows

* Download the beta3 zip from the [Demonic Site](http://www.demonic.net/files.php?id=2).
* Extract the zip file to c:\wwiv\doors\dark
* From the command prompt ```c:\wwiv\doors\dark``` run INSTALL.BAT
* Run DARKCFG.EXE and set the SysOp, BBS Name and setup the Nodes so that the handoff file format is Door32.sys and the location is \wwiv\e\#\temp where # is the number of the node your configuring.
* Go into Chain Edit and set it up as follows:
```
A) Description  : Darkness
B) Filename     : c:\wwiv\doors\dark\dark32.exe -n%N -p%D
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) Exec Mode    : Normal
I) Launch From  : Temp/Node Directory
J) Local only   : No
K) Multi user   : Yes
L) Registered by: AVAILABLE
M) Usage        : 0
N) Age limit    : 0 - 255                                           
```

