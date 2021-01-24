# WWIV Doors (aka Chains)
***

## ChainEdit
The ChainEdit function is also quite similar to the BoardEdit function.  The ChainEdit is a means of adding, deleting, or modifying on-line programs.  The information presented here should be sufficient to enable the sysop to setup many on-line programs.

When ChainEdit is run, a summary of the chains currently available, if any, is presented as a listing. Available options are:  Insert, Delete, Modify and Quit. When a new chain is inserted or an old entry is modified, the sysop is given a chance to change the following data:
```
A) Description  : ** NEW CHAIN **
B) Filename     : REM
C) SL           : 10
D) AR           : None.
E) ANSI         : Optional
F) Exec Mode:     Normal
I) Launch From  : BBS Root Directory
J) Local only   : No
K) Multi user   : No
L) Registered by: AVAILABLE
M) Usage        : 0
N) Age limit    : 0 - 255
```

**A) Description**  
The description of the chain, printed out for callers. For example, you might have something like "Food Fight" or "TradeWars."  Many sysops put the version number of the game after its title so that users will know whether or not a "new" version that they may have seen elsewhere is running on this BBS.  Many users will upload the "latest" version to the Sysop if that version is not currently running.

**B) Filename**  
The filename actually executed. The program to be used can have either an EXE, COM, or BAT extension. Programs with a BAS or CHN extension cannot be run from WWIV.

If the game requires a dropfile as a parameter, you usually use one of these common
replacement parameters:
```
    %1 - CHAIN.TXT
    %A - CALLINFO.BBS
    %C - CHAIN.TXT
    %D - DOORINFO1.DEF
    %O - PCBOARD.SYS
    %R - DOOR.SYS
```
These parameters are replaced with a full path and filename of the specified text file the bulletin board creates holding data about that caller, such as the caller's name, security level, time left, etc.  For most programs explicitly written for WWIV v4, the parameter should be placed after the filename. If you do not, you will see a "Parameter file not found" error message. If you see that message when running a chain, add the parameter as in "tw2002 %C".  If the program is not specifically made for WWIV, it may be necessary to run it from a batch file to setup other environment variables or settings.  See the game documentation for more information.

If you are running under linux and are having trouble with the parameters being passed to the chain, it may be useful to try calling it in a subshell.  For example, instead of the filename field being `./chains/mydoor/mydoor.exe %R`, try `bash -c "./chains/mydoor/mydoor.exe %R`.

In addition to these, the full list of replacable parameters is [Here](parameters.md)

**C) SL**  
The SL (security level) required in order to run the chain. Most sysops will set this at the level of validated users or higher.

**D) AR**  
The AR required in order to run the chain.  The sysop can allow only certain people to play the game by adjusting the AR.  This may be particularly useful if the game is limited to a certain number of players.  People can sign up to play the game and those chosen for the first round can be given the appropriate AR.  When the game ends, a different group of players can then be given the AR for another game.

**E) ANSI**  
If ANSI is required in order to run the chain. Because some games or on-line programs make extensive use of ANSI screens, those users who do not have ANSI may experience significant problems with the game.  This feature allows you to screen out the people who do not have ANSI capability.

**F) Exec Mode**  

Many programs run remotely will not have built in code for accessing the
modem. WWIV supports several modes for this:

* Normal - Execute the program as a native binary.  Socket handles may be passed to
  the door using the ```%H``` parameter.
* STDIO - **Linux Only** -   Execute the program as a native binary that use the
  stdin, stdout natively and WWIV pipes that input/output to the BBS caller.
* Emulate DOS FOSSIL - **Win32 only** Requires the sbbsexec.dll to be placed
  in the WINDOWS\syste32 directory and uses the that DLL to emulate a DOS
  FOSSIL driver.  Instead of this, you should enable [NetFoss](./nf.md) instead.
* Emulate DOS Interrupts - **Win32 only** Requires the sbbsexec.dll to be 
  placed in the WINDOWS\syste32 directory and uses the that DLL to emulate
  DOS IO redirection.  This is not likely to be used and will be removed
  from a future release.

**J) Local only**  
This toggle defines the chain to be run in local mode only or unrestricted.

