# TradeWars 2002
***

[Download TradeWares 2002 from ClassicTW](http://wiki.classictw.com/index.php?title=Application:TradeWars_2002_v3)  

**NOTE:** You do NOT want the "GS" version of TW2002. The GS version is not a door
version it is a standalone game server. You also do NOT want the DPMI version of 
the download.

First thing you need to make sure you do not have the dpmi version  
extract Tradewars into a directory preferably c:\wwiv\tw  
then in the bbs under chainedit //ce from the main menu or c from the wfc  
insert a new chain aka door & make your listing look like this  

    Editing Chain # 2
    A) Description : Trade Wars 2002
    B) Filename : tw.bat %N
    C) SL : 10
    D) AR : None.
    E) ANSI : Optional
    F) DOS Interrupt: NOT Used
    G) Win32 FOSSIL : Yes
    J) Local only : No
    K) Multi user : Yes
    Which (A-K,R,[,],Q) ? 

& tw.bat looks like this  
```batch 
@echo off
c:
cd c:\wwiv\tw
TW2002 TWNODE=%1
exit
```

In Tradewars you setup your nodes like this

    Node number: 1
    <A> Path to Data files : <Default Directory="">
    <B> Path to Drop file : c:\wwiv\temp1\
    <C> BBS Drop file type : WWIV
    <D> Hardware Handshaking: Yes
    <E> Active Node : Yes
    <F> Fossil port 1 to 254: 1
    <I> I/O Type : Fossil
    Node editor: (?) (<>) (X=Exit) [X] :