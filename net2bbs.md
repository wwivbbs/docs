# Net2BBS Telnet Server by PCMicro
***

From: Matt Munson 
To: All 
Date: 2011-05-22 17:54:02 
Subject: How to use Net2bbs with WWIV 5 
How to use WWIV 5 with Net2BBS
By Matt Munson

WWIV's Internal Telent Server may not be that perfect, but Net2BBS by 
Mike Ehlert fits my need well.

What do you need:

* Install NetFossil, its nice to use for various bbs doorgames, utilities and
even bbs softwares.
* http://pcmicro.com/netfoss/download.html

It includes the telnet server you can use which is the subject of discussion Net2BBS.

Here are my settings:

**NET2BBS.INI**
```INI
Command=c:\path\file_to_execute_when_spawning_node.bat and any parameters
Macros: N={Node Number} H={Socket Handle} I={Users IP Address}
StartPath=c:\optional_path_to_start_command_from\ Macro: *N={Node Number}
Port=23 - TCP Port to accept incoming connections on, usually 23.
Nodes=256 - The maximum number of nodes to allow on at one time.
StartNode=1 - Start telnet nodes at this value.
Debug=1 to enable, or =0 to disable Debugging messages in log.
View=Normal,Hide,Minimize,Maximize - Type of window to create for nodes. 
Log=c:\path\filename_to_log_activity.txt
KillList=c:\path\list_of_blocked_ips_and_hosts.txt - 1 per line,
"*" & "?"
KillMsg=Text to show user if their IP or hostname matches the KillList 
KillMsgFile=c:\path\filename_to_show_instead_of_KillMsg.txt
Editor=notepad.exe - Name of Text Editor used for Editing KillList.
Semaphore=c:\path\filename_to_check_if_exists.txt - To prevent connections
Resolve=1 to enable, or =0 to disable IP to hostname resolving.
ResolveMsg=Text to show user while resolving their IP address.
[Settings]
Command=c:\WWIV\nf.bat /nN /hH c:\WWIV\WWIV50 -XT -HH -NN
Start=C:\WWIV
Port=23
Nodes=4
StartNode=1
Debug=1
View=Hide
Log=telnet.log
KillList=kill.txt
KillMsg=You are not welcome here.
KillMsgFile=goaway.ans
Semaphore=wait.sem
Editor=notepad.exe
Resolve=1
REM ResolveMsg=Resolving your IP, One moment...
ResolveMsg=|[2J[0;1mRe[32mso[0;32mlving your [1mIP[0;32m, One
mo[1mme[37mnt[32m..[0;32m.
```

And here is my nf.bat
```batch
{at}echo off
c:\WWIV\netfoss.com %1 
rem If running a non-door32.sys system, add a " %1" to end of
above line 
if errorlevel 1 goto end
c:\WWIV\netcom.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
c:\WWIV\netfoss.com /u
:end
```

## Additional Net2BBS information
[PC Micro Net2BBS User's Guide](http://pcmicro.com/netfoss/guide/NET2BBS.HTML)  
