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
WWIVNet will be able to join this sub like and other and you will be the gateway to 
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
* Edit \wwiv\nets\wwivnet\BBSLIST.0 add a line at the end "99"
```
~714114005
:A
1
99
```
* Create \wwiv\nets\wwivnet\BBSLIST.99 and insert the following text:  
The Phone number can be anything you wish  
The [] is for your WWIV Registration number if you have one (optional)
```
~0
@32767      *707-585-NEWS #57600      !     [    ]  "My BBS's Internet Gateway"
```
**Note** these entries might be here already:
* Edit \wwiv\nets\wwivnet\CONNECT.0 and add 32767 to the end of the first time.
* Also add ```@32767 1``` as the last time.
* Now verify you didn't enter anything incorrectly by running ```NETWORK3 .0 Y``` and then ```NETWORK2```

This will generate a network status message and process it for you via email 
to the SysOp. Login your BBS and read you email. Assuming that there are no errors, you should 
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
see that you have not mistyped anything in the above files BBSLIST.x, 
CALLOUT.x and CONNECT.x. Once you are clear, you may proceed.

## Configure the Usenet Newsgroup Subcriptions

* create a text file ```\wwiv\nets\wwivnet\NEWS.RC``` In this file you will be listing every file in the following format:  
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

* create a text file \wwiv\nets\wwivnet\NEWSRC (yes, no extension) This file will contain
the list of every group available from your Usenet Provider. To populate this list there 
are two options:  

**Auto-Download NEWSRC**  
To have the group list download and populated the next time network mail is processed, add 
a ```newsrc``` line above the newsgroup lists in news.rc, example: 
```
\wwiv\nets\wwivnet\news.rc

    newsrc
    alt.bbs.doors 25849 ALTBBSW
```
This will force NEWS.EXE to download the list of every available newsgroups on the 
server. This will be a LOT of data so some people prefer to do this manually.

**Manually Populate NEWSRC**  
Using an NNTP client download the list of newsgroups available from your Usenet Provider.
Put this list of newsgroups into \wwiv\nets\wwivnet\newsrc.

**Verify the creation of the appropriate network file \wwiv\nets\wwivnet\n[SUBTYPE].net
There may be a bug that omits the host 32767, if so you will need to manually add the host.
You may need to do this for each USENET group you add to your system
```
\wwiv\nets\wwivnet\nALTBBSW.net

32767
```

###MAIL.BAT
TODO: Are there any additional lines to add to MAIL.BAT?

Now, when you execute your mail.bat file, you should see the news.exe portion 
connect to the newsgroups and start downloading messages.

***
####Credit
This quick guide was originally published on Facebook:
[Quick & Dirty Newsgroups using WINS](https://www.facebook.com/notes/wwiv-bbs-software-help-dev-documentation/quick-dirty-newsgroups-using-wins/852450728099932) by jim 1@707.WWIVnet