**K) Multi user**  
This toggle allows users on different instances of the BBS to run the chain simultaneously.  The chain itself must support multiple users.  Check the documentation for the chain for proper configuration.

**L) Registered By**  
If CHAIN_REG = Y in WWIV.INI, you can allow users to sponsor chains for your BBS by paying the registration fees or some other method you may choose.  You can change the sponsor here.

**M) Usage**  
The is the number of time the chain has been run.

**N) Age Limit**  
This allows chiain access to be limited by age.


## Guidelines
If you are going to add a door and installation instructions, please include a link to 
the official source of the game of the game. If the company no longer exists, please 
direct everyone to a WWIVnet Node and Transfer Sub where it can be located.

## Windows 10: NTVDM support and Legacy Console

If you are using Windows 10, you must be sure to set the *NTVDM Command Prompt*
to use *legacy console*. 

To set this, open the console properties and ensure that the
``` options -> "Use legacy console"``` checkbox is selected.

## Compatible Doors
These doors are known to work on WWIV because one of the SysOps is running them. We'll provide linkes and installation instructions to get you going.

| Doors with Installation Steps |
|-------------------------------|
[Darkness](darkness.md)|
[DoorMUD](doormud.md)  |
[Legend of the Red Dragon](lord.md) |
[LORD II - The New World](lord2.md) |
[MechWars](mechwars.md) |
[Planets: The Exploration of Space (TEOS)](doorteos.md) |
[TradeWars 2002](tradewars2002.md) |
[Door Party](doorparty.md) |
[BBSLink](bbslink.md) |

| Doors Running on WWIV BBSes (no specific guides) |
| --------------------------- |
Ambroshia - Test of Time | 
Barron Realms Elite |
8Way Slots | 
Alpha Centauri VADV | 
zarneySplat | 
BBS Simulator | 
BuZZ | 
Chat | 
Clans](doorclan) | 
Cryptogram |
Falcon's Eye | 
Food Fight | 
Food Fite! (The Sequel!) | 
Freshwater Fishing Simulator | 
Global War | 
Guest Registry | 
Hackin' Crackin' | 
Hangman | 
LUNATIX | 
Moguls (Stock Market Sim) | 
New York 2008 | 
Oddliners | 
Operation Overkill | 
Outpost Trader | 
Over-Under (Card Solitaire) | 
Pentasim |
PimpWars | 
Russian Roulette | 
Scrabble (The Word Game) | 
Stack 'em (Tetris Online!) | 
SuperSlots! | 
TeleHang (Round Robin Word Guess) | 
The Realm | 
The Toilet | 
Wheel of Fortune (No Vanna!) | 
WWIVMail/QWK Mail Packets | 
Yankees & Rednecks | 


##Frequently Asked Questions concerning Chains:
The designation of chains originated in Turbo Pascal
versions of WWIV when the BBS literally "chained" to the
program.  Although WWIV no longer operates in that
fashion and is no longer written in Pascal, the CHAINEDIT
terminology has remained.

Not all files can be run as external programs from
WWIV. Only those files that do all I/O through DOS calls
can be run. This means that Wordstar, WordPerfect, the
Norton Utilities, and most other graphics programs can
NOT be run from WWIV.

Games can be characterized as WWIV games if one of two
conditions occur.  First, if the game is written to
specifically make use of the drop file known as
CHAIN.TXT. By drop file, is meant a file that is created
by the BBS software either at the time of logon or when a
door (chain) is entered.  This file typically contains
information about the user and/or the system.  A
commented CHAIN.TXT, written by MrBill is included later
in this document.  Some games are written to make
specific use of the information contained in the
CHAIN.TXT file.  These games, although perhaps not
specifically written for WWIV alone, are discussed in the
category of WWIV games because they have been written to
work with WWIV.

The second condition that causes a game to be known as
a WWIV game is that it makes use of the special dos color
codes contained in the WWIV software.  These games are
characterize by use of the DOS color commands
(pseudo-ansi) found in WWIV.  These colors are discussed
in the DEFAULT section of the software and are
configurable by the user. WWIV will interpret a "heart"
symbol as a color command when it is followed by a
number.  Because WWIV is one of the few BBS programs that
can use these color commands, games containing them are
almost always written for the exclusive use of WWIV
boards.  These games are also most often characterized as
games where the CHAINEDIT option of USE DOS INTERRUPTS
should be left at the default setting of Y.

