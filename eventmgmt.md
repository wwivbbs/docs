# Event Management
***

Also new in version 4.30 are multiple system  events.  The system events defined in INIT.EXE in previous versions have also been moved to the Event Editor.

Events are setup by using the EVENTEDIT feature. This feature may be accessed in the following ways:
1. From WFC, enter H and then enter the system password when prompted for it.
2. From the main menu, enter //EVENTEDIT and then enter the system password when prompted for it.
3. From the main menu, enter //EE (short form for EVENTEDIT and the system password when prompted for it.

### Event Editor (EE).  

When executed for the first time, the event list will be empty.  From this menu, you have the option to Insert, Delete, or Execute and event.  The Execute command is made available for you to test your event to ensure it performs as you expect it to.  When choosing to test the event, you must make sure the event meet all the criteria for running at the
time of the test.  For example, if the event is not set to run on Tuesday and you try to test it on Tuesday, it will not run. To create a new event, select Insert and the Event Editor will be displayed as follows:

```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   A. Event Time......: 00:00                     ³
³   B. Event Command...: **New Event**             ³
³   C. Phone Off Hook?.: No                        ³
³   D. Already Run?....: No                        ³
³   E. Shrink?.........: No                        ³
³   F. Force User Off?.: No                        ³
³   G. Days to Execute.: SMTWTFS                   ³
³   H. Node (0=Any)....: 0                         ³
³                                                  ³
³   Which? [A-H,[,],Q=Quit] :                      ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```
A) Event Time.  Set the time for the event based on the 24 hour
clock.

B) Event Command.  Set the command to execute.  You will
normally want to use a batch file to run events but can use any
executable file as a command.  You may also provide parameters
to include system based information on the command line.  A list
of command line parameters for system based information is
available by pressing the ? key.

C) Phone Off Hook?.  If you want the system to take the phone off
hook, during the event, set accordingly.

D) Already Run?.  If the event has already run for the current
time period, this will be Yes.  You can change it to No to have
the event run again if desired.

E) Shrink?.  If your event requires a large amount of memory,
set this to Yes to have the BBS shrink out of memory prior to
event execution.

F) Force User Off?.  If you want to force all users off the
system prior to the event running, set accordingly.  Note that
ANY event that touches the user records, configuration or status
data files, should have this set to yes.

G) Days to Execute.  Select the days you want the event to
execute here.

H) Node.  Set the node number for the event to run on.  If there
is only one node operational, the event will run on that node.
If more than one node is operational, and no specific node is
specified, the event will run on the first available node.  Note
and any events that process network data must be run on node 1
in a multi-instance environment.

You can use the [ and ] to navigate between events.

###System Events

Selecting System Events from the opening
screen of the Event Editor will open the System Events Editor.
```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   System Events Configuration                    ³
³                                                  ³
³   1. Terminal Program     :                      ³
³   2. Shrink for terminal? : No                   ³
³   3. Begin Day Event      :                      ³
³   4. Logon Event          :                      ³
³   5. Logoff Event         :                      ³
³   6. Newuser Event        :                      ³
³   7. Upload  Event        :                      ³
³   8. Virus Scanner CmdLine:                      ³
³   Q. Quit                                        ³
³                                                  ³
³   Which? <Q, 1-8, ? = Help>                      ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```

1. Terminal Program.  If you wish to be able to access your
terminal program by hitting T from the WFC Screen, configure to
commandline for the program here.

2. Shrink for Terminal.  If your terminal requires a large
amount of memory, toggle this to Yes to have the BBS shrink
prior to executing the command.

3. Begin Day Event.  The begin day event will run at midnight
every day.  This is a great place for game maintenance routines
and other programs that need to run once every day such as
AutoSend or NFT's cleanup routines.

4. Logon Event. This event runs each time a user logs on.

5. Logoff Event. This event runs each time a user logs off.

6. Newuser Event. This event runs each time a new user logs on.

7. Upload Event.  This event runs each time a user uploads a
file or a batch of files to the BBS.

8. Virus Scanner CmdLine.  this is the commandline for your
virus scanner.

Again, replaceable commandline parameters are available and the
list is accessed by hitting ? in the System Events Editor.