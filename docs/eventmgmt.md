# Event Management
***

Originally new in version 4.30 are multiple system  events.

Events are setup by using the EVENTEDIT feature. This feature may be accessed in the following ways:

1. From WFC, enter H and then enter the system password when prompted for it.
2. From the main menu, enter //EVENTEDIT and then enter the system password when prompted for it.
3. From the main menu, enter //EE (short form for EVENTEDIT and the system password when prompted for it.
4. From the //SYSOP menu you can select Event Editor.

### Event Editor (EE).  

When executed for the first time, the event list will be empty.  From this menu, you have the option to Insert, Delete, or Execute and event.  The Execute command is made available for you to test your event to ensure it performs as you expect it to.  When choosing to test the event, you must make sure the event meet all the criteria for running at the time of the test.  For example, if the event is not set to run on Tuesday and you try to test it on Tuesday, it will not run. To create a new event, select Insert and the Event Editor will be displayed as follows:

```
A) Event Time......: 00:00
B) Event Command...: **New Event**
D) Already Run?....: No
E) Shrink?.........: No
F) Force User Off?.: No
G) Days to Execute.: SMTWTFS
H) Node (0=Any)....: 0
I) Periodic........: No                                  
```
**A) Event Time**  
Set the time for the event based on the 24 hour clock.

**B) Event Command**  
Set the command to execute.  You will
normally want to use a batch file to run events but can use any
executable file as a command.  You may also provide parameters
to include system based information on the command line.  A list
of command line parameters for system based information is
available by pressing the ? key.

**D) Already Run?**  
If the event has already run for the current
time period, this will be Yes.  You can change it to No to have
the event run again if desired.

**E) Shrink?**  
If your event requires a large amount of memory,
set this to Yes to have the BBS shrink out of memory prior to
event execution.

**F) Force User Off?**  
If you want to force all users off the
system prior to the event running, set accordingly.  Note that
ANY event that touches the user records, configuration or status
data files, should have this set to yes.

**G) Days to Execute**  
Select the days you want the event to execute here.

**H) Nod**  
Set the node number for the event to run on.  If there
is only one node operational, the event will run on that node.
If more than one node is operational, and no specific node is
specified, the event will run on the first available node.  Note
and any events that process network data must be run on node 1
in a multi-instance environment.

**I) Periodic**  
Run again after how many minutes?

You can use the [ and ] to navigate between events.

###System Events

There are four System Events you can use and are configured in WWIV.INI

1. Begin Day Event.  The begin day event will run at midnight
every day.  This is a great place for game maintenance routines
and other programs that need to run once every day such as
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
;BEGINDAY_CMD   =                           ; beginday even
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
