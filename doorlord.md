# Legends of the Red Dragon (LORD)
***
**NOTE:** These steps are also generally useful for any 
[Robinson Technologies | RTSoft.com](http://www.rtsoft.com/index.php) Game.

Download LORD  
put it in x\bbsdir\lord then login into your bbs  
under chainedit //ce at the main menu or C at the wfc   
insert a door  
you should see a menu with a bunch of input fields  

Here's now my install of lord looks in the bbs  

    Editing Chain # 0
    A) Description : Legend of the Red Dragon
    B) Filename : lod1.bat %N
    C) SL : 10
    D) AR : None.
    E) ANSI : Optional
    F) DOS Interrupt: NOT Used
    G) Win32 FOSSIL : Yes
    J) Local only : No
    K) Multi user : Yes
    Which (A-K,R,[,],Q) ? 

Make yours look the same now lod1.bat looks like this

```batch
@echo off
cd lord
call start %1 /norip
exit
```

now in lordcfg setup your nodes like so

                            EDITTING NODE SETUP
    (1) Node Number : 1
    (2) BBS Name : Skulls & Crossbones
    (3) BBS Software : WWIV
    (4) Path To Drop File: c:\wwiv\temp1
    (5) Fossil/Internal : Using Extended Fossil Driver
    (6) Locked Port Speed: Port Not Locked
    (7) Comport : Read From Drop File
    (8) Send Open Comports Command? : Yes!
    (9) Send Reset Comports Command? : Yes!
    (A) Use Special ANSI Settings? : No!
    (B) Use direct screen writes? : Yes!
    (C) Copy setup from another RT game. (TEOS & RTREADER)
    ([) Go back a node]
    () Go forward a node
    (Q) Quit To Main

That should work for all the RT Games use the copy setup tool & reuse 
the above steps be sure to change your bbsname & copy this setup in 
lordcfg for every node