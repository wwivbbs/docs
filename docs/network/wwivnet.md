# WWIVnet Overview

***
 
## What's a WWIVnet?
WWIVnet refers to a WWIV BBS based Net that uses WWIV's message and network 
packet system to share email and sub messages. There are and have been other 
WWIVnet based networks, similiar to how there are more than one FidoNet 
Technology based net. All of these nets are covered on the [FTN Nets](ftn_nets.md) page.

For the purpose of this page, WWIVnet refers to the specific instance of a 
WWIVnet that is the primary network for WWIV BBSes called WWIVnet.

## Technical Overview of WWIVnet

On November 2, 2015, WWIVnet switched to [BINKP](https://en.wikipedia.org/wiki/Binkp) as the underlying protocol for transferring net email and sub messages. The design of the network currently is a hub and spoke model with one node "@1" at the center point for all traffic flow.

## Joining WWIVnet

Thanks for your interest in WWIVnet,
all you need to join is a WWIV bbs heres the application below.

## WWIVnet Application for Membership

WWIVnet is a mail network for WWIV, and compatible bulletin board
systems. If you would like to join, please fill out this application.
When you've completed it, you must rename it to <last_name>.APP. This is
to prevent it from being looked over or overwritten by another application.

The best way to have your application processed is to get on a WWIVnet
BBS and mail this completed application to either the WWIVnet Network 
Coordinator, Weatherman 1@1 WWIVnet or email mark@weather-station.org


    =============================================================================
       WWIV Network Application for Membership
    -----------------------------------------------------------------------------
    SYSTEM OPERATOR INFORMATION:
        Real Full Name    :
        Your Handle/Alias :
        Home Phone Number : 
        Best Hours to Call: 
        Street/Mailing Address: 
        City: 
        State:      Zip Code:
    
    BBS INFORMATION:
        Bulletin Board Name:
        Bulletin Board Phone or Telnet Address:
        Hours of operation: 
        Months the BBS has been up: 
        WWIV Software Version:               
        Reg Number (if you have one): 
        Other networks you carry:

    Signature/Name:                              Date:
    
## Configuring WWIVnet

Setting up WWIVnet on Windows and Linux is essentially the same.  All the examples here will use the Windows version of pathing, just remember in linux the path separator is the forward slash, not the back slash.

Anywhere you see a command to run (wwivconfig, network3, etc), remember this assumes you are in your WWIV installation directory.

* Create a ```nets\wwivnet``` directory in your WWIV directory.
* Get the latest version of [WWIVNET-###.zip](https://build.wwivbbs.org/jenkins/job/wwivnet/lastStableBuild/label=windows/) on the build server. 
* Put all of the contents of the zip in ```\wwiv\nets\wwivnet```
* run ```wwivconfig``` and select N. Network Configuration

```
┌───────────────────────────────────────── Network Configuration ┐
│ Net Type  : WWIVnet                                            │
│ Net Name  : WWIVnet                                            │
│ Node #    : YOURNODE                                           │
│ Directory : nets\wwivnet\                                      │
└────────────────────────────────────────────────────────────────┘
```

* Create \wwiv\nets\wwivnet\callout.net with ```@1 && /60 "password"``` 
  replacing password with the one provided by 1@1. *NOTE* The double quotes
  are necessary in the file.
* Run ```network3 y``` which will verify your configuration and files and
  send an email to your local #1 mailbox. If no network number is given, .0
  is assumed, so ```network3 y``` is the same as ```network3 y .0``` 
* From the \wwiv run ```bbs.exe -M``` to pickup and deliver the mail.  
**Note:** The default config runs the local node with the -M command so if you run the local node to check your mail this will happen anyway, but you have to launch the local node AFTER you run Network3.
* Login as #1 and Check your email on the BBS. You should see a pretty email
  and it should say "Everything is Fine" along with other details.


## Verify Network Mail

* Login to your BBS and send an email to 1@1
* You will be prompted to pick the net (WWVIVnet) and confirm the system (Weather Station).
* Give it a subject. Send the Net Coordinator a love note and hit /S to save and send.
* Ideally you and 1@1 are chatting in IRC while you do this. ;-) then you can confirm and troubleshoot all at once. If not, wait a couple of hours for 1@1 to read or reply.


## Maintaining your WWIVnet Connections

When you setup WWIVnet you download WWIVNET-##.zip from the build server and put the files in ```\wwiv\nets\wwivnet```. Occasionally you need to update these files so your BBS knowns who the new nodes & SUBs are on the net as well as which ones have gone away. If you are NOT also setup to get a Usenet feed you can copy the new files from the zip to ```\wwiv\net\wwivnet``` each time they are updated.

If you are also getting a feed from Usenet you have customized these files and you need to maintain your edits. These are the files you need to edit each time you get a new set of WWIVnet files.

**TODO** This in progress. See [Issue 229](https://github.com/wwivbbs/wwiv/issues/229).  


## Subscribing to Message Subs

Now that we've gotten through all of the setup and tested with some netmail, it's time to actually add some subs. The first thing you need to do is look at your ${WWIV_DIR}/nets/wwivnet/subs.lst to see all the available WWIVnet subs. For example, a few of the core subs are:  
```
1 1 R WWIVnet Sysop Area  
GENCHAT 1 R WWIVnet General Chat  
WWIVDEV 1 R WWIV Development  
WWIVNET 1 R WWIV Networking  
```
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

## Hosting your own WWIVnet SUB

If\when you are are ready to host your own WWIVnet sub here are the steps to take:

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

## Custom Ports for BINKP

If you are running other BINKP protocol networks (like Fidonet), you might need to specify a custom port for WWIVnet. 
To do this, the custom port needs to be specified in `binkp.net` by adding  `:port#` to your entry like so:  
`@206 wwiv.cloudcitybbs.com:24555`
This is managed by @1, the Network Coordinator. So you first contact them about this as you joing WWIVnet or if you need to make a change later. You will then also need to specify this custom port in wwivd config in wwivconfig.

Again, be sure to coordinate changes with 1@1 or you will be dropped off the net.

***
Even though we are no longer using the old DOS version of NETXX, the documentation for net37 has a lot of technical information if you'd like to read it that is still relevant to how the data packets are processed.

* [NET37.DOC](../archive/net37_docs.md) <- Has all the installation information (Must Read!)
* [NET37TEC.DOC](../archive/net37_tec_docs.md) <- Good technical read on the inner workings of WWIVnet (optional)
