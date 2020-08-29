# Planets: The Exploration of Space
***

* [Download Planets: The Exploration of Space from GamePort](http://www.gameport.com/bbs/planets.html)
* Extract the files to c:\wwiv\teos\
* Run c:\wwiv\teos\plancfg.exe
```ANSIDOC
  ** CREATING THE GAME.DAT FILE **

  Done.  You can now play locally by typing START from dos, for
  BBS setup check the (S)etup nodes option in this program, then have
  your BBS "CALL START <NODE NUM>" to run that configuration!

  EXAMPLE:  CALL START 1  (runs the node 1 configuration)

  [MORE]
```

```ANSIIDOC
                    PLANETS: TEOS CONFIGURE V2.02

√ (G)ame Options
  (S)etup Nodes With BBS <= DO THIS FIRST!
  (P)lanet Editor
  (A)dd a Planet
  (U)se Player Editor
  (N)PC Editor
  Space (C)raft Editor
  (E)nter Registration Code
  (R)eset Game
  (I)GM Control
  (Q)uit & Save

   Currently, this copy is UNREGISTERED.
```
* Run Setup Nodes with BBS
* If you have already setup LORD you can use C to copy the nodes from there, otherwise setup your nodes as below. You need to do this for every node users can access.

```ANSIIDOC
                             EDITTING NODE SETUP

√ (1) Node Number      : 1
  (2) BBS Name         : YOUR BBS
  (3) BBS Software     : WWIV
  (4) Path To Drop File: C:\WWIV\E\1\TEMP
  (5) Fossil/Internal  : Using Regular Fossil Driver
  (6) Locked Port Speed: Port Not Locked
  (7) Comport          : Read From Drop File
  (8) Send Open Comports Command?  : Yes!
  (9) Send Reset Comports Command? : Yes!
  (A) Use Special ANSI Settings?   : No!
  (B) Use direct screen writes?    : No!
  (C) Copy setup from another RT game.  (LORD & RTREADER)
  ([) Go back a node
  (]) Go forward a node
  (Q) Quit To Main
```
* Go to c:\wwiv\teos\start.bat and edit the dive and path in the beginning of the file and uncomment those two lines. (Remove the "REM " from the beginning of those two lines.
* Login into your bbs and use chainedit //ce at the main menu OR at the Waiting for Call (WFC) type C. Either way then select Insert door and configure it like this:

```ANSIIDOC
Editing Chain # 2

A) Description  : Planets: The Exploration of Space (TEOS)
B) Filename     : c:\wwiv\teos\start.bat %N
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) Exec Mode:     Emulate DOS FOSSIL
I) Launch From  : BBS Root Directory
K) Multi user   : Yes
L) Registered by: AVAILABLE
M) Usage        : 0
N) Age limit    : 0 - 255

(Q=Quit) Which (A-N,R,[,]) :
```