Games that may be considered as being written for
other software are those which do not use CHAIN.TXT and
which instead use one of the drop files of another bbs
software.  These usually include games which use
DORINFO1.DEF (RBBS, QBBS, REMOTE ACCESS), games which use
PcBOARD.SYS (PcBoard versions 12 and 14), games which use
DOOR.SYS (Wildcat 3.0, GAP, and PcBoard 14.5+), and games
which use CALLINFO.BBS (pre-version 3.0 of Wildcat).
These games can often be made to work with WWIV provided
that a 'converter' is also used.  The use of converters
and so forth will be discussed later.

1.  Setting up WWIV games.  Most WWIV games have relatively good documentation and therefore setting them up and getting them to work is usually very straight forward.  However, if there is no documentation and/or the documentation seems insufficient, then there are a number of things that you can experiment with by trial and error to see if you can get the game to run.
2 Placement of Game Files.  If the game does not tell you where to place the files, you can try each of the following setups to see if one of them causes the game to work:

* In its own directory.  i.e. C:\WWIV\MWAR
* In a directory called CHAINS (especially for older games) i.e. C:\WWIV\CHAINS
* In a directory off of CHAINS (also popular place for older  WWIV games) i.e.  C:\WWIV\CHAINS\MWAR
* In the main BBS directory. i.e. C:\WWIV

3. Relationship to CHAIN.TXT. If you get a 'parameter file notfound' or other type of error message from the game, then it may be that it is not finding CHAIN.TXT correctly.  You may try incorporating a batch file and copying the CHAIN.TXT to the directory where the game is located. Use  DOS commands as follows:
```batch
     copy con MWAR.BAT
     @echo off
     copy chain.txt c:\wwiv\chains\mwar
     cd chains\mwar
     mwar
     cd\wwiv
```
then press CTRL Z or F6 (function key 6) to save the batch file.

