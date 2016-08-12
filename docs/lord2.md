# LORD II - The New World
***

* [Download Lord 2 from GamePort](http://www.gameport.com/bbs/lord2.html)
* Expand the .zip file into c:\wwiv\lord2\
* From the command prompt, run LCFG.exe

```
 ** CREATING THE GAME.DAT FILE **

 Done.  You can now play locally by typing LORD2 from dos, for
 BBS setup check the (S)etup nodes option in this program, then have
 your BBS "CALL LORD2 <NODE NUM>" to run that configuration!

 EXAMPLE:  CALL LORD2 1  (runs the node 1 configuration)

 [MORE]
```
```
                   LORD II: CONFIGURE 102

 (G)ame Options
 (S)etup Nodes With BBS <= DO THIS FIRST!
 (W)orld Editor
 (U)se Player Editor
 (D)iagnostics on people playing now
 (I)tem Editor
 (E)nter Registration Code
 (R)eset Game
 (Q)uit & Save

  Currently, this copy is UNREGISTERED.
```
* Select Setup
* If you have already setup LORD, you can select "C" and it will copy all the node settings from LORD.
* If you are setting this up for the first time, edit the Node to match below. You will need 
to do this for each node that accepts users.

```
                             EDITING NODE SETUP

√ (1) Node Number      : 1
  (2) BBS Name         : YOUR BBS
  (3) BBS Software     : WWIV
  (4) Path To Drop File: C:\WWIV\TEMP1
  (5) Fossil/Internal  : Using Regular Fossil Driver
  (6) Locked Port Speed: Port Not Locked
  (7) Comport          : Read From Drop File
  (8) Send Open Comports Command?  : Yes!
  (9) Send Reset Comports Command? : Yes!
  (A) Use Special ANSI Settings?   : No!
  (B) Use direct screen writes?    : No!
  (C) Copy setup from another RT game.  (LORD & RTREADER)
  (D) Use secondary ASYNC commands?: No!
  ([) Go back a node
  (]) Go forward a node
  (Q) Quit To Main
```
* Edit c:\wwiv\lord2\lord2.bat and change the drive and PATH near the top to c: & \wwiv\lord2. Also, uncomment 
those two lines. (Remove the "REM " from the start of the lines).
* Move c:\wwiv\lord2\lord2.bat to c:\wwiv\lord2.bat
* Login into your bbs and use chainedit //ce at the main menu OR at the Waiting for Call (WFC) type C
* Either way then select Insert door and configure it like this:
```
Editing Chain # 1

A) Description  : LORD II - The New World
B) Filename     : c:\wwiv\lord2\LORD2.BAT %N
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) DOS Interrupt: NOT Used
G) Win32 FOSSIL : Yes
J) Local only   : No
K) Multi user   : Yes
L) Registered by: AVAILABLE
M) Usage        : 2
N) Age limit    : 0 - 255

(Q=Quit) Which (A-N,R,[,]) :
```

Done.
