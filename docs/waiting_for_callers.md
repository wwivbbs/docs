
# Local Console Operation
***

## Waiting For Call (WFC) screen

Historically WWIV was single or multi-node, where each
node would be at the WFC screen for that node until a modem
call is received.  With WWIV 5, the Telnet and SSH sessions
are terminated by wwivserver.exe on Windows or wwivd on Linux.

The graphical WFC screen was orginally added in v4.30, as an 
optional full screen WFC that provides information to the sysop
whenever the BBS is idle. The only reason to use the WFC screen
today is so that WWIV can automatically call out to WWIVnet
network connections as defined in callout.net.

The screen looks as follows:

```
┌──────────────────────────────────────┬───────────────────────────────────────┐
│ Date: 12/25/2016    Time: 12:52:52   │OS: Windows                            │
└──────────────────────────────────────┴───────────────────────────────────────┘
┌──────────────────────────────────────────────────────────────────────────────┐
│               Activity and Statistics of My WWIV BBS Node 1                  │
├──────────────────────────────────────┬───────────────────────────────────────┤
│ Calls Today....... 48                │ WWIV Version.... 5.2.0                │
│ Feedback Waiting.. 1       New: 1    │ Net Version..... 51                   │
│ Uploads Today..... 0                 │ Total Users..... 99                   │
│ Messages Today.... 98                │ Total Calls..... 20167                │
│ Local Msgs Today.. 12                │ Call/Day Ratio.. 52                   │
│ Email Today....... 9                 │ Chat Status..... Not Available        │
│ Feedback Today.... 4                 │                                       │
│ Mins Used Today... 720 Mins (50.0%)  │                                       │
├──────────────────────────────┬───────┴───────────────────────────────────────┤
│ Commands:                    │ Last User:                                    │
│                              │ Newsysop #1                                   │
│  SPACE) Local Log on         ├───────────────────────────────────────────────┤
│  Q) Quit BBS                 │ Instance Monitor - Node 1                     │
│  ?) Display Help             │ User.... Nobody                               │
│                              │ Status.. Waiting for Call                     │
└──────────────────────────────┴───────────────────────────────────────────────┘
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘
```
 Also included is a definable screen saver.  See WWIV.INI for enabling and disabling these features.

**Logging on**  
From the keyboard, local logons are initiated from the WFC using the SpaceBar.  You will see the "Logon?" prompt.  If this is your first logon, hit Y and follow the prompts to establish your account. If you have already established your account, hit F for a "fast" logon or Y to logon normally. SL255 users numbered 1 through 10 may use a fast logon by hitting the SpaceBar and their user number.
**Note:** This feature only works for SL255 users. Once this logon process is complete, the last few callers and user information screens will be presented and you will be located at the Main Message Base prompt.

**User Online keys**  
User online keys are used to perform certain actions on the system or the user while he or she is online.

**F1 - QuickEdit User Account**  
Pressing the F1 key while a user is online will produce a pop-up box containing the current users access levels, restrictions and other pertinent information. You can tab through the fields an edit this information as needed.  Pressing F1 again closes the pop up. A [WAIT] prompt is displayed to the user while editing and all caller input is ignored. This is the first User online key you will use.  After logging on and establishing your sysop account, hit this key and give yourself maximum values as displayed below:

```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ SECURITY LEVEL    : 255           MESSAGE AR  : ABCDEFGHIJKLMNOP   ³
³ D/L SECURITY LEVEL: 255           DOWNLOAD AR : ABCDEFGHIJKLMNOP   ³
³ EXEMPTIONS        : 31            RESTRICTIONS:                    ³
ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ SYSOP SUB : 999                   TIME BANK  : 0                   ³
³ ASS POINTS: 0                     GOLD POINTS: 0                   ³
ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ KB UPLOADED     : 0               KB DOWNLOADED   : 0              ³
³ FILES UPLOADED  : 0               FILES DOWNLOADED: 7              ³
³ MESSAGES POSTED : 0               NUMBER OF LOGONS: 1              ³
ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
³ NOTE: The SysOp!!                                                  ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```

