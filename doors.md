# WWIV Chains \ Doors
***

##ChainEdit##
The ChainEdit function is also quite similar to the BoardEdit function.  The ChainEdit is a means of adding, deleting, or modifying on-line programs.  The information presented here should be sufficient to enable the sysop to setup many on-line programs.

When ChainEdit is run, a summary of the chains currently available, if any, is presented as a listing. Available options are:  Insert, Delete, Modify and Quit. When a new chain is inserted or an old entry is modified, the sysop is given a chance to change the following data:
```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   A. Description  : ** NEW CHAIN **              ³
³   B. Filename     : REM                          ³
³   C. SL           : 10                           ³
³   D. AR           : None.                        ³
³   E. ANSI         : Optional                     ³
³   F. DOS Interrupt: Used                         ³
³   G. 300 Baud     : Allowed                      ³
³   H. Shrink       : No                           ³
³   I. Disable pause: No                           ³
³   J. Local only   : No                           ³
³   K. Multi user   : No                           ³
³   L. Registered by: AVAILABLE                    ³
³   M. Usage        : 0                            ³
³   N. Age limit    : 0 - 255                      ³
³                                                  ³
³   Which (A-N,[,],Q)?                             ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```

**A) Description**  
The description of the chain, printed out for callers. For example, you might have something like "Food Fight" or "TradeWars."  Many sysops put the version number of the game after its title so that users will know whether or not a "new" version that they may have seen elsewhere is running on this BBS.  Many users will upload the "latest" version to the Sysop if that version is not currently running.

**B) Filename**  
The filename actually executed. The program to be used can have either an EXE, COM, or BAT extension. Programs with a BAS or CHN extension cannot be run from WWIV.

If the game requires a dropfile as a parameter, you can use one of the following replacement parameters:
```
    %1 - CHAIN.TXT
    %A - CALLINFO.BBS
    %C - CHAIN.TXT
    %D - DOORINFO1.DEF
    %O - PCBOARD.SYS
    %R - DOOR.SYS
```
These parameters are replaced with a full path and filename of the specified text file the bulletin board creates holding data about that caller, such as the caller's name, security level, time left, etc.  For most programs explicitly written for WWIV v4, the parameter should be placed after the filename. If you do not, you will see a "Parameter file not found" error message. If you see that message when running a chain, add the parameter as in "tw2002 %C".  If the program is not specifically made for WWIV, it may be necessary to run it from a batch file to setup other environment variables or settings.  See the game documentation for more information.

**C) SL**  
The SL (security level) required in order to run the chain. Most sysops will set this at the level of validated users or higher.

**D) AR**  
The AR required in order to run the chain.  The sysop can allow only certain people to play the game by adjusting the AR.  This may be particularly useful if the game is limited to a certain number of players.  People can sign up to play the game and those chosen for the first round can be given the appropriate AR.  When the game ends, a different group of players can then be given the AR for another game.

**E) ANSI**  
If ANSI is required in order to run the chain. Because some games or on-line programs make extensive use of ANSI screens, those users who do not have ANSI may experience significant problems with the game.  This feature allows you to screen out the people who do not have ANSI capability.

**F) DOS Interrupt**  
Many programs run remotely will not have built in code for accessing the modem.  For these programs, the BBS should be set to intercept the DOS calls, and "re-direct" the output to go to the modem, as well as the screen. It is possible, however, that you will have a program that will do its own modem access, in which case it should be set so that the BBS won't intercept DOS calls.  In most cases, you WILL want the BBS to intercept DOS calls. 

If the game does not seem to operate properly, you may need to experiment with this setting.  As a general rule, you should try having the BBS intercept DOS calls for those games designed specifically for WWIV and try having the BBS not intercept DOS calls for those games designed to be run on other systems.  These settings may still need to be changed, but the general rule is sound advice for what to try as the initial setting for this variable.

**G) Win32 FOSSIL**  
TODO: Need a good description from RushFan :-)

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
direct everyone to a WWIVNet Node and Transfer Sub where it can be located.

## Compatible Doors
These doors are known to work on WWIV 5.0 because one of the SysOps is running them. We'll provide linkes and installation instructions to get you going.

Doors Running on WWIV BBSes | Doors with Installation Steps
--------------------------- | -----------------------------
[Ambroshia - Test of Time](dooramb) | [Darkness](doordarkness)
[Barron Realms Elite](doorbre) | [DoorMUD](doordoormud) 
[8Way Slots]() | [Legend of the Red Dragon](doorlord)
[Alpha Centauri VADV]() | [LORD II - The New World](doorlord2)
[BarneySplat]() | [MechWars](doormw)
[BBS Simulator]() | [Planets: The Exploration of Space (TEOS)](doorteos)
[BuZZ]() | [TradeWars 2002](doortw2002) 
[Chat]() | 
[Clans](doorclan) | 
[Falcon's Eye]() | 
[Food Fight]() | 
[Food Fite! (The Sequel!)]() | 
[Freshwater Fishing Simulator]() | 
[Global War]() | 
[Guest Registry]() | 
[Hackin' Crackin']() | 
[Hangman]() | 
[LUNATIX]() | 
[Moguls (Stock Market Sim)]() | 
[New York 2008]() | 
[Oddliners]() | 
[Operation Overkill]() | 
[Outpost Trader]() | 
[Over-Under (Card Solitaire)]() | 
[PimpWars]() | 
[Russian Roulette]() | 
[Scrabble (The Word Game)]() | 
[Stack 'em (Tetris Online!)]() | 
[SuperSlots!]() | 
[TeleHang (Round Robin Word Guess)]() | 
[The Realm]() | 
[The Toilet]() | 
[Wheel of Fortune (No Vanna!)]() | 
[WWIVMail/QWK Mail Packets]() | 
[Yankees & Rednecks]() | 

## Links to Lists of Doors
We don't know if all the Doors on these lists work with WWIV 5.0 or not. But let's try 'em!

[The BBS Corner](http://www.bbscorner.com/doorgames/doorgamesites.htm)  