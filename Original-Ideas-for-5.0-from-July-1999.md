#### Build Ideas
  * Standardize on GNU Make on Linux
  * Standardize on NMAKE from MSVC 6.0 on WIN32
  * Put defines in a seperate makefile (user.mk) from main code
  * Keep WWIV in a SCM (Source Control Management System) like 
    PVCS, SourceSafe, or QVCS
  * identify product as 5.0.{BUILD_NUMBER} internally
  * Weekly drops of source code from master repository (Frank?) to dev team.
  * Every month try to put together a quasi-release
  * More public betas during dev cycle
  * Web based bug database.
  * CHANGELOG entries for all changes from dev team.
  * Features to have Design and Functional Specifications before coding.
  * Use perl for common tasks that a seperate application would now do (BAK.EXE)
  * Keep maintaining the 4.31 line with small enhancements from the 5.0 line
    to keep users who don't want to move to WIN32 happy.
  * Keep website updated with progress (to keep interest from users)
  * C++ Classes (in places.. Not rewrite in C++, but gradual transition)


#### Door Ideas
  * Make door dropfile format file (i.e. CHAIN.FMT) that defines the format
    for a door file (so it's not hard coded into the source code, and new
    door formats can be added adhoc to product.
  * Use same handle passing mechanisms as EleBBS (On WIN32/OS2)
  * Remove chain support?  (It could come back later on, but as it is, is not
    portable to WIN32 or Linux)  We could recreate a newer chain format that
    is source code portable from Linux to WIN32, or even create a script
    language (like WWIVBASIC) to replace it (which would be completely 
    cross-platform portable!)

#### Message Areas
  * Possible use of JAM message base format. (Type3)
  * Built-in FTN support
  * Drop Type-1 message base support
  * Move msgbase clean up code (i.e. renumbering, deleting, etc.) to a utility
    so it doesn't overly-complicate the message base code (as it is now)
  * Update msg header format so that there are not as many kludges (like 
    Title[80] really means the network number, etc..)
  * Write a standard MessageBase API and make WWIV use it. (seperate out
    core MSGAPI from the BBS flow)
  * Internal Newsgroup support
  * PPP Project integrated with Network.
  * Built in support to forward SMTP messages.
  * Built in support to check a POP mailbox.

#### File Areas
  * Add new fields to file area (FTP directory) so that utilities can make
    HTML versions of the file areas for wev sites.
  * Internal ZModem
  * Long File Name support.
  * Write a standard FileBase API and make WWIV use it. (Seperate out filebase
    specific code, i.e. file listing, searching, etc. from the main bbs flow)

#### Platforms
  * Tiered platform Development
    * WIN32 - Primary
    * Linux - Primary
    * OS/2  - Secondary
  * Separate Generic from OS Dependent Code
  * MSVC 6.0 Standard Edition - Standard compiler on WIN32
  * GCC 2.91/2.95 (aka EGCS 1.1x) - Standard compiler on Linux
  * Dos version still? - Dos will be around until around at least until
    the end of 2001 from MS.  And FreeDos/OpenDOS/IBM DOS will be around 
    even longer.

#### Communications
  * WIN32 communications (maybe even TAPI?)
  * Sockets under WIN32.
  * Sockets under OS/2
  * Linux - Ideas?
  * POP support to check your e-mail?
  * Include simple HTTP server?
  * Finger Daemon support?

#### File Formats
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
  * Similar user experience as 4.30 from telnetting in.
  * Further extend Menus
    * Move all commands (i.e. Defaults, Automessage, BBSList, Chains) into Menus

#### Sysop Experience
  * Installation program.
  * Online help while a caller is online
  * INIT
    * GUI INIT on Windows, Curses based INIT on Linux. 
    * Java based INIT for both?

