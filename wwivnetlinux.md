# Configuring WWIVNet on Linux
***

Setting up WWIVnet and subscribing to Subs isn't hard, but there are a few 
gotchas; mostly due to filename inconsistencies and having to use DOSEMU 
for some of the tools (NET38, et al)

**STEP #1**  - Get a WWIVnet Node Number assigned.  
You will need the Node Number for several steps in this setup.  
**NOTE:** Please don't bother to try configuring things ahead of time; 
it will just cause issues during setup.  

_Where Stuff Goes_  
This is some layout info so you have a handle on where everything belongs. 
We will build up the associated structure as we go along. The surrounded by 
"** **" are the ones specific to WWIVnet.

    ${WWIV_DIR}
        .dosemurc
        **.fetchmailrc**
        **.procmailrc**
        .wwivrc
        in.nodemgr
        **network**
        **network1** (link to network)
        **network2** (link to network)
        **network3** (link to network)
        data
        **wwivnet**    
    bin
        **processmail.sh**
    .dosemu
        drive_c
            autoexec.bat
            **network.bat**
            **network1.bat**
            **network2.bat**
            **network3.bat**

**Basic Mail Processing Workflow**  

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
and should be placed in your base WWIV directory saved as network 
(not network.sh):

```shell
#!/bin/bash
#
# network[123]
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

make it executable (chmod 755 network)  
symbolic links to network should also be created for network1 network2 
and network3

    ln -s network network1
    ln -s network network2
    ln -s network network3

What this allows is for when calls to the WWIVnet binaries happens from 
the BBS, it has someplace to go (i.e., run DOS binaries).

_**Configuring WWIVnet details and directories**_

# create ${WWIV_DIR}/nets/wwivnet
# get network info files wwivnet.zip and extract into ${WWIV_DIR}/nets/wwivnet
# create ${WWIV_DIR}/nets/wwivnet/callout.net: Make a file with a single line containing the @1 node (it's the only active node relaying messages, atm).
# use init to set up network info (select "N")
* Network type : WWIVnet
* Network name : WWIVnet
* Node number : <your node number>
* Data Directory : nets/wwivnet/
# run network (the shell script) - Now that all the WWIVNet config bits are in place, we can run the network.exe via dosemu and it will set up the majority of the directory structure under ${WWIV_DIR}/wwivnet for us.


We should now have all our directories in place. The main ones for mail processing are
 Directory | Description 
-----------|-------------
${WWIV_DIR} | your bbs userid's home dir for the .*rc files. The network* shell scripts go here as well
${WWIV_DIR}/bin | location for most of the non-wwiv utility scripts 


_**Getting mail config**_

We use fetchmail+procmail to pull WWIVnet messages from 1@1. You will need the following:

1. .fetchmailrc configured with your username and password for the POP3 server at 1@1 (skulls.wwivbbs.com)
2. .procmailrc in the wwiv base configured to dump a copy of the messages

Of these two, .procmailrc is already set up for you by the install.sh to dump to the PPP inbound, and the only change you need to make for .fetchmailrc is to add your credentials. for example, the poll line:

poll skulls.wwivbbs.com with proto POP3  
user 'youruserid' there with password 'yourpassword' is 'wwiv' here  

replace youruserid with your login and yourpassword with your password.  
**NOTE:** This is NOT your login to the Skulls and Crossbones BBS, it's the separate id/password you got from Eli for the SMTP server.

_**Sending mail config**_  

There isn't much of anything special to do for sending mail; all the pieces you need are already in place if you have done everything above. Sending a message in the BBS will cause the system to prepare outbound mail when you log out.

The only thing you can edit if you want is ${WWIV_DIR}/bin/callout.py. Change the line:
tn.write("MAIL FROM: bbsname@skulls.wwivbbs.com\n")
to reflect your SMTP login name. This isn't necessary, but it may help with troubleshooting.

callout.py - is used to send WWIVnet messages to 1@1 right now. It basically 
takes the place of a full-fledged MTA like postfix for sending mail.
It currently assumes python 2.x, so if your system is python 3.x, you will have to make sure you are calling callout.py with the right version of python.

_**Putting it all together**_

And finally, we have three scripts to handle inbound/outbound mail that do some checking and preprocessing to manage the details. These are all in the ${WWIV_DIR}/bin directory.
inbound.sh - calls fetchmail, processes all the inbound files and inserts them into the BBS
outbound.sh - looks for all the output files from the BBS, converts them into the appropriate format, and sends them out via callout.py
processmail.sh - a wrapper for inbound.sh and outbound.sh to make it easy to schedule WWIVnet checks via cron. How often you schedule mail checks is entirely up to you, but every 15 minutes or so is probably more than sufficient.
At this point, WWIVnet should be working well enough to handle sending mail between systems. If you are still having issues, you will need to resolve them before moving on to Message Subs. Look for help in the irc channel if you are stuck.

_**Subscribing to Message Subs**_

This is abbreviated information (and some gotchas for Linux). Please see the Full WWIV Docs for detailed information on setting up subs if this isn't enough info.
Now that we've gotten through all of the setup and tested with some netmail, it's time to actually add some subs. The first thing you need to do is look at your ${WWIV_DIR}/wwivnet/SUBS.LST to see all the available WWIVnet subs. For example, a few of the core subs are:
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

**NOTE:** When putting in a filename (option B), use all lowercase. There is an issue where dosemu and WWIV get disagreeable about filename case. If you don't follow this, you will be dealing with the "Gotchas" section below and doing hard links (you really want to avoid this if possible).
After you finish adding a new sub and the automated request is generated, it will take some time for the request to make it to the host node and for it to auto-subscribe your node. Assuming your net tossing is working, the BBS will attempt to run network1 when you log out. Once it has generated the necessary files, it will be sent as part of the callout process listed above. If you have already gotten it working for normal user netmail, this should "just work."

_**Gotchas**_  

**NOTE:** You should not need this section unless you ignored the warning about using lowercase filenames.

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
NET37TEC.DOC. Essentially what the steps are after the procmail
rule picks up the files are:

1. Convert network.dat's path separator with sed 
2. uudecode the incoming file to SNN.NET, where NN is your node #
where the file ultimately needs to end up is your wwivnet 
directory. Another gotcha is filename case (again).
NETWORK1.EXE can't see the file if it's lowercase.
3. dosemu NETWORK3.EXE to analyze the packets. This should create
the P.EXE file from the SNN.NET file.
3. After the P.EXE file is created (and converted to uppercase),
process it with NETWORK2.EXE
4. Convert network.dat's path separator back with sed. This
conversion is really dependent on how the network.dat file is being
processed. If it's in dosemu, the separator needs to be \, if it's
linux, it needs to be /. Example of how this affects you: if the separator is
a /, then the NETXX EXE files can't find the path and fail on processing; if the 
separator is a \, then parts of your message info (like where the message came from)
will be missing.

# Other WWIVNet Documenation
***
[WWIV Networking Technical Documentation October 1994](wwivnettech2.0)  