4. DOS Interrupts. Some games written especially for WWIV will let the BBS handle the DOS INTERRUPTS.  This is especially true of many games written in PASCAL for use with WWIV.  A sign that sometimes the DOS interrupt option is set incorrectly is when the game echos double characters.  If the game is viewable from local mode but not from the remote mode, then you may want to experiment with setting the DOS INTERRUPTS option differently.
5. SHRINK Option. Many games do not necessitate the BBS to shrink out in order to run them; however, if you experience a "lock up" or freezing of the computer when you try to run the game, this may be an indication that there is insufficient memory available and that you should shrink the BBS. It may be helpful to set the BBS to shrink out if the game is large (ie the file size is big).
6. Setting up Non-WWIV Games. Because these games are not specifically made for WWIV, the first step is to determine what software they support.  WWIV creates all major drop files required for most online games.  Below is a list of BBS packages and the drop file they use.
```
           GAP             -> Door.Sys
           Genesis Deluxe  -> CallInfo.BBS
           GT PowerComm    -> GTUser.BBS
           Osiris#         -> ExtInfo#.QBS
           PCBoard v12xx   -> PCBoard.Sys
                              PCBoard.Dat
                                Users
           PCBoard v14xx   -> PCBoard.Sys
                              PCBoard.Dat
                                Users
           QuickBBS        -> DorInfo1.Def
           RBBS#           -> DorInfo#.Def
           WildCat         -> CallInfo.BBS
           Remote Access   -> Dorinfo1.Def
           SpitFire
           WWIV            -> Chain.Txt
```
7. Fossil Drivers. WWIV now requires a fossil driver in order to run. Some games expect a fossil to be present even though that is not mentioned in the documentation of the game.  This is particularly true for games written for QBBS, RBBS, and OPUS.  Games which DO NOT require a fossil driver should work fine even though the driver is loaded. The better known fossil drivers are X00 and BNU.  Many WWIV system operators report excellent results from X00.
8. Batchfiles in the Multi-Instance Environment. The batchfile below shows an example of having a game in a different directory for each "instance".  It uses Trade Wars as an example.  Whether or not the setup shown below is necessary depends upon the chain and how it is written. The example is theoretical.  Current versions of TradeWars have not been checked to determine whether or not it requires such a setup. Lines beginning with REM are "remark" lines and are meant to help you understand what is transpiring in the batch file.
```batch
         @Echo Off

         REM --> Check to see if instance 3
         if %WWIV_INSTANCE%==3 goto Inst3

         REM --> Check to see if instance 2
         if %WWIV_INSTANCE%==2 goto Inst2

         REM --> Example only has three instances; got here, must be
         REM --> instance 1
         goto Inst1

         REM --> Subroutine for Instance 1
         :Inst1
         Copy C:\WWIV\CHAIN.TXT C:\WWIV\DOORS\TW\1
         C:
         Cd\WWIV\DOORS\TW\1
         TW2002
         Goto Done

         REM --> Subroutine for Instance 2
         :Inst2
         Copy C:\WWIV\CHAIN.002 C:\WWIV\DOORS\TW\2\CHAIN.TXT
         C:
         Cd\WWIV\DOORS\TW\2
         TW2002
         Goto Done

         REM --> Subroutine for Instance 3
         :Inst3
         Copy C:\WWIV\CHAIN.003 C:\WWIV\DOORS\TW\3\CHAIN.TXT
         C:
         Cd\WWIV\DOORS\TW\3
         TW2002
         Goto Done

         REM --> Cleanup area, exits batch file in proper dir, or
         REM --> whatever necessary.
         :Done
         C:
         Cd\WWIV
```
7. Other Comments regarding CHAINS. Some of the games written for WWIV in Pascal are presented in uncompiled form by the authors.  This is often done so that the pascal code may be altered or customized for your board.  Usually these authors have made use of something called a COMMON.PAS file which interfaces the game with WWIV.  If a particular game has not been compiled, you must first compile it with the appropriate version of the Turbo Pascal compiler using the appropriate version of COMMON.PAS.  Most of the versions of COMMON.PAS are available
for downloading on the WWIV Support Boards.
8. BRUNxx. Some games written in QuickBASIC have been compiled to utilize an intermediate program called BRUN (Basic RUN time module). Such games require the BRUN module specific to the compiler. Current versions of BRUN are BRUN20, BRUN30, BRUN40, and BRUN45.  Again, these programs are available on most WWIV Support Boards.  The BRUNxx file may be placed in your path and used by all programs that require it.  One advantage of the Basic RUN time compilers is that the resulting EXE's require significantly less space (approximately 35k less per program).
9. Commented Chain.txt.  CHAIN.TXT Definition File by MrBill. **Note:** Some of the original information about Mr. Bill and MrBill's Abode has been shortened to accomodate the format of these docs.
```
 -----------CHAIN.TXT-----------------------------------
 1                  User number
 MRBILL             User alias
 Bill               User real name
                    User callsign (HAM radio)
 21                 User age
 M                  User sex
   16097.00         User gold
 05/19/89           User last logon date
 80                 User colums
 25                 User width
 255                User security level (0-255)
 1                  1 if Co-SysOp, 0 if not
 1                  1 if SysOp, 0 if not
 1                  1 if ANSI, 0 if not
 0                  1 if at remote, 0 if local console
    2225.78         User number of seconds left till logoff
 F:\WWIV\GFILES\    System GFILES directory (gen. txt files)
 F:\WWIV\DATA\      System DATA directory
 890519.LOG         System log of the day
 2400               User baud rate
 2                  System com port
 MrBill's Abode     System name
 MrBill             System SysOp
 83680              Time user logged on/# of secs. from midn
 554                User number of seconds on system so far
 5050               User number of uploaded k
 22                 User number of uploads
 42                 User amount of downloaded k
 1                  User number of downloads
 8N1                User parity
 2400               Com port baud rate
 7400               WWIVnet node number
```
## Links to Lists of Doors
We don't know if all the Doors on these lists work with WWIV or not. But let's try 'em!

[The BBS Corner](http://www.bbscorner.com/doorgames/doorgamesites.htm)  


## MultiNode Impact on Doors
When you run multiple instances, your Doors need to be setup to run an instance for each node 
that you use to grant access to users. You don't need to configure your games for Nodes that 
you use for WWIVnet connectivity or other connectivity related tasks.
