#Usenet
***

This setup guide assumes that you already have a WWIVNet style network
configured as your network 0. The steps below will reference the Usenet node as 1, or the second network.
Change this number as required to work with your BBS.

## Prerequisites
* Create a new folder for your Usenet files: \wwiv\networks\usenet
* WINS (bundeled with the the release version of WWIV 5.00)
* If you do not have a WWIVnet style network already configured, you will also need net37 or newer.

## Create your new network
* Run INIT and select N. Network Configuration
* Insert a new WWIVnet network and provide the name, node number and path:
```
 Net Type  : WWIVnet                                                      
 Net Name  : Usenet                                                    
 Node #    : 1                                                            
 Directory : C:\WWIV\NETWORKS\USENET\   
```
* Esc - Exit and quit INIT

## Create and configure the Network Files
* Create \wwiv\networks\usenet\address.net
```
@1 sysopname@your.com
```
* Create \wwiv\networks\usenet\BBSLIST.NET add your node @1 and the virtual Internet node @32767. 
```
@1     &    *123-555-INET #57600      |!    [     ]  "Your BBS Name"
@32767      *123-555-NEWS #57600       !    [     ]  "Usenet Internet Gateway"
```
* Create \wwiv\networks\usenet\bbslist.1 and add your node @1 and the virtual node 99
```
:
1
99
```
* Create \wwiv\networks\usenet\bbslist.99 and add the following:
```
@32767      *707-585-NEWS   #57600        $!|      [     ]  "Internet Gateway"
```
* Create \wwiv\networks\usenet\callout.1
```
@1  &&
```
* Create \wwiv\networks\usenet\callout.99
```
@32767  &&
```
* Create \wwiv\networks\usenet\callout.net
```
@32767  &&
```
* Create \wwiv\networks\usenet\connect.99
```
@1 32767
@32767 1 
```
* Create \wwiv\networks\usenet\connect.net
```
@1     32767=0.0
@32767     1=0.0
```
## Configure the Usenet Newsgroup Subcriptions
* Create \wwiv\networks\usenet\NEWS.RC (this will hold your newsgroup subscriptions)
* Create \wwiv\networks\usenet\NEWSRC (this will contain a list of all newsgroups available on your providers server)
* Edit \wwiv\networks\usenet\NEWS.RC In this file you will be listing every record in the following format:
[newsgroup name] [high message number] [subtype] 
```
newsrc
alt.bbs.wwiv    12456    altbbsw
```
The ```newsrc``` line will force the population of the NEWSRC file. This line will be removed after the initial population of the NEWSRC file.

## Create your Usenet SUBS in BoardEdit

```
A) Name       : alt.bbs.wwiv
B) Filename   : ALTBBSW
C) Key        : None.
D) Read SL    : 10
E) Post SL    : 20
F) Anony      : No
G) Min. Age   : 0
H) Max Msgs   : 50
I) AR         : None.
J) Net info   :
      Network      Type    Host    Scrb   Flags
   a) Usenet      ALTBBSW <HERE>  0      Auto-Req Auto-Info(1)
K) Storage typ: 2
L) Val network: No
M) Req ANSI   : No
N) Disable tag: No
O) Description: None.     
```

## Subscribe the virtual node 32767 to the sub by editing the nALTBBSW.net file generated when you created the SUB.
* Edit c:\wwiv\networks\usenet\nALTBBSW.net
```
32767
```
##  Verify with network3
* From a command prompt run the following command:
``` c:\wwiv\NETWORK3 .0 Y ``` 
and then 
``` NETWORK2 ```

This will generate a network status message and process it for you via email 
to the SysOp. Login your BBS and read your email. Assuming that there are no errors, you should 
see something like this:

```
Msg:  [1/1] E-Mail
Subj: Usenet Analysis as of 01/26/16
Name: Usenet @1
Date: Tue Jan 26 20:00:04 2016

RE: net38b6 analysis from system @1:

Network Coordinator is @1
Group Coordinator is @1
Area Coordinator is @1

Using bias of 0.00100 $/k/hop.

1 system is 1 hop away.
1 systems total, average  1.00 hops.
1 system routes through @32767.

Everything is fine.
(418k free for analysis)
(0 seconds for analysis)

Usenet

Mail {QSRIDAF?-+GEMZPVUOLCNY@} :
```
If there are errors, you will have to address them before proceeding. Check to 
see that you have not mistyped anything in the above files BBSLIST.NET, 
CALLOUT.NET and CONNECT.NET. Once you are clear, you may proceed.

## Configure c:\wwiv\net.ini 

Edit the sample_net.ini and save it as net.ini if you do not already have net.ini

Required sections are as follows (uncomment and edit as appropriate): 

``` 
[NETWORK] 
primenet = WWIVNET 
POPNAME = [your alias] ; used as your display name on NNTP posts

[NETWORK1]
primenet-USENET

[GENERAL]
DOMAIN=[your domain.com] ; used with POPNAME to create you@your.com email address for NNTP

[NEWS]
NEWSHOST=[IP address of NNTP server] ; FQDN may work here but I've found best results with IP
NEWSNAME=[Your NNTP username]
NEWSPASS=[Your NNTP password]
```
*The following items are optional but recommended*
```
REALNAME = Y 
SPAMADDRESS = YourFake Email@some.com.remove.com
REPLYTO = Your email@your.com.remove.com
SIGNATURE = C:\WWIV\GFILES\INTERNET.TAG
XPOSTS = 5
NEWSRC_UPD = Y
```

###Create a news toss batch file
* Create c:\wwiv\usenet-toss.bat (You can name this anything you like)
```
CALL NETWORK /N32767 .1
CALL NETWORK1
CALL NETWORK2
CALL BBS.EXE /N1 /E
```
Of course yours may look a little different. I use node 1 for maintenance, hence the /N1 on the bottom line.
NETWORK1 and NETWORK2 are optional but I like using them to unpack and handle the incoming messages. 

Now, when your usenet-toss.bat runs, you should see the news.exe portion 
connect to the newsgroups and start downloading messages.

## Gate to WWIVnet (TODO)

### Troubleshooting (TODO)

## Common issues:
* NEWSRC may not populate fully the first few tosses.
* Typo's (Typically my land-mines)
* 



