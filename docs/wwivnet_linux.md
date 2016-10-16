# Configuring WWIVnet on Linux
***

**STEP #1**  - Get a WWIVnet Node Number assigned.  
You will need the Node Number for several steps in this setup.  
**STEP #2**  - send a password to 1@1 for the binkp auth.
You can do this at the same time as getting the Node Number.  You will need this for your callout.net file later.

**NOTE:** Please don't bother to try configuring things ahead of time; 
it will just cause issues during setup.  

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
5. run network3 - Now that all the WWIVnet config bits are in place, we can run the network3 program to validate our setup.  If everything goes as expected, you should get a network report mailed to you on your board locally.  The command to run is:
 * network3 y .-your network position in INIT-  
 for example, your list of nets in INIT starts with 0, so your first network is .0, the second is .1, etc.  Since this is probably your first network, the command is probably network3 y .0
 * If no network number is given, .0 is assumed, so network3 y is the same as network3 y .0


**Basic Mail Processing Workflow**  
WWIVnet uses BinkP to transfer messages between systems.  In most cases, all you need to do is schedule the network binary to run periodically to push/pull messages.  It will call networkb as a sub-process to handle the BinkP connection.  If it finds any message files on your system to send out, it will pick them up and send to the target node.  After it is done sending, it will then grab anything on the target system that is destined for your board and insert them into the local mesg files. 

The basic command to invoke the message transport is:

network --network=(name of your network) --node=(number of target)

You want to make sure network is run from your ${WWIV_DIR}

(name of your network) = whatever you named your network in init (typically wwivnet)

(number of target) = the number of the system you get/send messages from/to (typically 1)


So, a command for a typical setup will look like this:

```network --network=wwivnet --node=1```


If you want to allow your system to listen for incoming connections to BinkP, it is now possible to let the wwivd service manage running networkb for you.

Most people will be perfectly fine with just running the network command on a schedule.

_**Putting it all together**_

How often you schedule mail checks is entirely up to you, but every 15 minutes or so is probably more than sufficient.  Just adding the network command to cron should work nicely.

At this point, WWIVnet should be working well enough to handle sending mail between systems. If you are still having issues, you will need to resolve them before moving on to Message Subs. Look for help in the irc channel if you are stuck.

_**Subscribing to Message Subs**_

This is abbreviated information (and some gotchas for Linux). Please see the Full WWIV Docs for detailed information on setting up subs if this isn't enough info.
Now that we've gotten through all of the setup and tested with some netmail, it's time to actually add some subs. The first thing you need to do is look at your ${WWIV_DIR}/nets/wwivnet/subs.lst to see all the available WWIVnet subs. For example, a few of the core subs are:
1 1 R WWIVnet Sysop Area
GENCHAT 1 R WWIVnet General Chat
WWIVDEV 1 R WWIV Development
WWIVNET 1 R WWIV Networking
The important bit is the first and second field. This is the "Subtype" and host that you will enter in //BE. Typically, you will just use the Subtype as the Filename, too (it just makes it easier to keep track). In order to add a WWIVnet sub, you will use option "J" in the edit section to set up the Net parameters for the sub. Here's an example:

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

**Note:** that in the example, the sub type is "GENCHAT" and the Host is "1"

**NOTE:** When putting in a filename (option B), **use all lowercase**. There is a potential issue with filename case that can be avoided by using lowercase for the names.  

After you finish adding a new sub and the automated request is generated, it will take some time for the request to make it to the host node and for it to auto-subscribe your node. Assuming your net tossing is working, the BBS will attempt to run network1 when you log out. Once it has generated the necessary files, it will be sent as part of the callout process listed above. If you have already gotten it working for normal user netmail, this should "just work."

