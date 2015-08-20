# Legends of the Red Dragon (LORD)
***

**NOTE:** This was documented using LORD 4.07

* [Download LORD from GamePort](http://www.gameport.com/bbs/lord.html)
Within the main zip file, there is another .zip file. Extract those files and place them into c:\wwiv\lord 
* Create c:\wwiv\lord\lord.bat with the following code:
```batch
@echo off
c:
cd \wwiv\lord
call start %1 /norip
exit
```
* Login into your bbs  and use chainedit //ce at the main menu OR at the Waiting for Call (WFC) type C. Either way then select Insert door and configure it like this:

```ASCIIDOC
Editing Chain # 0

A) Description  : Legend of the Red Dragon (LORD)
B) Filename     : c:\wwiv\lord\lord.bat %N
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) DOS Interrupt: NOT Used
G) Win32 FOSSIL : Yes
J) Local only   : No
K) Multi user   : Yes
L) Registered by: AVAILABLE
M) Usage        : 0
N) Age limit    : 0 - 255                            
```

* From the command prompt run c:\wwiv\lordcfg.exe

```ASCIIDOC
** ERROR READING THE LORD.DAT FILE **

This is either because you still have old data files, and haven't
run the update program, or you really have a corrupted LORD.DAT file.

(If this is simply the first time you've run LORD, hit A!)

Here are your choices:

(A) Create a NEW LORD.DAT file with defaults
(C) Drop to Dos, and forget the whole thing
```

* Select A and you will see the MAIN MENU.
* Select C to Configure Nodes

```ASCIIDOC
          Main    Tournament       Game Options     Misc          Editors
------------------------------------------------------------------------------
 +--------------------+
 ¦=> Configure Nodes  ¦
 ¦   Register Lord    ¦
 ¦   Reset Everything ¦
 ¦   Score file paths ¦
 ¦   GSZ Path & Name  ¦
 ¦                    ¦
 ¦   Exit the program ¦
 +-----------------+-----------------------------------+
                   ¦ Node 1 doesn't exist. Create it?  ¦
                   ¦                                   ¦
        ,sS$$$$$$$ ¦            -Yes-  No              ¦$$$$²"^"²Ss,
           $$$$$$$ +-----------------------------------+$$$$     $$$
           $ ;$$$$  $ ;$$$$     $;;$ $ ;$$$$     $$$ $ ;$$$$     $$$
           $;;$$$$  $;;$$$$     $;;$ $;;$$$$     $$$ $;;$$$$     $$$
           $;;$:$$  $;;$:$$     $ ;$ $;;$:$$     $$$ $;;$:$$     $:$
           $;;$$$$              $  $ $;;$$$$ .,,sS²'             $$$
   """"""" $;;$$$$  ;$$ """"""" $$$$ $;;$$$$ "" `Ss, """"""""""" $$$ """""""
           $$$$$$$$$$$$      .,d$S²' $$$$$$$     $$$          .,d$S'

            Legend of the Red Dragon 4.07 (C) 2004 Metropolis, Inc.

                      Configure node information for Lord

```

* On the Node Configuration screen, enter the settings as follows:

```ASCIIDOC
                        ** LORD 4.07 Node Configure **
------------------------------ Hit F1 for Help -------------------------


       => (1) Node Number                 : 1
          (2) BBS Name                    : A Pretty Cool BBS
          (3) BBS Software                : WWIV
          (4) Path to dropfile            : C:\WWIV\TEMP1
          (5) Fossil / Internal           : Using regular fossil driver
          (6) Locked port speed           : Port not locked
          (7) Comport                     : Read from dropfile
          (8) Send Open Comports command  : Yes!
          (9) Send Reset Comports command : Yes!
          (A) The status bar is           : Enabled!
          (B) Current Multitasker         : Autodetect
          (C) Use EXTRA time slicing      : No
          (D) Status Bar Colors

          (E) Copy setup from another RT game (TEOS and LORD2)

          ([) Go back a node
          (]) Go forward a node
          (Q) Quit to main
------------------------------------------------------------------------
```

* You will do this for each node that users access.
