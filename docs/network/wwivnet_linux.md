# Configuring WWIVnet on Linux

***

These directions supercede and replace the general directions for linux from 
"Configuring WWIVnet" onward.  You absolutely have to get a WWIVnet node number 
assigned; 1@1 will supply the password and node number.

It's best to get that information **before** attempting to set up WWIVnet.

Throughout, ${WWIV_DIR} refers to your WWIV base installation directory.
    
## Installing Network Scripts

We have a common network shell script that can be used to reference 
multiple executables and batch files.  It should be placed in your base WWIV 
directory and saved as `network0` and **NOT**  `network0.sh`:

```shell
#!/bin/bash
#
# network[0123]
#
# This sets the pathname separator in networks.bat before calling the appropriate
# DOS batch file with dosemu.  If we don't, the DOS version of the NETXX scripts
# get confused because they can't find the path.  Once it's done processing, we
# set it back so the linux binaries don't have the same problem.
#
# Symptoms that the path separator is wrong include the header in WWIVnet messages 
# missing node location info and show up as Unknown.

# Grab all our wwiv location info
source ~/.wwivrc

# This will be the network number according to your wwivconfig setup
# for example, your first network will be .0, your second .1, etc
NET=$1

# Keep things like control-C from dropping out of the shell script
trap "echo" SIGHUP SIGINT SIGTERM

sed -i 's/\//\\/g' ${WWIVDATA_DIR}/networks.dat

#This one throws away error messages sent to STDERR, but still shows most activity
dosemu -dumb -quiet "$(basename ${0}).bat ${NET}" 2>/dev/null

# You may want to uncomment the below line and comment the above one if you
# want to make the output as quiet as possible.
#dosemu -dumb -quiet "$(basename ${0}).bat ${NET}" >/dev/null 2>&1

sed -i 's/\\/\//g' ${WWIVDATA_DIR}/networks.dat
```   

* Make it executable: `chmod 755 network0`
* Create symbolic links the other `network` files: 

    `ln -s network0 network1`
    `ln -s network0 network2`
    `ln -s network0 network3`

This allows calls from the BBS to the WWIVnet binaries to have somewhere to go.

## Configuring WWIVnet

