#Usenet
***

## Prerequisites
This entire process will assume you are already on WWIVNet. So, 
[setup WWIVNet](wwivnet) first. We will walk you through subscribing
to alt.bbs.wwiv as an example. This assumes your Usenet Provider 
carries this group. You can replace alt.bbs.wwiv with your favorite 
news group. Some of the steps will have to repeat for every newsgroup 
you will to subscribe.

## Add the group to your BBS
* Using Board Edit (B from WFC or //BE form the BBS Main Menu), Insert 
a new group wherever you wish in your list.
* Edit the name to match the group name, and any of the other values as to your preferences.
* Edit the (J) Net Info and add it to WWIVNet
* Set the sub type to ALTBBSW
* Now you have choices. 

**Local Group Only on your BBS**  
If you only want the group to be local on your BBS answer YES to hosting the sub and NO to allowing add\drops and making the sub public on subs.lst. Your config will look like this:
```
A) Name       : alt.bbs.wwiv
B) Filename   : UABWWIV
C) Key        : None.
D) Read SL    : 10
E) Post SL    : 20
F) Anony      : No
G) Min. Age   : 0
H) Max Msgs   : 50
I) AR         : None.
J) Net info   :
      Network      Type    Host    Scrb   Flags
   a) WWIVNet      ALTBBSW <HERE>  0
K) Storage typ: 2
L) Val network: No
M) Req ANSI   : No
N) Disable tag: No
O) Description: None.
                                                                      
```

**Share the Group on WWIVNet**  
If you want to host the group locally and share it with the net, then answer Yes 
to hosting the group, to "Allow auto add/drop requests" and to "Make this sub 
public (in subs.lst)" and select a sub category for the group. Others on 
WWIVNet will be able to join this sub and you will be the gateway to 
Usenet for this group. Your configuration will look like this:
```
A) Name       : alt.bbs.wwiv
B) Filename   : UABWWIV
C) Key        : None.
D) Read SL    : 10
E) Post SL    : 20
F) Anony      : No
G) Min. Age   : 0
H) Max Msgs   : 50
I) AR         : None.
J) Net info   :
      Network      Type    Host    Scrb   Flags
   a) WWIVNet      ALTBBSW <HERE>  0      Auto-Req Auto-Info(1)
K) Storage typ: 2
L) Val network: No
M) Req ANSI   : No
N) Disable tag: No
O) Description: None.                                                   
```

## Configure the Network Files
* Edit \wwiv\networks\wwivnet\BBSLIST.NET add a line at the end for @32767if it does not already exist 
```
@32767     *707-585-NEWS #57600      !    [     ]  "WWIVNET Internet Gateway"
```
**Note** these entries might be here already:
* Edit \wwiv\networks\wwivnet\CONNECT.NET and make sure that 32767 is not listed on the first time.
* Then add ``` @32767 = 0:00 ``` to the right of your node number such that it looks something like this: ``` @707   1=0.0 32767=0.00 ``` 
* Edit \wwiv\networks\wwivnet\CALLOUT.NET file to add the following line at the bottom ``` @32767  & ```
* Now verify you didn't enter anything incorrectly by running ``` NETWORK3 .0 Y ``` and then ``` NETWORK2 ```

This will generate a network status message and process it for you via email 
to the SysOp. Login your BBS and read your email. Assuming that there are no errors, you should 
see something like this:

```
Subj: WWIVNet Analysis as of 09/07/15
Name: WWIVNet @206
Date: Mon Sep 07 18:55:06 2015
RE: net38b3 analysis from system @206:

                  << WWIV ANSI ART HERE >>>

          The Offical Network of WWIV BBS Software

Network Coordinator is @1
Group Coordinator is @1
Area Coordinator is @1
 
2 systems are 1 hop away.
18 systems are 2 hops away.
 
20 systems total, average  1.90 hops.
 
19 systems route through @1.
1 system routes through @32767.
 
Everything is fine.
(490k free for analysis)
(0 seconds for analysis)       
```
If there are errors, you will have to address them before proceeding. Check to 
see that you have not mistyped anything in the above files BBSLIST.NET, 
CALLOUT.NET and CONNECT.NET. Once you are clear, you may proceed.

## Configure c:\wwiv\net.ini 

Edit the sample_net.ini and saving it as net.ini if you do not already have net.ini

Required sections are as follows (uncomment and edit as appropriate): 

``` 
[NETWORK] 
primenet = WWIVNET 
POPNAME = [your alias] ; used as your display name on NNTP posts

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

## Configure the Usenet Newsgroup Subcriptions

* create a text file ```\wwiv\networks\wwivnet\NEWS.RC``` In this file you will be listing every file in the following format:  
```[newsgroup name] [high message number] [subtype]```  
  
**[newsgroup name]** - Use the dotted name of the group. ex: alt.bbs.wwiv  
**[high message number]** - The message # from which you will download. You want to check what this is
on your Usenet provider, you don't want to end up downloading 10 years worth of postings.  
**[subtype]** - The SUBTYPE of the group will be what you enter for SUBTYPE when you add this group
to WWIV in BoardEdit. This has a limit of 7 Characters.  

For example:
```
alt.bbs.wwiv    12456    altbbsw
```

* Generate NEWSRC: This file will contain a list of every group available from your Usenet Provider. 
To populate this list there are two options:  

**Auto-Generate NEWSRC**  
To have the group list created and populated the next time network mail is processed, add 
a ```newsrc``` line above the newsgroup lists in news.rc, example: 
```
\wwiv\nets\wwivnet\news.rc

    newsrc
    alt.bbs.doors 25849 ALTBBSW
```
This will instruct NEWS.EXE to create NEWSRC if it does not already exist and download the list of every available newsgroups on the server. This will be a LOT of data so some people prefer to do this manually.

**Manually Populate NEWSRC**  
Using an NNTP client download the list of newsgroups available from your Usenet Provider.
Save this list of newsgroups as \wwiv\networks\wwivnet\newsrc.

**Verify the creation of the appropriate network file \wwiv\networks\wwivnet\n[subtype].net**
There may be a bug that omits the host 32767, if so you will need to manually add the host.
You may need to do this for each USENET group you add to your system
```
\wwiv\networks\wwivnet\nALTBBSW.net

32767
```
As other SysOps subscribe to the subs, you will begin to see them appear in these n[subtype].net files:
```
\wwiv\networks\wwivnet\nALTBBSW.net

1
708
255
32767
```

###MAIL.BAT

Now, when your mail.bat runs, you should see the news.exe portion 
connect to the newsgroups and start downloading messages.

***
