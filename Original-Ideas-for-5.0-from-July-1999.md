#### Build Ideas
  * ~~Standardize on GNU Make on Linux~~
  * ~~Standardize on NMAKE from MSVC 6.0 on WIN32~~
  * ~~Put defines in a seperate makefile (user.mk) from main code~~
  * [X] Keep WWIV in a SCM (Source Control Management System) like 
    PVCS, SourceSafe, or QVCS
  * identify product as 5.0.{BUILD_NUMBER} internally
  * ~~Weekly drops of source code from master repository (Frank?) to dev team.~~
  * Every month try to put together a quasi-release
  * ~~More public betas during dev cycle~~
  * [X] Web based bug database.
  * [X] CHANGELOG entries for all changes from dev team.
  * Features to have Design and Functional Specifications before coding.
  * ~~Use perl for common tasks that a seperate application would now do (BAK.EXE)~~
  * [X] Keep maintaining the 4.31 line with small enhancements from the 5.0 line
    to keep users who don't want to move to WIN32 happy.
  * [X] Keep website updated with progress (to keep interest from users)
  * [X] C++ Classes (in places.. Not rewrite in C++, but gradual transition)


#### Door Ideas
  * [Issue 391](https://github.com/wwivbbs/wwiv/issues/391) Make door dropfile format file (i.e. CHAIN.FMT) 
that defines the format for a door file (so it's not hard coded into the source code, and new door formats 
can be added adhoc to product. 
  * [X] Use same handle passing mechanisms as EleBBS (On WIN32/OS2)
  * [X] Remove chain support?  (It could come back later on, but as it is, is not
    portable to WIN32 or Linux)  We could recreate a newer chain format that
    is source code portable from Linux to WIN32, or even create a script
    language (like WWIVBASIC) to replace it (which would be completely 
    cross-platform portable!)

#### Message Areas
  * [Issue 392](https://github.com/wwivbbs/wwiv/issues/392) Possible use of JAM message base format. (Type3)
  * [Issue 393](https://github.com/wwivbbs/wwiv/issues/393) Built-in FTN support
  * [X] Drop Type-1 message base support
  * [Issue 394](https://github.com/wwivbbs/wwiv/issues/394) Move msgbase clean up code (i.e. renumbering, 
deleting, etc.) to a utility so it doesn't overly-complicate the message base code (as it is now)
  * [Issue 395](https://github.com/wwivbbs/wwiv/issues/395) Update msg header format so that there are not as many kludges (like Title[80] really means the network number, etc..)
  * [Issue 396](https://github.com/wwivbbs/wwiv/issues/396) Write a standard MessageBase API and make WWIV use it. (seperate out core MSGAPI from the BBS flow)
  * [Issue 397](https://github.com/wwivbbs/wwiv/issues/397) Internal Newsgroup support
  * [Issue 400](https://github.com/wwivbbs/wwiv/issues/400) PPP Project integrated with Network.
  * [Issue 398](https://github.com/wwivbbs/wwiv/issues/398) Built in support to forward SMTP messages.
  * [Issue 399](https://github.com/wwivbbs/wwiv/issues/399) Built in support to check a POP mailbox.

#### File Areas
  * [Issue 401](https://github.com/wwivbbs/wwiv/issues/401) Add new fields to file area (FTP directory) so that utilities can make HTML versions of the file areas for wev sites.
  * [X] Internal ZModem
  * [Issue 402](https://github.com/wwivbbs/wwiv/issues/402) Long File Name support.
  * [Issue 403](https://github.com/wwivbbs/wwiv/issues/403) Write a standard FileBase API and make WWIV use it. (Seperate out filebase specific code, i.e. file listing, searching, etc. from the main bbs flow)

#### Platforms
  * [X] Tiered platform Development
    * [X] WIN32 - Primary
    * [X] Linux - Primary
    * ~~OS/2  - Secondary~~
  * [X] Separate Generic from OS Dependent Code
  * ~~MSVC 6.0 Standard Edition - Standard compiler on WIN32~~
  * ~~GCC 2.91/2.95 (aka EGCS 1.1x) - Standard compiler on Linux~~
  * ~~Dos version still? - Dos will be around until around at least until
    the end of 2001 from MS.  And FreeDos/OpenDOS/IBM DOS will be around 
    even longer.~~

#### Communications
  * ~~WIN32 communications (maybe even TAPI?)~~
  * [X] Sockets under WIN32.
  * ~~Sockets under OS/2~~
  * [X] Linux - Ideas?
  * [Issue 399](https://github.com/wwivbbs/wwiv/issues/399) POP support to check your e-mail?
  * ~~Include simple HTTP server?~~
  * [Issue 404](https://github.com/wwivbbs/wwiv/issues/404) Finger Daemon support?

#### [Issue 406](https://github.com/wwivbbs/wwiv/issues/406) File Formats
  * XML?
  * Text files?
  * Try to limit the number of binary files (less portable)

#### Tools/Utilities
  * 1 big WWIVUTIL.EXE that contains
    * Msgbase purger/maintenance utility
    * Userlist purger/maintenance utility
    * File area listing utility
    * reporting tool.
  * Public SDK/Libraries for writing utilities (i.e. Web Tools)
  
#### User Experience (caller)
  * [X] Similar user experience as 4.30 from telnetting in.
  * [Issue 405](https://github.com/wwivbbs/wwiv/issues/405) Further extend Menus
    * Move all commands (i.e. Defaults, Automessage, BBSList, Chains) into Menus

#### Sysop Experience
  * Installation program.
  * Online help while a caller is online
  * ~~INIT
    * ~~GUI INIT on Windows,~~ Curses based INIT on Linux. 
    * ~~Java based INIT for both?~~