* Create a directory for WWIVnet: `mkdir -p ${WWIV_DIR}\nets\wwivnet` .
* Get the latest version of [WWIVNET-###.zip](https://build.wwivbbs.org/jenkins/job/wwivnet/lastStableBuild/label=windows/) on the build server.  Do not worry that the build tag says "windows"; it's the same information.  
* Put all of the contents of the zip in `${WWIV_DIR}/nets/wwivnet`
* run ```wwivconfig``` and select N. Network Configuration

```
┌───────────────────────────────────────── Network Configuration ┐
│ Net Type  : WWIVnet                                            │
│ Net Name  : WWIVnet                                            │
│ Node #    : YOURNODE                                           │
│ Directory : nets\wwivnet\                                      │
└────────────────────────────────────────────────────────────────┘
```


* Create `callout.net` with `touch ${WWIV_DIR}/nets/wwivnet/callout.net`
* Edit `callout.net` with your favorite editor. There should only be *one* line 
in the file: 

`@1 && /60 "password"` 

* Remember to replace `"password"` with the one provided by 1@1. The double quotes
  are **necessary** in the file.

## Verify Local Setup
  
* We will use `network3` to validate our setup.  From ${WWIV_DIR}, you will run 
`network3 y .${network-position}`.  ${network-position} depends on your setup.
 If WWIVNet is the first network you are setting up, it is first in the list of 
 networks, and therefore has position 0.  The next (second) network will have 
 position 1, and so on.  So if this is your first network, the command is 
 
 `network3 y .0`
 
 If you leave out the network number, .0 is assumed.

* `network3` will send you an email to verify your setup. In order for the BBS 
to pick it up, you should run `bbs -M`.  **NOTE** While the local node defaults to
running with -M, it will *only* pick the mail up if the local node is started 
after you have run `network3`.

* Login as #1 and Check your email on the BBS. You should see a pretty email
  and it should say "Everything is Fine" along with other details.


## Verify Network Mail

* Login to your BBS and send an email to `1@1`
* You will be prompted to pick the net (WWVIVnet) and confirm the system (Weather Station).
* Give it a subject. Send the Net Coordinator a love note and hit /S to save and send.
* If you and 1@1 are chatting in IRC, you can confirm and troubleshoot all at once. 
Otherwise, please give 1@1 at least several hours to read and reply.  

## Mail Processing

Network mail processing **must** be done from ${WWIV_DIR}.  The basic command 
to invoke message transport is:

`network --net=(name or position of your network) --node=(number of target)`

So to continue with the example above, it could be:

`network --net=wwivnet --node=1`

OR

`network --net=0 --node=1`

You should call this at a regular but decently spread out interval. (Every quarter 
hour is *more* than sufficient.)  You can use [cron](https://linuxconfig.org/using-cron-scheduler-on-linux-systems), 
[systemd](https://linuxconfig.org/how-to-schedule-tasks-with-systemd-timers-in-linux), or 
another process to call this command from ${WWIV_DIR}.

## Networked Messaging

Now that we've gotten through all of the setup and tested with some netmail, 
it's time to actually add some subs. The first thing you need to do is look at 
your ${WWIV_DIR}/nets/wwivnet/subs.lst to see all the available WWIVnet subs. 
For example, a few of the core subs are:  

```
WWIVSYS 1 1 R WWIVnet Sysop Area  
GENCHAT 1 R WWIVnet General Chat  
WWIVDEV 1 R WWIV Development  
WWIVNET 1 R WWIV Networking  
```

The important bits are the first and second fields. This is the "Subtype" and 
host that you will enter in //BE (boardedit). Typically, you will just use the 
Subtype as the Filename, too (it just makes it easier to keep track). 
In order to add a WWIVnet sub, you will use option "J" in the edit section to 
set up the Net parameters for the sub. Here's an example:


```
    A) Name       : WWIVnet General Chat
    B) Filename   : genchat
    C) Key        : None.
    D) Read SL    : 10
    E) Post SL    : 20
    F) Anony      : No
    G) Min. Age   : 0
    H) Max Msgs   : 1000
    I) AR         : None.
    J) Net info   : Not networked.
    K) Storage typ: 2
    L) Val network: No
    M) Req ANSI   : No
    N) Disable tag: No
    O) Description: None.

    (Q=Quit) Which (A-O,[=Prev,]=Next) : J

    What sub type? GENCHAT
    Will you be hosting the sub? No

    Which system (number) is the host? 1

    Attempt automated add request? Yes

    Automated add request sent to @1

```

In this example, the Subtype is GENCHAT and the host is "1". 
If you just fill out the Subtype information under "J", WWIV will offer to fill 
the host and the Name fields from subs.lst. 

**NOTE:** When putting in a filename (option B), **use all lowercase**. There is 
a potential issue with filename case that can be avoided by using lowercase for the names.  

## Hosting your own WWIVnet SUB

If and when you are are ready to host your own WWIVnet sub here are the steps to take:

* Set up your sub locally in your BBS first. This is harmless.
* Get to the Sub Editor in //SYSOP, from the menu with //BE or "B" from the WFC screen.
* Choose to Insert a new SUB and fill-out the Name, and Filename fields at a minimum.
* Then choose "J" Net Info and select WWIVnet
* The SUBTYPE is the internal name of the sub in WWIVnet this must be unique (see SUBS.LST)
* Select YES you will be hosting the SUB.
* It is easiest and best to also allow auto add/drop requests. Unless your Sub is
  more exclusive.
* Select YES to add it to SUBS.LST to make it public.  
**Note:** Currently we have to manually share the subs.lst, that will be fixed in the future.
* Add your Sub to the subs.lst or request help on the WWIV Sysops Sub
* Post an announcement on the WWIVnet Sub Yellow Pages to advertise your new sub

## Maintaining your WWIVnet Connections

When you setup WWIVnet you had downloaded WWIVNET-###.zip from the build server 
and put the files in `${WWIV_DIR}/nets/wwivnet`. Occasionally you need to update 
these files so your BBS knowns who the new nodes & SUBs are on the net as well 
as which ones have gone away. If you are NOT also setup to get a Usenet feed you 
can copy the new files from the zip to `${WWIV_DIR}/nets/wwivnet` each time they are updated.

If you are also getting a feed from Usenet you have customized these files and 
you need to maintain your edits. These are the files you need to edit each time you get a new set of WWIVnet files.

**TODO** This in progress. See [Issue 229](https://github.com/wwivbbs/wwiv/issues/229).  

## Custom Ports for BINKP

If you are running other BINKP protocol networks (like Fidonet), you might 
need to specify a custom port for WWIVnet. 

To do this, the custom port needs to be specified in `binkp.net` by adding 
`:port#` to your entry like so:  `@206 wwiv.cloudcitybbs.com:24555`

This is managed by @1, the Network Coordinator. So you **must** first contact them 
about this when you are joining WWIVnet or if you need to make a change later. 
You will then also need to specify this custom port in wwivd config in wwivconfig.

**Again, be sure to coordinate changes with 1@1 or you will be dropped off the net.**

## How it works

WWIVnet uses BinkP to transfer messages between systems.  In most cases, all 
you need to do is schedule the network binary to run periodically to push/pull 
messages.  It will call networkb as a sub-process to handle the BinkP connection.  
If it finds any message files on your system to send out, it will pick them up 
and send to the target node.  After it is done sending, it will then grab anything 
on the target system that is destined for your board and insert them into the local 
message files. 

Full `network` usage looks like:

```
./network [args]

program arguments:
--allow_sendback       Allow sendback (only used by legacy network0)
--bbsdir               (optional) BBS directory if other than current directory
--callout_time         Start time of the callout (only used by legacy network0)
--help                 displays help.
--network              Network name to use (i.e. wwivnet).
--network_number       Network number to use (i.e. 0).
--node                 Network node number to dial.
--phone_number         Network number to use (only used by legacy network0)
--speed                Modem Speedto use (only used by legacy network0)
/N####     Network node number to dial.
.####      Network number (as defined in wwivconfig)
```  


Full `networkb` (the command that network calls to do the work) usage looks like:

```
Usage: networkb [flags]
Flags:
--network  Network name to use (i.e. wwivnet)
--bbsdir   (optional) BBS directory if other than current directory 
--send     Send network traffic to --node
--receive  Receive from any node
--node     Node number (only used when sending)
--port     Port number to use (receiving only)
--skip_net Skip invoking network1/network2/network3
```  

If you want to allow your system to listen for incoming connections to BinkP, 
that's possible to do with the --receive flag; but it's a one-shot service, 
so it needs to be put in a loop (more details to come on this).  Most people 
will be perfectly fine with just running the network command on a schedule.

This is information about exactly what the Network*.exe files are doing. You don't need to understand this to install WWIVnet, but it can be useful info.
The processing of the net files comes from page 38 of [NET37TEC.DOC](../archive/net37_tec_docs.md). 

1. Convert network.dat's path separator with sed 
* uudecode the incoming file to SNN.NET, where NN is your node # where the file ultimately needs to end up is your wwivnet directory. 
* dosemu NETWORK3.EXE to analyze the packets. This should create the P.EXE file from the SNN.NET file.
* After the P.EXE file is created process it with NETWORK2.EXE
* Convert network.dat's path separator back with sed. This conversion is really dependent on how the network.dat file is being processed. If it's in dosemu, the separator needs to be \, if it's linux, it needs to be /. Example of how this affects you: if the separator is a /, then the NETXX EXE files can't find the path and fail on processing; if the separator is a \, then parts of your message info (like where the message came from) will be missing.

***

Even though we are no longer using the old DOS version of NETXX, the documentation for net37 has a lot of technical information if you'd like to read it that is still relevant to how the data packets are processed.

* [NET37.DOC](../archive/net37_docs.md) <- Has all the installation information (Must Read!)
* [NET37TEC.DOC](../archive/net37_tec_docs.md) <- Good technical read on the inner workings of WWIVnet (optional)
