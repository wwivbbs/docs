# WWIV and FTN (FIDO) Networks

***

## Fido Technology Nets (FTN)
This covers Nets based on the FidoNet standards. You can read about how to join FidoNet Proper
on [FidoNet.org](http://www.fidonet.org/). The high-level process is simple:

1. Read the [Fido Policy 4.07](http://www.filegate.net/info/policy4.txt)
2. Get the [latest Node List](http://www.filegate.net/nodelist/)
3. Setup your software to connect to FidoNet and then send an email as specified in the Policy doc. 
I'm purposefully being vague about that. Read the Policy doc. ;-)
4. They will grant\deny you a node # and then you're in.

**NOTE:** There are other FTN Based nets with their own policies and rules to join. 
Links will be provided below as they are identified.

## About WWIV FTN Networking 
Net52 (aka the native network stack in WWIV 5.2) recently started supporting
Fido Technology Network (FTN) as well as the traditional WWIVnet style
networking.  

The bridge to FTN is implemented in ```networkf```.  networkf handles importing
from a FTN packet or bundle into a WWIVnet style packet (S\*.net or local.net).

## Setup

Using wwivconfig, you need to create a new network type.  Change the type to Fido (the default
is WWIVnet), by pressing the space bar to toggle the type.

You must name your network. This name will be used as the domain for both
WWIVnet binkp transfers as well as later on when ```networkb``` (the wwiv
binkp'ish transport command) supports FTN.

You must leave your node number as **1** for Fido.  It's not used externally
and is needed by the WWIV networking tools to properly import and export
packets.

You may use any directory for the Directory, typically these are located
beneath the WWIV home directory and named after the network.

Now move down to Settings to configure the default settings for this network. 
After that you can add addresses that you will connect to, and customize the 
settings for that specific node.

Example:
```
┌─────────────────────────────────────────── Network Configuration; Net #4 ┐
│ Net Type  : Fido                                                         │
│ Net Name  : wwivnet-ftn                                                  │
│ Node #    : 1                                                            │
│ Directory : ftn\                                                         │
│ Settings  : [Enter to Edit]                                              │
│ Addresses : [Enter to Edit]                                              │
└──────────────────────────────────────────────────────────────────────────┘
```

### Setup using ATTACH style

These are the default settings for all nodes in this network.  Here is an
example of using D'Bridge as the FTN mailer.  The inbound and outbound
directories map to those in D'Bridge.  The temp directories are relative
to the network directory defined on the previous screen.

Note: When using ATTACH, only using D'bridge has been tested.

```
┌──────────────────────────────────────────────────────── Network Settings ┐
│ FTN Address  : 11:1/211                                                  │
│ Inbound Dir  : C:\db\inbound\                                            │
│ Temp In Dir  : temp\                                                     │
│ Temp Out Dir : temp\                                                     │
│ Outbound Dir : C:\db\outbound\                                           │
│ NetMail Dir  : C:\db\messages\                                           │
│ BadPacket Dir: badpackets\                                               │
│ Mailer       : NetMail (ATTACH)         Max Arc Size : 0                 │
│ Transport    : Directory                Max Pkt Size : 0                 │
│ Packet Type  : FSC-0039 Type 2+         Bundle Status: Immediate         │
│ Compression  : ZIP                                                       │
│ Packet PW    : PASSWORD                                                  │
│ AreaFix PW   : PASSWORD                                                  │
└──────────────────────────────────────────────────────────────────────────┘
```

One the Addresses page, you can select the address from the list.  You may
also press A to add an address or D to delete an address.

Example:

```
┌──── Select Address ┐
│ 11:1/100           │
└────────────────────┘
```

Here's where you need to set the compression type if needed.  Only ZIP or
ARC is currently supported.  Also if you use compression, please delete
your ```data/archivers.dat``` file once so that the commandline for unzip
will be updated to include the ```-j``` option (or just add that in yourself).

The packet password is what you and your uplink have defined.  It should be
all upper case.

Routing in FTN now works, uou need to define a route string for nodes
  in the address list in wwivconfig for the network.  The format is space
  separated list of routes.  A route is a partial address ending in *
  as a wildcard. Optionally starting with ! to be a negative match.
  Example "11:* !11:2/*" would match everything in zone 11, except
  for everything in net 11:2/*.

** NOTE: AreaFix isn't implemented yet. Neither is the max size fields.

Example:
```
┌─────────────────────────────────────────────────────── Address: 11:1/100 ┐
│ Routes       : 11:*                                                      │
│ Packet Type  : FSC-0039 Type 2+                                          │
│ Compression  : ZIP                                                       │
│ Packet PW    : PASSWORD                                                  │
│ AreaFix PW   : PASSWORD                                                  │
│ Max Arc Size : 0                                                         │
│ Max Pkt Size : 0                                                         │
│ Bundle Status: Normal                                                    │
└──────────────────────────────────────────────────────────────────────────┘
```

## Adding FTN Subs

You add subs normally.  To enable it for networking, use (J) from BoardEdit to add a network.
Add the FTN network as your would any other.  Instead of a WWIVnet subtype, you will
add it using the ECHOTAG.  You will need to manually create a file called nECHOTAG.net
(where ECHOTAG is the echo tag for the networked message area) in your network directory.
This file contains all of the fidonet addresses to export this message area to. 

If your uplink is 11:1/100 and your ECHOTAG is ```WWIV_TEST``` then your file
will be named ```nWWIV_TEST.net``` and will contain the follow line:


```
11:1/100
```

Please note that on case sensitive file systems, the echo tag is all uppercase, but the
```n``` prefix and ```.net``` suffix is lower case.

## Sending FTN NetMail

FTN Netmail works much like WWIVnet netmail. The difference is addressing. The format
(right now, this will change to become easier) is:

```
Username (zone:net/node) @32765
```

If you have more than 1 FTN network, you'll need to select the network from the list.

## Command Line Tools

WWIV networking has the following command line tools:


| command | description |
| ------- | ----------- |
| network1 | moves mail from p*.net to local.net or s*.net |
| network2 | moves mail from local.net into wwiv's message bases |
| network3 | creates bbsdata.* and checks network consistency |
| networkb | WWIVnet binkp tool (like binkd, but only for WWIVnet |
| networkc | Cleanup tool, runs network{1-3} as needed. |
| networkf | WWIV FTN tool, imports mail from FTN bundles to s32675.net or exports s32765.net to FTN bundles. |


## Current Status

FTN support is still in experimental status, however it's being nominally used on several systems.  Here's the most recent known state.

### What works?

* Directory transport (i.e. copy the bundle into a directory).
* ATTACH mailer (tested with D'Bridge) (i.e. create \*.MSG file in the netmail dir as a file attach).
* FLO mailer support (tested with NetworkB and IREX)
* Using NetworkB to call out to MysticBBS's MIS
* Using NetworkB to call out to BinkD (D'Bridge)


### What may work

* ARC compression support (not tested, only tested with ZIP)

### What doesn't work

* AreaFix
* Compression other than ZIP or ARC
* max packet sizes
* Multiple packets per bundle (we make 1 bundle per packet)
* 5d Addressing
* Packet type other than 2+

### What did we test with

* D'Bridge
* MysticBBS's MIS
* Manually copying packets to MysticBBS

## Other Known FTNs with URLs
* [AdventureNet](http://www.kofobbs.dk/adventurenet/)  
* [AgoraNet](http://time.synchro.net:81/l10l.ssjs)  
* [AmigaNet]()  
* [fsxNet](http://bbs.nz/#fsxNet)
* [JustaXNet](http://www.justaxnet.com/)  
* [LinuxNet](http://www.kofobbs.dk/linuxnet/)  
* [MicroNet](http://outpostbbs.net/micronet.html) 
* [Pascal-Net](http://www.pascalnet.org)  
* SportNet  
* [SysOp Tech Net](http://www.sysoptech.net)  
* WhispNet  

# Other Links
http://www.bbscorner.com/bbsnetworks/  
http://www.net229.org/dbridge.htm  
