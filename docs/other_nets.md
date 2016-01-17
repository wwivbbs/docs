# Other Nets
***
A Net is a federation of BBSes which share content in Subs so messages or files posted on 
one BBS are replicated to the others. 

There are WWIVNet based Nets and FidoNet based nets. For the purpose of this this page that 
refers not the instances of the Nets themselves (which can the same names), but to the 
underlying technology they use and the many instances of Nets that use those formats. (Yeah, 
it's a little confusing). :-)

## WWIVNet Based Networks
### [WWIVNet](WWIVNet.md)


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

### Connecting WWIV to an FTN

You will need two pieces of software to joining Fidonet. One is generally called a Front Door, Front-End or Mailer. This is the FidoNet compatible software you will read about in the Policy doc. BTW, the docs only talk about dial-up, but they also connect over the internet. These Front-Ends handle the connections and file transfers between your WWIV BBS and the other BBSes to which it connects.

The other piece of software you will need is a Mail Tosser. These mail tosser converts the FidoNet messages into a format compatible with the given BBS's particular email and message sub format. The mail tosser we use with WWIV 5.0 is WWIVToss. Your front-end and your tosser need to be compatible with each other.

#### Front End
**D'Bridge Front End**  
WWIV SysOps have other options, but they choose D'Bridge.

* Download the [D'Bridge Standard Edition](http://www.net229.org/dbridge.htm)
* Also get the latest [FidoNet Nodelist from FileGate](http://www.filegate.net/nodelist/)
* D'Bridge has really good documentation and is still actively maintained. I will only call out things of note, you will follow their instructions for everything else. [D'Bridge Documentation](http://www.net229.org/DBRIDGE.TXT)
* As you will read in Section 1 of the docs, D'Bridge has many components which serve different functions. For a basic WWIV Fidonet setup you only need concern yourself with the Basic Email Setup, Basic Echomail (Fidonet for SUBs) Setup and BINKD Protocol setup.

**BEFORE YOU START - What's Your Node Number**  
When you combine what you learned reading the Fido Policy doc with the D'Bridge instructions its not crystal clear what you should put in for your Fido/FTN Address, your Uplinks Fido/FTN Address and their BINKD address. You need to know those things to complete D'Bridge Installation. This is one approach to dealing with that:

* You need to figure out what Fidonet Region you are in and if there is an existing NET which covers your area and contact the Net Coordinator OR the Regional Coordinator. 
* For Zone 1 (US & Canada), you can use [FidoNet.us](http://www.fidonet.us/zone1.html) to determine your Region.
* If your lucky, your region will have an active web site with helpful instructions(many do not). If not, you need to unzip the Nodelist file you downloaded earlier and open the enclosed file with any text editor. 
* Now search for ```Region,X``` (x = your region number). On that line will be the Name and list of States\Providences which make up the Region, along with the Name of your Regional Coordinator
* Look at the sections below the "Region" which start with HOST. Those are NETs. If you see city names that match yours then you are in that Net. Using that HOST #, And the IBN for that Host row, you will able to fill in the information requested during DB's Setup and config. You will use 1:HOST#/0 as your Uplink Node, their IBN as the BINKD address and 1:HOST#/9999 as Your address.
* If you DON'T see a HOST with nodes listed in your city or nearby, then you contact the Regional Coordinator instead Use 1:REGION#/0 for your Uplink, their IBN as the BINKD Address and 1:REGION#/9999 as your address.
* Now run the DB3 installation and follow the steps.

#### WWIVTOSS
The latest version of WWIVToss can be downloaded from [The Weather Station WWIVNet @11](http://www.weather-station.org/wwiv/).  

**TODO:** Add the setup info if needed, or update the WWIVToss Docs.

## Other Known FTNs with URLs
[AdventureNet](http://www.kofobbs.dk/adventurenet/)  
[AgoraNet](http://time.synchro.net:81/l10l.ssjs)  
[AmigaNet]()  
[JustaXNet](http://www.justaxnet.com/)  
[LinuxNet](http://www.kofobbs.dk/linuxnet/)  
[MicroNet](http://outpostbbs.net/micronet.html) 
[Pascal-Net](http://www.pascalnet.org)  
SportNet  
[SysOp Tech Net](http://www.sysoptech.net)  
WhispNet  

# Notes
http://www.bbscorner.com/bbsnetworks/  
http://www.net229.org/dbridge.htm  

```
P> SO... if you use the .MSG version of D'Bridge, do you need to set your
P> WWIV Subs to have the multi-file storage type? OR, will WWIVTOss stuff
P> them into the .DAT file?

Actually, it is much easier than that unless you wanted to run a D'Bridge hub
instance.

To get up and running, you disable the D'Bridge message processing completely.
D'Bridge will receive the packet as a *.pkt file from your uplink.  It will sit
in the INBOUND directory once received.

With D'Bridge message processing / tossing disabled, it will just stay there
and do nothing with the packet.  You then run WWIVTOSS /I /O to take the file
from the INBOUND directory and toss it to your BBS.  Then run the NETWORK
software after that to move it into the proper subs.

WWIVTOSS will write directly to the message areas if you set it up that way and
I believe that also works.

D'Bridge is just the mechanism to receive the *.PKT files and to sent the *.PKT
files from your BBS.  It does not tossing in this type of setup.

I run two instances - one as a hub, which does toss.  It then sends to my
D'Bridge BBS instance - which doesn't toss and lets packets sit for WWIVTOSS
processing

-Mark
```
