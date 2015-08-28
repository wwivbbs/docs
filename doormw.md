# MechWars 1.9G
***

Mechwars is an old game but i like it so heres my setup  
unzip mechwars into c:\wwiv\doors\mechwar\ (or similar) then in chainedit  
//ce from the main menu or c from the wfc insert a new chain  
make it look like this  

    Editing Chain # 4
    A) Description : MechWars
    B) Filename : c:\wwiv\doors\mechwar\mech.bat %N
    C) SL : 10
    D) AR : None.
    E) ANSI : Optional
    F) DOS Interrupt: Not Used
    G) Win32 FOSSIL : Yes
    J) Local only : No
    K) Multi user : No
    Which (A-K,R,[,],Q) ?

then create c:\wwiv\doors\mechwar\mech.bat

```batch
c:
cd \wwiv\doors\mechwar
copy c:\wwiv\temp%1\chain.txt c:\wwiv\doors\mechwar\chain.txt
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