#Usenet
***

###Notes 
This quick guide was originally published on Facebook.
[Quick & Dirty Newsgroups using WINS](https://www.facebook.com/notes/wwiv-bbs-software-help-dev-documentation/quick-dirty-newsgroups-using-wins/852450728099932)
```
Quick & Dirty Newsgroups using WINS
By Jim on Wednesday, August 20, 2014 at 3:19pm
Quick & Easy Usenet configuration for WWIV using WINS 10 or newer
 
Compiled 08/20/2014 by Jimmy Mac 1@707 WWIVnet
 
 
Most of my information was gathered from old PPPProject FAQ’s
 
First, the important stuff:
It is assumed that you already have Net37 configured and are connected to a network like WWIVnet
 
You need to have access to a news server. With your login info in hand, edit your net.ini file
(Packaged with WINS as sample.ini)
 
Open net.ini and find the section [NEWS]
 
; Information needed by NEWS and other programs.
;
[NEWS]
;
; Your news host where your authorized to retrieve newsgroup articles. Multiple
; servers can be defined as indicated below.
NEWSHOST = news.this.com
;NEWSHOST0 = news.that.com 
;NEWSHOST1 = msnews.microsoft.com
;
; Authentication information for news servers.  Do NOT uncomment these lines
; unless you're sure your ISP requires it.  (Most don't.)
; Again, this may correspond to the multiple servers defined above.
NEWSNAME = myname
;NEWSNAME0 = newsname
;NEWSNAME1 = newsname
;
; Associated password for news host login, again corresponding to NEWSHOST.
NEWSPASS = password
;NEWSPASS0 = newspassword
;NEWSPASS1 = newspassword
;
; Account to send inbound mail which isn't addressed to a specific user.
POSTMASTER = 1
;
; Use WWIV real name (USER.LST) instead of the alias on outbound mail.
REALNAME = Y
;
; Use a fake name on newsgroup posts to prevent getting unsolicited mail.
SPAMCONTROL = Y
;
; User-defined fake name when SPAMCONTROL=Y (must have an '@' and a '.').
SPAMADDRESS = iamnot@this.org
;
; User-defined fake name when SPAMCONTROL=Y (must have an '@' and a '.').
REPLYTO = myacct@NOSPAM.your.com (remove NOSPAM)
;
; Signature file to append to newsgroup posts and Internet mail (ASCII only!)
SIGNATURE = D:\WWIV\GFILES\INTERNET.TAG
;
; Maximum number of cross-posts before discarding a newsgroup article as spam.
XPOSTS = 5
;
; Bypass crosspost check on binary newsgroups?  If 'Y' does *not* check the
; number of crossposts.
BINXPOST = Y
;
; Update the NEWSRC (newsgroups listing) from your provider on each connect?
; If 'Y', the NEWGROUPS command is issued each day and a complete listing is
; retrieved the first of each month.
NEWSRC_UPD = Y
;
; Operate in "stealth" mode with streamlined display, no display of subjects,
; etc.  Useful to prevent prying eyes from seeing what's being retrieved.
QUIET = N
;
; Mailing List Section - used to define internet mailing lists that are to
; be retrieved into a message base rather than EMAIL.
;
[MAILLIST]
;
; Issue mailing lists in "digest" mode, where posts are collected during the
; day and sent as a single, large message the subsequent day.  This will be
; further enhanced in the future.
DIGEST = N
;
; Add the subscribed mailing lists in the following format:
; email_name  *subtype  (NOTE: Asterisk is required on subtype!)
my_listserv@domain.com *1000
[END]
 
 
Now, with your net.ini file updated, it's time to configure your newsgroups:
 
In BOARDEDIT (//BE), insert your new newsgroup: For this example, we are adding the Usenet
newsgroup alt.bbs.doors
 
A) Name    : alt.bbs.doors
B) Filename    : ALTBBSD 
C) Key        : Hotkey for the group
D) Read SL    : In case you want to restrict who can read the group
E) POST SL    : In case you want to restrict who can post to the group
F) Anony    : [Y/N]
G) Min. Age    : Yes, there are still Adult themed groups out there.
H) Max Msgs    : [default 50 - I use 5000]
I) AR        : Account Restrictions
J) Net info    : Not networked (yet)
K) Storage typ    : 2
L) Val network    : No
M) Req ANSI    : No and not recommended for Usenet.
N) Disable tag    : No
O) Description     : A brief description of the newsgroup
 
With your newsgroup created, it is time to modify J) Net info:
 
Select J and for "What sub type" give it an easy to recognize name. For this example I'm
using ALTBBSD.
 
What sub type: ALTBBSD
Will you be hosting the sub? : Y
Allow auto add/drop requests : [Y/N]
(If you selected [Y])
make this sub public (in subs.lst) [Y/N]
(If you selected [Y] above, select the appropriate sub category [17]
Which category is this sub in (0 for unknown/misc) : 17 (internet Newsgroups)
and you're done with adding the sub.
 
Next, you need to get fancy with some network data files. In your bbs\data\[primenet] folder,
find the file that was automatically created during the sub creation named nALTBBSD.net and
open it with a text editor. The file will be blank so on the very first line, enter 32767 and
save and close the file.
 
Now, assuming that you are already connected to a Net, there will be some files to edit;
 
[random number] is typically a date/timestamp but I don't ever see it change.
 
BBSLIST.0
---
~[random number]
:A
1
99 
---
 
Using a text editor, create BBSLIST.99
 
BBSLIST.99
---
~0
@32767      *707-585-NEWS #57600        !      [     ]  "My BBS's Internet Gateway"
---
 
You can change the phone number above to whatever area code and prefix you wish.
the [     ] can be for your WWIV reg # if you have one.
 
If you have a connect.0 and connect.1 file, you will need to add 32767.
 
Since both files are identical on my system, I will show you a single example:
 
CONNECT.0 & CONNECT.1
---
~[random number]
@1 2 3 (connected node numbers...) 32767
@2 1
@3 1
(@more nodes 1)
@32767 1
---
 
Now, create a text file called CONNECT.99
 
CONNECT.99
---
@your_node#    32767
@32767   your_node#
---
 
Whenever I have to change a BBSLIST.x, CALLOUT.x or CONNECT.x file, I run the following commands
from my BBS directory:
 
network3 .0 Y
network2     
 
This will generate a network status message and process it for you via email to the SysOp
 
Assuming that there are no errors, you should see something like this:
---
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
---
 
If there are errors, you will have to address them before proceeding. Check to see that you have
not mistyped anything in the above files BBSLIST.x, CALLOUT.x and CONNECT.x.
 
Once you are clear, you may proceed
 
Next, create two text files, news.rc and newsrc (no ext)
 
In news.rc, you will be adding the newsgroups you wish to include as subs in the following
format: [newsgroup name] [high message number] [subtype] (from the first steps)
 
news.rc
---
alt.bbs.doors 25849 ALTBBSD
---
 
Best to check on your newsgroup server to determine what the current high message number is or
you may find your BBS trying to download 10 years of news. It really won't like that.
 
 
For the next file, newsrc, there are two options. First is to have it auto populate buy inserting
a line above the newsgroup line in news.rc with [newsrc]
 
news.rc
---
newsrc
alt.bbs.doors 25849 ALTBBSD
---
 
This will force a refresh of the newsrc file and populate the file with a list of available
newsgroups on the server. This will be a LOT of data so it's actually best to gather this
information using a news reader that can create the file for you. I used XNews.
 
Now, when you execute your mail.bat file, you should see the news.exe portion connect to the
newsgroups and start downloading messages.
 
 
This is a draft version of this document and may contain errors. Please feel free to contact me should you experience any issues or find any errors.
 
jim 1@707.WWIVnet
```
