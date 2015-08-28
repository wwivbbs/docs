# Net2BBS Telnet Server by PCMicro
***

## Known Issues

Issue | Comments
--- | ---
You must also run SyncFoss and DOSXtrn | There are internal functions of WWIV 5.0 that rely on DOSXTRN
Issues with Doors | There are some issues with launching doors while using NetFoss that do not happen with SynFoss

## Additional Net2BBS information
NetFoss is a Fossil Driver and other utilities including Net2BBS which 
provides a Telnet server for 32bit BBSes

Net2BBS is open source. NetFOSS is not.

[NetFoss : A Freeware Telnet FOSSIL driver for Windows](http://pcmicro.com/NetFoss/)  
[PC Micro Net2BBS User's Guide](http://pcmicro.com/netfoss/guide/NET2BBS.HTML)  

## Installation Notes
Follow the [Net2Foss and Net2BBS installation](http://pcmicro.com/netfoss/guide/) directions and their excellent documentation.

Copy the files to c:\netfoss
```
[.]                  [..]                 NET2BBS.EXE
NET2BBS.INI          NET2BBS.SAMPLE.INI   NET2MON.EXE
NETCOM.EXE           NETFOSS.COM          NETFOSS.DLL
NETSPY.EXE           NF.BAT               
```

As per the instructions, on Win Vista and up, copy NETFOSS.DLL to \WINDOWS\SYSTEM32.

Use this to create NET2BBS.INI (this works on Windows 7 x86 (32-bit))

**NET2BBS.INI**
```INI
| Net2BBS.INI Configuration Settings quick help:
|-----------------------------------------------------------------------------
| Command=    Path to filename + parameters to execute when spawning a node. 
|             Macros: *N={Node Number} *H={Socket Handle} *I={Users IP Address}
|
| StartPath=  Optional path to start the Command line from (*N Macro supported)
| Port=       TCP Port number to accept incoming connections on, usually 23.
| PolicyPort= Optional PolicyPort for using a Flash Telnet Client. Must be 843.
| Nodes=      The maximum number of nodes to allow on at one time (256 max).
| StartNode=  Number of first Node. Default=1.
| MaxSameIP=  Maximum number of connections allowed from the same IP address.
| Debug=      Display debug messages in log. 1 to enable, or 0 to disable. 
| NodeView=   Client  Window View: 0-Hide, 1-Normal, 2-Minimize, 3-Maximize   
| MainView=   Net2BBS Window View: 0-Hide, 1-Normal, 2-Minimize, 3-Maximize
| NodeLines=  The number of lines the node Console window is set for (25 or 50). 
| Log=        Filename to log activity. Path is optional.
| KillList=   Filename of list of banned IPs and hostnames - Supports "*" & "?"
| KillMsg=    Text to show user if their IP or hostname matches the KillList.     
| KillMsgFile= Text file to show user instead of KillMsg if found.
| Editor=     Name of text editor (default=notepad.exe). 
| Semaphore=  Filename to check at connect - if exits, display it & refuse access. 
| CacheTime=  Sets a timeout in minutes to remove cached IP's (0=Never).
| Resolve=    IP to hostname resolving. 1 to enable, or 0 to disable.
| ResolveMsg= Text to show user while resolving their IP address.
| ShowHost=   Show the user their resolved hostname, 1 to enable 0 to disable.
|             Values above 1 also show, and then wait that number of milliseconds.
| DNSBL=      A DNS BlackList domain name to use. If this option is defined,
|             any incoming connection listed in the BlackList is disconnected.
| BlockCC=    ISO-3166 Country Codes to block when using zz.countries.nerd.dk
|             See http://en.wikipedia.org/wiki/ISO_3166-1_numeric
|-----------------------------------------------------------------------------
| ******* Edit only lines after the [Settings] line below *******
|
| Save your changes, then restart Net2BBS for the changes to take effect.

[Settings]
Command=c:\netfoss\nf.bat /n*N /h*H c:\WWIV\bbs.exe -XT -h*H -n*N
StartPath=c:\WWIV\
Port=23
Nodes=4
StartNode=1
Debug=1
View=Hide
Log=telnet.log
KillList=kill.txt
KillMsg=You are not welcome here.
KillMsgFile=goaway.ans
Editor=notepad.exe
Semaphore=wait.sem
Editor=notepad.exe
Resolve=1
;ResolveMsg=o Net2BBS - Resolving your IP Address...
ResolveMsg=|[2J[0;32mo [1mNet2BBS [0;32m- [1;37mRe[32mso[0;32mlving your IP Add[1mre[37mss[0;32m...[1;37m
; This stuff was not in Matt Munson's file
NodeView=1
MainView=1
NodeLines=25
ShowHost=1
DNSBL=zz.countries.nerd.dk
BlockCC=156,643,392,804    ; 156=China 643=Russia 392=Japan 804=Ukraine 
DNSBL2=xbl.spamhaus.org
;DNSBL3=dnsbl.proxybl.org
;DNSBL4=bl.blocklist.de
;PolicyPort=843
MaxSameIP=3
```

Edit the c:\NETFOSS\NF.BAT. The only change needed is to add the %1 to the end of line 2.
```batch
@echo off
c:\netfoss\netfoss.com %1
rem ** If running a non-door32.sys system, add a " %1" to end of above line **
if errorlevel 1 goto end
c:\netfoss\netcom.exe %1 %2 %3 %4 %5 %6 %7 %8 %9
c:\netfoss\netfoss.com /u
:end
```