Command | Description
:---: | ---
Shift+F1 | Toggle Global Session Capture.  Toggles the capture of all online activity to GFILES\GLOBAL.TXT. Press the key combination again to turn the capture off.
Ctrl+F1 | System Shutdown. Notifies all online users of a system-wide shutdown in three minutes.  At the end of the three minute period, all users are logged off.
F2 | Toggle Top Screen Information.  There are three toggles of the Top Screen with F2; System Status, Caller Status, and none. SL255 users locally logged on default to no Top Screen.  If you want to turn it on, hit the F2 key.
Shift+F2 | 
Ctrl+F2 | 
F3 | Disable COM.  Suspends all user input until the F3 key is pressed again.
Shift + F3 | 
Ctrl  + F3 | 
F4 | Turn off Chat Call.  Turns of the Sysop chat call sound.
Shift + F4 | 
Ctrl  + F4 | 
F5 | Hang up on User.  Hangs up on the user online with no warning.
Shift + F5 | Line Noise Hang up. Outputs random characters to the comport and hangs up on the user.
Ctrl  + F5 | Timeout Hang up. Sends the user a "Call back when you are there." message and hangs up on the user.
F6 | Unused
Shift + F6 |  Unused
Ctrl  + F6 |  Unused
F7 | Increase Time Online. Adds 5 minutes to users time.
Shift + F7 | 
Ctrl  + F7 | 
F8 | Decrease Time Online. Subtracts 5 minutes from users time.
Shift + F8 | 
Ctrl  + F8 | 
F9 | Temp Sysop. Grants Temporary Sysop status to the user online.  Use caution with this key.  The SL of the user online is changed to 255 giving the user full access to the BBS. System passwords are still required just as if you were online. You may type in the system passwords where required but they will not be echoed to the users screen. The 255SL is terminated when you press the F9 key again or when the user logs off.  You may want to use this key in concert with the F3 key to disable com input.
Shift + F9 | 
Ctrl  + F9 | 
F10 | Enter Chat Mode.  This key activates the selected chat mode.  You may select "split screen" chat by setting the 2WAY_CHAT INI option to Y. 
Shift + F10 | DOS Shell. Invokes a local DOS shell while user is online.  A [WAIT] prompt will be displayed to the user and all remote user input is suspended.
Ctrl  + F10 | Change Chat User.  Allows the sysop to change the name used in chat mode then invokes the chat session.
Alt-F Keys |  Hitting any Alt-F key combination while a user is online will apply the validation template assigned in wwivconfig to the users account. **CAUTION:** An Alt-F key combination while you are online will apply the template to your account.  No permanent damage will be done, but you will have to reset all access levels for yourself manually.
Home | While in chat mode, you can use the Home key to capture the entire chat session to GFILES\CHAT.TXT.

## Top Menu
```
BBSGenius #2                        W=  0 UL=   0/     0 SL= 20 LO=    3 PO=   0
BBSGenius            999-999-9999         DL=   0/     0 DL= 20 TO= 1082 ES=   1
ARs=             /                 R=                 EX=  0 08/17/15 FS=   0
               ######                 M 44 IBM AT (80286/80           FW=   0
-115200-------------------------------------------------------------------------
```

The local sysop's screen can show two screens of information, which may be toggled with the F2 key. The first screen is System Status. The second screen is User Status of the current user online.

**System Status Top Screen**  
The system status topscreeninformation shows the following data about the status of thesystem.  The first line contains the BBS name and today's date.The second line indicates the total number of users, total callsto date, calls today, and number of posts today. The third linedisplays the current user's name (alias) and number, time thesystem has been active today, percent of time today the systemhas been used, and amount of e|mail sent today. The latterstatistic as well as the number of posts today includes bothlocal and network information, if the board happens to beparticipating in the network. The fourth line shows the currentuser's security level, download security level, time left,feedback waiting for the sysop, files uploaded today, andfeedback sent today.

**User Status Top Screen**  
This top screen showsvarious information concerning the current user online.The first line contains the user's name (alias) and number, mailwaiting for user, uploaded files and kilobytes, security level,total logons, and posts.  The second line contains the user'sreal name, phone number, callsign, downloaded files andkilobytes, download security level, total time on, and e|mailsent.  The third line contains the user's AR and DAR,restrictions, exemption, logons today, and feedback sent. Thefourth line shows the user's note, sex, age, computer, timeleft, and feedback waiting for the sysop. A fifth line mayappear after a caller requests a chat.  This line would givethe reason the caller entered for wanting to chat. The borderline at the bottom of the topscreen information may also showthe following flags to alert the sysop of the current status ofthe user and system:

**Temp Sysop flag**  
This flag appears when the sysophas toggled temporary sysop status with F9.

**Capture flag**  
This flag appears when the sysophas toggled the global capture with Shift|F1.

**Comm Disabled flag**  
This flag appears when thesysop has pressed F3 to prevent the caller from typing.

**Available flag**  
This flag is displayed when thesysop has toggled the sysop available for chat optionwith scroll|lock key.

####Abbreviations used in the Topscreen Information.
 
Abv | Description
:---: | ---
W  | Mail waiting for caller
SL | Security Level
R  | User restrictions
DL | Download Security Level
AR | User AR/DAR 
PO | Total # of posts
LO | Total number of logons
ES | Total e|mails sent
TO | Total minutes on 
FW | Feedback waiting for sysop
FS | Total feedback sent   
EX | User exemptions
UL | Kilobytes uploaded
DL | Kilobytes downloaded

## Dedicated NODE for WWIVnet Connectivity
You can dedicate a node for connecting to [WWIVnet](network/wwivnet.md) 
(or [FTN Networks](network/ftn_nets.md)) so your BBS can connect and 
share files without taking the system down to users.
