# Configuring WWIVNet on Linux
***

Setting up WWIVnet and subscribing to Subs isn't hard, but there are a few 
gotchas; mostly due to filename inconsistencies and having to use DOSEMU 
for some of the tools (NET38, et al)

**STEP #1**  - Get a WWIVnet Node Number assigned.  
You will need the Node Number for several steps in this setup.  
**STEP #2**  - send a password to 1@1 for the bank auth.
You can do this at the same time as getting the Node Number.  You will need this for your callout.net file later.

**NOTE:** Please don't bother to try configuring things ahead of time; 
it will just cause issues during setup.  

_Where Stuff Goes_  
This is some layout info so you have a handle on where everything belongs. 
We will build up the associated structure as we go along. The surrounded by 
"** **" are the ones specific to WWIVnet.

    ${WWIV_DIR}
        .dosemurc
        .wwivrc
        in.nodemgr
        **network0**
        **network1** (symbolic link to network0)
        **network2** (symbolic link to network0)
        **network3** (symbolic link to network0)
        data
        nets
            **wwivnet**    
        .dosemu
            drive_c
                autoexec.bat
                **network1.bat**
                **network2.bat**
                **network3.bat**

### Installing Binaries

We will have a conflict with the Windows binaries, so install.sh moves them all to win-bins

1. Install NET38b3.ZIP binaries
* unzip NET38b3.ZIP in ${WWIV_DIR}

### Configuring WWIVnet

**WWIVnet under dosemu**

Since we need to run the NET38 binaries under dosemu, we will 
get the dosemu parts going first. For a detailed explanation of how 
to set up DOSEMU (in particular, the relationship between shell 
scripts and batch files), check out [DOSEMU common settings] first. 
We are going to talk about only the specifics of DOSEMU in the context 
of WWIVnet in this section. We assume you already have DOSEMU running 
successfully (have your .dosemurc configured and have manually run 
dosemu).

_dosemu config_

1. extract dosemu_batchfiles.tgz in your dosemu C: drive (e.g, ~/.dosemu/drive_c)
2. edit files to suit your system
* make sure paths match your setup (e.g, in batch files)

_network scripts_

We have a common network shell script that can be used to reference 
multiple DOS batch files in dosemu. The core script looks like this 
and should be placed in your base WWIV directory saved as network0 
(not network0.sh):

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

# This will be the network number according to your init setup
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

make it executable (chmod 755 network0)  
symbolic links to network should also be created for network1 network2 
and network3

    ln -s network0 network1
    ln -s network0 network2
    ln -s network0 network3

What this allows is for when calls to the WWIVnet binaries happens from 
the BBS, it has someplace to go (i.e., run DOS binaries).

_**Configuring WWIVnet details and directories**_

