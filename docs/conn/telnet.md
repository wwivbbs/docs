# WWIVd - The WWIV Telnet Server
***



## Configuration

wwivd is configured using wwivconfig, along with most other parts of WWIV
BBS.  There is a menu item ```(W) wwivd Configuration```.

This is where you set your file paths, nodes, and all your Telnet Server Settings. For most part, once you set this up you will be done with this screen.

For initial setups, just correct the port numbers if needed, otherwise it
is expected to work out of the box for a default install once you run
the wwivd binary.

## wwivd Configuration page

```
┌──────────────────────────────────────────────────── wwivd Configuration ┐
│       Telnet Port: 23                                                   │
│          SSH Port: -1                                                   │
│         HTTP Port: 8080                                                 │
│      HTTP Address: 127.0.0.1                                            │
│        BinkP Port: 24554                                                │
│   Net receive cmd: .\networkb --receive --handle=@H                     │
│      Run BeginDay: No                                                   │
│      BeginDay Cmd: bbs -e                                               │
│      Net Callouts: Yes                                                  │
│   Net Callout Cmd: \wwiv\networkb --send --net=@T --node=@N             │
│   Matrix Filename:                                                      │
│   Matrix Settings: [Press Enter to Edit]                                │
│          Blocking: [Press Enter to Edit]                                │
└─────────────────────────────────────────────────────────────────────────┘
```

##### Telnet Port      

This is the port number to listen on for telnet. By default WWIV binds to all addresses.  By default wwivd uses port 23 (standard telnet port) on Windows
and port 2323 on other platforms since non-root users can not bind to port
numbers lower than 1024 by default.

##### SSH Port 

This is the port number to listen on for SSH. By default WWIV binds to all addresses. wwivd uses the standard ssh port (22).

##### HTTP Address

This is the port number to listen on for the HTTP status listener.  This listener is used to handle ```/status``` requests for healthchecking.  This is port 8080
by default.  Also note that this is only for serving status and health check
information and may be used to tie into monitoring or service level alerting.

##### BinkP Port

This is the port number to listen on for BinkP connections. By default WWIV binds to all addresses. wwivd uses the standard binkp port number of 24554.  If you have
another service (like binkd) listening on this port, you should specify a
different port number for wwivd.


##### Net receive cmd

The command to execute to handle a binkp request.

The commandline supports the following parameters of the form "@<Character>":

Param | Description
:----:| ------------------
  H   | Socket handle to the socket that has accepted the connection
<br/>

##### Run BeginDay

Should wwivd execute the BeginDay Cmd each day?

##### BeginDay Cmd

The command to execute once a day for daily housekeeping.

The commandline supports no parameters of the form "@<Character>"


##### Net Callouts

Should WWIV automatically make WWIVnet network callouts as specified in the WWIVnet config files for the network.


##### Net Callout Cmd

The command to callout to use for a Net Callout

The commandline supports the following parameters of the form "@<Character>":

Param | Description
:----:| ------------------
  N   | WWIVnet or Fido Network address of the remote server to connect.
  T   | The network "number" for the network to connect to. (i.e. 0 for the first network)
<br/>

##### Matrix Filename 

Filename to display if more than one BBS is defined in the Matrix Settings.

##### Matrix Settings

Configuration for invoking one or more BBS softwares after a telnet session has 
been entablished.

The commandlines in the matrix setting to spawn the BBS supports the following
parameters of the form "@<Character>":

Param | Description
:----:| ------------------
  N   | BBS Node number to spawn,
  H   | Socket handle to the socket that has accepted the connection

<br/>

##### Blocking

Configuration for automatic blocking, safelisting, blocklisting, and other defense mechanisms such as "Fake Mailer Mode"


