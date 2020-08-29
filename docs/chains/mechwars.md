# MechWars 1.9G
***

## Known Issues


Problem | OS | Fossil Server | Resolution
--- | --- | --- | ---
NTVDM Crashes on the BBS Host after exiting door | Win7 32-bit | SYNCFOSS | Set compatibility mode on MECHWARS.EXE (right click properties) to Windows 95



## Installation

Mechwars is an old game but i like it so heres my setup  
unzip mechwars into c:\wwiv\doors\mechwar\ (or similar) then in chainedit  
//ce from the main menu or c from the wfc insert a new chain  
make it look like this  

    Editing Chain # 4
    A) Description  : MechWars
    B) Filename     : c:\wwiv\doors\mechwar\mech.bat %N
    C) SL           : 10
    D) AR           : None.
    E) ANSI         : Optional
    F) Exec Mode:   : Emulate DOS FOSSIL
    I) Launch From  : Temp/Node Directory
    J) Local only   : No
    K) Multi user   : No
    L) Registered by: AVAILABLE
    M) Usage        : 0
    N) Age limit    : 0 - 255    
    Which (A-K,N,[,],Q) ?

then create c:\wwiv\doors\mechwar\mech.bat

```batch
copy chain.txt c:\wwiv\doors\mechwar\chain.txt
c:
cd \wwiv\doors\mechwar
mechwars.exe /4 F+
del chain.txt
goto done
:done
CD \WWIV
exit
```

From the command line, cd to `\wwiv\doors\mechwar` and run SETUP.EXE.

* Fill in your Name
* Fill in your BBS Name
* Fill in your Score File Dir: \wwiv\doors\mechwar\
* I made no other changes, click SAVE