1. create ${WWIV_DIR}/nets/wwivnet
2. get network info files wwivnet.zip and extract into ${WWIV_DIR}/nets/wwivnet
3. create ${WWIV_DIR}/nets/wwivnet/callout.net: 
 * Make a file with a single line containing the @1 node (it's the only active node relaying messages, atm).  The format is:
 * @1 & "yourpassword"
 * "yourpassword" is the one you provided to 1@1 and the file must include the double-quotes.
4. use init to set up network info (select "N")
 * Network type : WWIVnet
 * Network name : WWIVnet
 * Node number : -your node number-
 * Data Directory : nets/wwivnet/
5. run network3 (the shell script) - Now that all the WWIVNet config bits are in place, we can run the network3 program to validate our setup.  If everything goes as expected, you should get a network report mailed to you on your board locally.  The command to run is:
 * network3 y .-your network position in INIT-
 * for example, your list of nets in INIT starts with 0, so your first network is .0, the second is .1, etc.  Since this is probably your first network, the command is probably network3 y .0
 * If no network number is given, .0 is assumed, so network3 y is the same as network3 y .0


**Basic Mail Processing Workflow**  
WWIVnet uses BinkP to transfer messages between systems.  In most cases, all you need to do is schedule the networkb binary to run periodically to push/pull messages.  If it finds any message files on your system to send out, it will pick them up and send to the target node.  After it is done sending, it will then grab anything on the target system that is destined for your board and insert them into the local mesg files. 

The basic command to invoke the message transport is:

networkb --send --network=(name of your network) --node=(number of target)

You want to make sure networkb is run from your ${WWIV_DIR}

(name of your network) = whatever you named your network in init (typically wwivnet)

(number of target) = the number of the system you get/send messages from/to (typically 1)


So, a command for a typical setup will look like this:

networkb --send --network=wwivnet --node=1

Full networkb usage looks like:

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

If you want to allow your system to listen for incoming connections to BinkP, that's possible to do with the --receive flag; but it's a one-shot service, so it needs to be put in a loop (more details to come on this).  Most people will be perfectly fine with just polling with the --send flag.

_**Putting it all together**_

How often you schedule mail checks is entirely up to you, but every 15 minutes or so is probably more than sufficient.  Just adding the networkb --send command to cron should work nicely.

At this point, WWIVnet should be working well enough to handle sending mail between systems. If you are still having issues, you will need to resolve them before moving on to Message Subs. Look for help in the irc channel if you are stuck.

_**Subscribing to Message Subs**_

This is abbreviated information (and some gotchas for Linux). Please see the Full WWIV Docs for detailed information on setting up subs if this isn't enough info.
Now that we've gotten through all of the setup and tested with some netmail, it's time to actually add some subs. The first thing you need to do is look at your ${WWIV_DIR}/nets/wwivnet/subs.lst to see all the available WWIVnet subs. For example, a few of the core subs are:
1 1 R WWIVNET Sysop Area
GENCHAT 1 R WWIVNET General Chat
WWIVDEV 1 R WWIV Development
WWIVNET 1 R WWIV Networking
The important bit is the first and second field. This is the "Subtype" and host that you will enter in //BE. Typically, you will just use the Subtype as the Filename, too (it just makes it easier to keep track). In order to add a WWIVnet sub, you will use option "J" in the edit section to set up the Net parameters for the sub. Here's an example:

    A) Name       : WWIVNET General Chat
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

**Note:** that in the example, the sub type is "GENCHAT" and the Host is "1"

**NOTE:** When putting in a filename (option B), **use all lowercase**. There is an issue where dosemu and WWIV get disagreeable about filename case. If you don't follow this, you will be dealing with the "Gotchas" section below and doing hard links (you really want to avoid this if possible).
After you finish adding a new sub and the automated request is generated, it will take some time for the request to make it to the host node and for it to auto-subscribe your node. Assuming your net tossing is working, the BBS will attempt to run network1 when you log out. Once it has generated the necessary files, it will be sent as part of the callout process listed above. If you have already gotten it working for normal user netmail, this should "just work."

_**Gotchas**_  

**NOTE:** You should not need this section unless you ignored the warning about using lowercase filenames; in which case, shame on you.  Go back and do it right.
 
The Main issue is with filename mismatches. Sub files are in two places; the dat files are in ${WWIV_DIR}/data and the message contents are in ${WWIV_DIR}/msgs. Because of how PPP and DOSemu work, there is a conflict with the msgs/*dat files. You will need to create links between the files. You can get ahead of the issue by doing in the following:

1. cd ${WWIV_DIR}/msgs
2. touch lower.lower filename (e.g, touch genchat.dat)
3. link UPPER.lower to lower.lower (e.g., ln -P genchat.dat GENCHAT.dat)

That will prep the dat file to be accessible by both the bbs and the DOS-based tools (this will eventually be fixed). One symptom of this will be missing information in the message header:

    Msg: [1/2] WWIVNET General Chat
    Subj: Re: Seasonal...
    Name:
    Date:
    From: aliens' abode! [910-473-INET]
    Loc:  Unknown prefix code (910)

_**The Nitty-Gritty**_

This is information about exactly what the Network*.exe files are doing. You don't need to understand this to install WWIVnet, but it can be useful info.
The processing of the net files comes from page 38 of
NET37TEC.DOC. 

1. Convert network.dat's path separator with sed 
* uudecode the incoming file to SNN.NET, where NN is your node # where the file ultimately needs to end up is your wwivnet directory. 
* dosemu NETWORK3.EXE to analyze the packets. This should create the P.EXE file from the SNN.NET file.
* After the P.EXE file is created process it with NETWORK2.EXE
* Convert network.dat's path separator back with sed. This conversion is really dependent on how the network.dat file is being processed. If it's in dosemu, the separator needs to be \, if it's linux, it needs to be /. Example of how this affects you: if the separator is a /, then the NETXX EXE files can't find the path and fail on processing; if the separator is a \, then parts of your message info (like where the message came from) will be missing.
