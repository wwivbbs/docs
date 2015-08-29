# Other Nets
***
A Net is a federation of BBSes which share content in Subs so messages or files posted on 
one BBS are replicated to the others. 

There are WWIVNet based Nets and FidoNet based nets. For the purpose of this this page that 
refers not the instances of the Nets themselves (which can the same names), but to the 
underlying technology they use and the many instances of Nets that use those formats. (Yeah, 
it's a little confusing). :-)

## WWIVNet Based Networks
### [WWIVNet](wwivnet)
### FileNet


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
**[D'Bridge EMAIL System](http://www.net229.org/dbridge.htm)**  

**NOTE:** This part is a work in progress. I need to vet which front-ends the team recommends.  

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