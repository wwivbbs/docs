# MechWars
***

Mechwars is an old game but i like it so heres my setup  
unzip mechwars into c:\wwiv\mech or similar then in chainedit  
//ce from the main menu or c from the wfc insert a new chain  
make it look like this  

    Editing Chain # 4
    A) Description : MechWars
    B) Filename : mech.bat %N
    C) SL : 10
    D) AR : None.
    E) ANSI : Optional
    F) DOS Interrupt: Used
    G) Win32 FOSSIL : No
    J) Local only : No
    K) Multi user : No
    Which (A-K,R,[,],Q) ?

then make mech.bat
```batch
cd mech
copy c:\wwiv\temp%1\chain.txt c:\wwiv\mech
mechwars.exe /4 F+
del chain.txt
goto done
:done
CD \WWIV
exit
```

Thats about it run the setup for it & your good to go