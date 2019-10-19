# Event Management
***

Since WWIV 5.5 the multiple event support from 4.30 has been removed.  Please
use cron or other eventing support from the host operating system.  The 4 system
events (including beginday) are suppored and wwivd will execute the beginday
event command specified in wwivconfig.

###System Events

There are four System Events you can use and are configured in WWIV.INI

1. Begin Day Event.  The begin day event will run at the first chance
after midnight every day.  That may be from wwivd calling ```bbs -e```
to execute the beginday event, or it may be when the first user after
midnight logs into the BBS. This is a great place for game maintenance
routines and other programs that need to run once every day such as
AutoSend or NFT's cleanup routines.
2. Logon Event. This event runs each time a user logs on.
3. Newuser Event. This event runs each time a new user logs on.
4. Upload Event.  This event runs each time a user uploads a
file or a batch of files to the BBS.

```INI
;=============================================================================
;                          EXTERNAL PROGRAM OPTIONS
;=============================================================================
;
;UPLOAD_CMD     =                           ; upload event
;BEGINDAY_CMD   =                           ; beginday event
;NEWUSER_CMD    =                           ; newuser event
;LOGON_CMD      =                           ; logon event
;
;
```

For example, to configure c:\wwiv\logon.bat to run after the logon event occurs you would edit the line as follows:
```INI
LOGON_CMD      = c:\wwiv\logon.bat           ; logon event
```
**NOTE:** As well as inserting the file to run, you also need to remove the leading ";" which un-comments the line.
