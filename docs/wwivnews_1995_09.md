```

	       ڿڿڿڿڿڿۄńĿڿ  ڿۄߠڿۄńĿڿڿڿۄńĿ
 ʍ΍΍΍΍΍΍ӳӳӳӳӳӳDࠚřӳ  ӳӠ?ӳԚńřӳӳӳԚńř΍΍΍΍΍΍ͻ
 ڠVolume 6    ӳӳӳӳӳӳ  ӳ  EࠚƙӠ YӳDń߳ӳӳӳDńߠ Sep-Oct    ڍ
 ڠIssue 3     ӳӳӳӳӳӳ  ӳ   ӳӳ Ԛߠ ӳۄńٳӳӳԀńĿӠ   1995     ڍ
 ɍ΍΍΍΍΍΍ԀڀٳԀڀٳۄڀĿ Eƙ ӳ? ӳDń߳YYԚńřԍ΍΍΍΍΍΍܍
	   Ӡ  DńřDńřDńř  Y  Y Dڀńńڀńńڀńń٠  Ӎ
	   ӠServing WWIV Sysops & Users Across All WWIV Networks Ӎ
	   Dńńńńńńńńńńńńńńńńńńńńńńńńńńř


			 ۄńńńńńńńńńńߍ
			 Ԕhis Issue's FeaturesӍ
ۄńńńńńńńńńńńŁńńńńńńńńńńŁńńńńńńńńńńńńńńߍ
ӠRandom Factors.......................................Wayne Bell (1@1)     Ӎ
Ӡ                                                                          Ӎ
ӠSoft Servings:  News from WWIV Software Services.....Filo (1@4000),       Ӎ
Ӡ                                                     Random (1@1),	    Ӎ
Ӊ			                with input this month from  Ӎ
Ӊ					    Emerald Lady (1@9201    Ӎ
Ӡ                                                                          Ӎ
ӠThe GC's Corner:  Notes from the Group Coordinators..A Compilation        Ӎ
Ӡ                                                                          Ӎ
ӠTips For Running WWIV Under Windows 3.1x.............Enchantress (1@1625) Ӎ
Ӡ                                                     Laffin (84@1625)     Ӎ
Ӡ                                                                          Ӎ
ӠTips For Running WWIV Under Windows 95...............Bull Ship (1@11132)  Ӎ
Ӡ                                                                          Ӎ
ӠUnderstanding Viruses................................Sam (1@4051)         Ӎ
Ӊ								    Ӎ
ӠType 2/0 Forum.......................................Edited by            Ӎ
Ӡ                                                     Sam (1@4051)         Ӎ
Ӡ                                                                          Ӎ
ӠFilo's Mod of the Month..............................Filo (1@4000)        Ӎ
Ӡ                                                                          Ӎ
ӠAdult File Areas and the Bill that Wasn't............Sam (1@4051)         Ӎ
Ӡ                                                                          Ӎ
ӠDear Abby............................................Abby                 Ӎ
Ӡ                                                                          Ӎ
ӠDemographics!  Who are you?..........................Sam (1@4051)         Ӎ
Ӡ                                                                          Ӎ
ӠClassified Ads.......................................A Compilation        Ӎ
Ӡ                                                                          Ӎ
ӠOn the Lighter Side..................................Sam (1@4051)         Ӎ
Ӡ                                                                          Ӎ
ӠWhat If Operating Systems Ran Airlines?..............Sam (1@4051)         Ӎ
Ӡ                                                                          Ӎ
ӠClosing Thoughts.....................................Sam (1@4051)         Ӎ
Dńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńٍ


ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ              Random Factors                Ӎ
	       Ӡ  Creative Commentary by Wayne Bell (1@1)   Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

I finally have v4.24a finalized!  It will probably be out (and you'll probably
already have a copy) by the time you read this.  v4.24a contains only bug
fixes, not new features.

That means ... it's time to start on v4.25.  No, I don't have any clue when it
might be out, but it certainly won't be this year.  I've already received a
bunch of mods from people for potential inclusion, and now I can start
actually looking at them...

You may note (if you care) that the connect.0 file is FINALLY sorted. Ever
since the Great Node Renumbering, it's been in pretty random order, but I
finally bit the bullet and wrote out some code to sort it all.

Note also that the NetUp registration price has been dropped from $300 to
$100, for those who run their own networks.  If you're interested, and didn't
see the post about it on the WWIV Software Services Info sub (type WSS, host
@4000), email me and ask for the "netup" form letter.

Watch for the WWIVcon/96 info to appear now and again in the WWIVnet analysis
feedback.  Many people got tired of seeing the WWIVcon/95 info continuously
for a long period, so I'll spare you with the '96 info. Hopefully, the
occasional appearance will pique your interest more.

Speaking of WWIVcon/95, hello again to those I met there.  I look forward to
meeting even more of you in '96.

With v4.24a and net35, the new gateway routing method is fully implemented.
Instead of the awkward "ICENET #1 AT 1 @4000", you can now specify
"1@1.icenet@4000".  (Of course, the old method is still supported.)  You've
probably already seen this appear on many gated subs.

The current plan for subs.* updates is that the updates will go out around the
first of the month, with pings sent out starting around a week and a half
before that.  If you want your subs listed, you do NOT have to email anyone.
Just set up the subs for "auto-info" in //boardedit, and they'll be
automatically listed in the next subs.* update.

There is also a new de1.exe available for WWIVnet (WWIVDE1.ZIP on my system).
Note that you do __NOT__ need this, if your current de1.exe is working.  Some
people have been having problems with the somewhat older de1.exe locking up
their systems (very few), and this updated version will not do that.  I have
no clue why the older version locked up, but re-compiling the same code with
BC++4.0 as opposed to BC++2.0 apparently solves the problem.  Don't ask me, I
only work here.

				   -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ               Soft Servings                Ӎ
	       Ӡ      News from WWIV Software Services      Ӎ
	       Ӡ          By Sam (WWIVnet 1@4051)           Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

		      -=��IV 4.24a is Released! ��

Here is a list of fixes/additions included in 4.24a:

  1)  "Filename" prompts mean one file, "FileSpec" means wildcards allowed.
  2)  The disable pause when shrinking option now works.
  3)  You can use the root dir on a drive for a BBS dir (data, etc), but
      you should avoid that unless the drive is SUBST or ASSIGNd.
  4)  New instance state of "GetUser" now supported.
  5)  DNM (Direct Network Mail) logons are allowed during net-only times.
  6)  New net35+ gating format (user@nodenum.netname) supported.
  7)  /A would sometimes get confused about if you have dir conferences
      or not; that is fixed.
  8)  /O with files in batch queue would log off after the xfer; now it does.
  9)  Modem initialization errors are now verbosely described,
      "(Error)...", not "(4)...".
  10) Duplicate phone number checking sometimes logged erroneous
      messages; that is fixed.
  11) G option in //UEDIT (re-enter user's birthdate) now has a confirm
      question, so you aren't forced to re-enter the info if you hit G
      accidentally.
  12) Some funny file-tagging boarder displays have been cleaned up.
  13) Some new SDS's have been added.
  14) QWK & RIP now detect user hangups correctly.
  15) Misc QWK & RIP display quirks fixed.
  16) RIP now supports the default-to-yes prompts.
  17) RIPDRIVE support has been made easier and less confusing.
  18) RIP_DIR wwiv.ini flag sets rip menu directory
  19) If remote RIP logon info gets corrupted, the caller can now enter
      it manually (as opposed to having all three logon attempts rejected
      without user intervention).


And a repeat of the release notification:

WWIV v4.24a will be officially released on Sat Sept 16th at 8am PDT.  The
shareware (pre-compiled) version will be freely distributable, but the updated
source code and the "mod" file giving the v4.24->v4.24a changes may be
distributed _ONLY_ on SDS's (to those having valid SDS access).  Updated
versions of the docs and RIPDRIVE will also be released on that date, and they
may (obviously) be freely distributed.

The ONLY people authorized to distribute the source code are:

Node #  Name                    Phone #         Modem type              State
1       Amber                   310-798-9993    28.8+HST                CA
				310-798-8283    14.4+HST
4       Caesar's Palace         805-494-3003    14.4+HST                CA
1250    The Clone Builder BBS   619-728-0541    28.8+HST    (2 lines)   CA
2100    The M&M Factory         314-861-1820    28.8+HST                MO
2610    FarPoint Station        618-235-9303    28.8+HST                IL
2720    Ko Ro Ba                813-237-0152    14.4+HST                FL
4000    The Dragon's Den        210-631-5841    28.8+HST                TX
4020    The Dragon's Den II     210-631-9417    28.8+HST                TX
4051    Sam's BBS               409-729-1319    28.8                    TX
				409-729-1418    28.8(V.fc)
4340    The Resource Center     812-877-4342    28.8+HST                IN
5150    Murphy's Law            910-649-7004    28.8                    NC
6000    The Funny Farm (East)   704-553-8090    28.8+HST                NC
6050    The Sandbox ][          704-480-0456    28.8+HST                NC
8412    Colossus                703-532-1438    14.4                    VA
11000   Maxie's Toy             209-526-5899    14.4                    CA
11314   Erana's Peace           303-755-1884    28.8+HST                CO
12170   Paragon                 716-592-5910    28.8+HST                NY
14100   The Garage              509-483-0042    14.4                    WA
20358   Permanent Vacation      514-487-7467    28.8                    QC-CAN
20750   Purgatory BBS           306-665-0274    28.8                    SAS-CAN

And in Japan (011-81):

4411    Blazing Inferno         611-733-1165    28.8+HST                Okinawa
				611-733-4807    28.8


				    -=��


   -=��IV Software Services Announces a Price Reduction for Netup! ��

Registration for NetUp (network bbslist/connect updating software) has been
re-priced, from $300, to $100.

The detailed info on netup is:

The netup software is available for purchase for use on other (WWIVnet-type)
networks for $100.

A netup registration will get you netup.exe, de?1.exe, and en?1.exe. (The ? in
the filenames are dependent upon the name of the network. They should be
renamed to just de1.exe and en1.exe before use.)  The de1.exe file should be
distributed to all nodes in the network.  The en1.exe and netup.exe programs
should only exist on the NC's system, and should not be given out.

Netup will allow you to set up, run, and maintain your network in the same way
that the WWIVnet network is.  The netup.exe program is the same program as is
used in WWIVnet for sending updates (the de1.exe and en1.exe, of course, are
different).

Before registering netup for use on a network, you should already have your
network up and running, with at least 30 systems, running for at least a few
months.  (It isn't worth registering netup for only a few nodes.  Running for
a few months before using netup will allow you to understand how networks run,
and what files need to be updated.)  If you want to run your own network with
just a few nodes, the easiest method is to set up a subboard where you
periodically post the bbslist and connect files, and have the sysops manually
update those files on their system.

Netup will NOT help you initially set up a network, nor does it contain docs
or support to help you do so.  Netup will only be useful after you have a
network up and running.

Group en/de files (en257/de257, etc) are also available, for $20 each. You can
order them at the same time as netup, or later on.  If later, be sure to
indicate for which network.

All files (the initial netup/en1/de1 package, plus any optional group en/de
files) will be downloaded from my system (@1.WWIVnet,
310-798-9993/310-798-8283), from an xfer dir with access limited to me and you
only.

All en/de files (for NC and GCs) support pkzip compression internally, and use
RSA/MD5 digital signatures.  The source-verified messages are not encrypted.
With the key lengths used, the source-verification is unlikely to be forgeable
by even a major corporation in under a decade or so of concerted effort.

The WWIV Net Update Software (Netup) is designed to provide an independent
WWIV-based network with the ability to have network updates sent out by a Net
Coordinator (NC) and to permit regional coordinators to send updates to the
NC.  Each network that registers this software has a unique encoding scheme
which prohibits the program from working on any other network.  The software
is sold for the exclusive use of the individual or organization to whom it is
registered, on one network, and may not be used by anyone else, nor may the
ownership be transferred to another person or organization.

The registration of this software entitles the software to be upgraded as
necessary to remain compatible with the latest version of NETxx, the WWIV
network software used on WWIVnet.  No other representation or warranty is
expressed or implied by the program.


				  -=��


	      Questions and Answers About RIP and Various Issues

<Editor's Note:  The following is an exchange that has recently taken place on
a regional Sysop Sub.  Hopefully it will clarify some questions that have been
asked on several subs.>

Q:

Since things have been OMINOUSLY quite out of your own subs, Filo, I'll take a
chance and reply to you here.

A:

I see at the bottom of your letter that you think that I am running the
National Sysop Sub (S.A.L.T.).  I am not and have never run that sub.  It is
being run by @4 and has been for about 2 years.  @4 no longer lives in the
immediate Los Angeles area and apparently his board is not connecting with @1
as often or regularly as it did when the two were local to each other.  I
think that and possibly auto-validation of that sub combine to cause the
delays that you are speaking of.  While I do have a few dead or relatively
dead subs, most of the ones that I host are alive and well.  The two most
popular subs that I host (based on number of subscribers) are Subtype 2370
(Mod Net) and WSS (WWIV Software Services Sub) where Random and I make
announcements about new releases and/or new products and other general
information.  It is designed to be a low volume sub as posting by others is
not allowed and such posts if made are deleted at the host system.

Q:

How's the "Ripping out of Rip" coming?


A:

It is not "coming" because we have no such project under way.  We intend to
continue to work with RIP and develop that interface.  Where possible, we
will make it as easy as possible for people to take it out if they desire to
do so. The BBS functions quite well whether RIP is used or not.  Further,
because of the way that RIP is overlaid, it is not taking up space in memory
when it is not used.


Q:

You might think I'm crazy for saying that, but based on many, many comments
I've read on over a dozen different WWIV sysop bases on more than one
network...a heck of a lot of people currently using WWIV do NOT -- and I
repeat NOT -- like what including RIP in WWIV has done to the software.


A:

I have noted perhaps as many as 30 sysops who have vocally complained about
RIP.  Some complain because they have not figured out how to make it work for
them (hopefully the 4.24a release will help in that regard), and others have
complained because it "interfered" with their modding.  I believe that part
of their problem is their insistence upon removing every line of code that
references RIP.  If RIP is not installed, those lines of code are
non-operative, do not need to be removed, and do not interfere with mods that
might be made.  Based on my discussions with Wayne about this, it seems that
most of them must be somewhat incompetent in their modding skills or they
have not taken the time to really study the code to see how RIP is
implemented and what effect it has when it is not installed.  Again, I repeat
the observation that we realize we cannot make all people happy all the time.
I can still remember the complaints about the adding of two-way chat into the
bbs.

Q:

RIP, as implemented in 4.24, was a lousy idea.


A:

Taking it out at this point might be an equally lousy idea.  See my comments
above and realize that we cannot ever hope to make all people happy no matter
what we do.  If we try to make everyone happy, we will go crazy.  So, we try
to make those decisions which seem to help (or be wanted) by the largest
number of sysops, those decisions that help to keep us the most competitive
with other bbs softwares out there, and those decisions which, if not wanted,
actually harm the least number of people.

Q:

But I've seen all too many people who don't like RIP, will NOT use RIP, and
are having a hell of a time with other mods because of RIP.


A:

Please identify one or two of these people and the nature of their problem.
Are they people who really understand the BBS code, the RIP function, etc?
Please understand that I do not pretend to understand these things myself,
but based on the comments of people whose coding abilities I do respect,
their feeling is that complaints such as those you mention are coming not for
"real" programmers or from any serious modders but from people who are
wanting to dabble with modding the code without lack of understanding of how
the bbs really operates.  I, personally, am not even competent to judge which
camp is correct, so I have to base my opinion on the result that seems to be
produced by each group.  Whereas there are a lot of people who make mods,
there are only (in my opinion) about 15 people who are making substantial,
regular contributions in the form of mods and who are striving for truly
original modifications to the bbs.


Q:

I speak of this here and now because of your comment above -- "that we did
not hear of a lot of demand for it and we have been working on other projects
that we felt were more important to the body of WWIV sysops".

Well, fine.  What, may one ask, ARE those projects?


A:

One of the more important projects that we have been working on and which is
now ready for sysops as soon as Wayne and I finish documenting it
sufficiently is the NGTRANS program.  This will allow WWIV sysops having a
UNIX shell account with an internet provider to send/receive both Internet
News Groups and Internet E-mail.  In terms of our (WWIV) maintaining a
competitive position in the bbs world and in terms of satisfying requests from
100's of sysops for such a feature, this has assumed a large priority in our
project list.  The next project on this list is to get WWIVEdit revised and
made more compatible with the many versions of multi-taskers available on the
market.


Q:

Has a true "demand" really been determined?  How was demand determined?  Has
anyone EVER surveyed the WWIV sysop community to propose a list of possible
new features, and allowed space on a survey for commentary on WHY people may
want -- or may NOT want -- to see certain features?


A:

We have not done any substantial surveys.  We do not have the budget or the
staff to conduct such surveys.  There are over 100 WWIV based networks in the
world and we are only participating at the current time in 4 of them.  Our
access through those 4 networks is to approximately 2000-2200 sysops.  That
number represents less than one-third of the totality of all registered WWIV
sysops.  So, even if we attempted to survey WWIV sysops on those networks, we
would not contact all of the WWIV sysops.  Further, when I have surveyed the
WWIVnet bbs community on different issues, I find that I am luck to get a 10%
to 15% response rate to the survey.  Thus, this attempt often results in our
making decisions that affect all WWIV sysops based on the divided input of
two or three hundred sysops.

Wayne and I do get a lot of e-mail from sysops and we try to respond to it.
We try to take it into consideration when we make decisions.  I read a lot of
sysop oriented subs and try to pay attention both to what sysops are saying
as well as what sysops are saying in response.  In other words, I try to
consider both sides of a particular discussion.  This does not mean that I do
or ever will make perfect decisions.  Like most folks, I make mistakes.
However, I do make a effort to take all of these things into consideration
rather than looking only to my own desires.  I think given budget, staff, and
the general reluctance of the sysop community at large to respond to surveys
that we are doing the best that we can to consider these many divergent
points of view.


Q:

The RIP *may* have been an interesting feature to some people.  The online
GIF viewing MAY be an interesting feature to some people.  But implementing
ANY feature in such a way that it makes life a "merry hell" for someone who
only wishes to do 'normal' level of modification (normal, as in adding a new
command, or a new feature or two to a menu, without all the complications
introduced with the current implementation of RIP) is an ominous sign...a
sign that things are rolling downhill unchecked, and may well crash at the
bottom of the hill if they don't watch out.


A:

If you really want to have input on a major decision that I think we must
make soon, address the question of the format that WWIV should take in order
to survive in a very competitive world of world-wide communications.  Should
we remain a dos-based bbs system?  Should we continue to cater primarily to a
single-line hobbyist bbs market?  Should we put efforts behind an OS/2 based
BBS, a Windows based BBS, an NT based BBS, a Unix bbs, a Linux bbs.  Should
we anticipate that sysops will remain satisfied with connecting to primarily
a local user base via a phone line or will the majority want full-time
connections to the Internet so that their bbs is used by millions of people
(possibly) from all over the world?  These are VERY REAL important issues
facing us at WSS.  The decisions that we make on these crucial issues will
affect all of you in one way or another.  These are, IMO, the big issues
where we need good, logical, rationale discussions that give full
consideration to the issue, to the underlying technical considerations, and
to the impact of a choice on everyone else.  Issues such as whether or not
RIP should be continued, ripped out (pun intended), and/or whether or not
people should be able to view Gifs on-line are simply inconsequential in
terms of the types of decisions mentioned above.

Please understand that I am not saying that concern about RIP or Gifs is
unimportant.  If sysops are concerned about them, then they are important and
Wayne and I want to give consideration to them.  On the other hand, they
truly are somewhat inconsequential when viewed next to the question of (say,
for example) whether or not we should plunge neck deep into Windows
programming to produce a bbs with superior graphics, storage, sound, etc.,
that may (or may not) be capable of being tied to the InterNet 24 hours a day
with perhaps no phone lines for local users, that may involve the use of DLL
libraries and files so that the entire thing becomes more of a flexible GUI
interface.  Further, look 10 years down the road.....if Bill Gates is
successful in what he is doing, then the real game will be in a BBS (for lack
of a better word) system that interfaces with the cable TV network and that
is accessible to people who sit on their couches and cruise the
communications world using input devices similar to sophisticated remote
controls.  We will be capable (in such a world) of having bbses where users
can chat with each via voice while seeing each other's picture.  It will be a
world that is hard to imagine.  Such world-vision type things are currently
being tested on very limited scales in about 5 US communities with
approximately 200 selected families within each area.  How will WWIV fit into
that world?  What should we be doing now (in terms of the abilities that we
should be learning) to acquire the knowledge and expertise to take WWIV into
that world.  I told Wayne that I would like to set the goal of having WWIV be
the first BBS to be accessible in that medium; however, neither of us have a
real clue as to how to get from here (where we are today) to there.  These
are the areas where you can make an impact.  Your impact will not be felt by
saying "I want this" or "We should/should not have that", but rather by
helping us to absorb the new information technology that is out there, sift
the data to make it information, and then help us identify the consequences
of various decision options so that we make the right, the best choice for
those using WWIV.


Q:

Filo, I say these things to you because you have become the "Main Voice" of
WWIV in most forums.  Just "adding this" and "adding that" has been leading
to a lot of problems down the road...problems that are building things up to
a point where many people may start throwing up their hands and saying "I
just can't deal with the way WWIV is going anymore -- for all that I love the
software, and the nets, it's getting harder and harder to be constantly
"rebuilding" each rev to get it back to where you had it before the latest
code release..."


A:

I understand what you are saying.  Think how those people will feel as we
start to make decisions such as those outlined above.  Please help us to get
the information that we need, to consider the effects of important decisions,
and to have the wisdom needed to make those types of decisions.  I am sorry
that you have the concept that we have just "added" here and there.  While
there is some truth to that, it not totally justified for we do consider how
various things fit into the design of things.  Wayne is very good at that
from a technical perspective.


Q:

On another note:  I've not received any posts in #1 Sysop sub for quite some
time.  The last post I have was dated August 22 and came from Sam.  Why have
no new messages come through?  I have heard you say that if you need to go
out of town your son will validate messages on your sysop subs...but since
I've been seeing postings from you on subs you DON'T host in the past week or
so, I have to wonder why no posts are coming through from subs you DO host.


A:

As I mentioned at the top of this message, I do not and never have hosted the
sub that you refer to. Some subs that I host are:

SubType    Name of Sub

2370       WWIV Modifications Net Sub (mods only)
2050       Mod Talk & Requests *
3677       Tech and Mod Help   *
12050      G-Fours (Group Four Sysop Sub) *
12620      WWIV User's Guide (Q&A) *
22050      WWIV New Sysops Forum *
9999       Alternate #1 Sysop's Sub *
600        WWIV / Fido NetSex Discussion *
42050      Person-to-Person *
43314      AC/GC Sub
8754       WWIV On-Line Game Sub *
5300       NetWork Concerns
WW4CON     Discussion of WWIVcons *
EBRNFO     Electronic Book Reader Information (IceNET & WWIVLink)
WSS        WWIV Software Services


* = Autorequestable

				  -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ            Future Considerations           Ӎ
	       Ӡ                  for WWIV                  Ӎ
	       Ӡ       By Emerald Lady (WWIVnet 1@9201)     Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ


[Editor's Note: This is a lengthy article I received from Emerald Lady
basically regarding the Question and Answer piece immediately preceding this
article.  In the interest of brevity, I removed some portions of it where
Emerald Lady had quoted much of the above text. Emerald Lady brings up several
good points in this article.]


Point Zero -- It's much easier to hack code than to find out what the user
really wants.

Point One -- It's much easier to hack code than to tell people how to use it.

Point Two -- It's much easier to hack code than to plan how to implement it so
that the people who may need to work with it for modifications and changes can
consistently find their way around in it.

You say you note perhaps 30 sysops who have complained about RIP in one way or
another.  Given the ratio of "lurkers versus doers" in BBSing in general, what
would that bode to you in terms of numbers?  How many boards subscribe to Mod
Talk and you NEVER see a post coming from that system?  The vast majority
seems to keep pretty darned quiet, be they sysops or users.

You say that you have had complaints about people not understanding the RIP.
See point 1 and point 2.  Documentation may not have been good enough that the
*least common denominator sysop who tried to mod* was able to understand it.
You have to remember that like teachers, you _cannot_ just gear things towards
"the best and the brightest" and hope that the ones who have problems A) have
the nerve to speak up and SAY "I have a problem"; and B) have enough of the
right kind of skills to be able to _determine_ that they have a problem.  In a
general release product, documentation _MUST_ be written in the most "Idiot
Proof" way as possible.  Not all users of a software program have the same
level of comprehension.

Regarding "your discussions with Wayne regarding how modders work with RIP" --
See points 1 and 2.  Now really, Filo -- is that a fair statement?  "If people
can' t see it my way, then they're incompetent."?  As I said before, not
everyone _can_ study an uncommented scrap of code and remember how each and
every possible function in tens of thousand lines of equally undocumented
code functions in the myriad of interrelationships!

If you (read that as "WWIV Software") want to implement ANY features, first and
foremost they _must_ be documented well enough that the guy who's only going to
get a "C" (no pun intended) in modding -- and that with a lot of sweating --
can read the docs and work his way through things when they don't go right.

Now how "point 2" fits here.  It's much easier to hack the code than to figure
out how it works...or how to explain it to someone who can't 'hack' on the
same level as the best and the brightest.

You said, "they have not taken the time to really study the code to see how RIP
is implemented and what effect it has when it is not installed."  Think about
what you've said here, as well.  SHOULD everyone who ever attempts to put a
mod in WWIV be REQUIRED to read each and every line and approach it as a Ph.D.
paper so that they can understand how to put in an extra command on a menu?

If that level of "study" is necessary, it's no wonder that sysops would give up
and gravitate toward something that's less taxing to customize...and that
remains backward compatible revision to revision so that they don't have to
study for that Ph.D. every year or so when a totally "rewritten and
uncommented" version of WWIV hits the streets.

In order to properly address the comment above (about "If we try to make
everyone happy, we will go crazy.  So, we try to make those decisions which
seem to help  (or be wanted) by the largest number of sysops, those decisions
that help to keep us the most competitive with other bbs softwares out there,
and those decisions which,  if not wanted, actually harm the least number of
people.") I need to continue on t o another part of your message...for you DID
make a statement about "addressing the needs of the majority".

* Has a true "demand" really been determined?  How was demand determined?
* Has anyone EVER surveyed the WWIV sysop community to propose a list of
* possible new features, and allowed space on a survey for commentary on
* WHY people may want -- or may NOT want -- to see certain features?

A couple of paragraphs ago you said that "trying to make everyone happy would
be just not feasible"...or words to that effect.  By your own words, you have
a small sample to work with -- access to 1/3 (by your count) of the "living
rooms" that could, in theory, "view your program"...and of that 1/3, you've
only gotten a very small sample as a response to any particular thing
that's going on.

And I've talked about "the silent majority".  By your own count, over 2/3 of
the WWIV sysops out there aren't within your sphere of contact -- that's 2/3
of your (current) marketplace that isn't even getting the chance to respond
with likes and dislikes!  I, personally, wonder quite a bit what those 4,000
WWIV sysops who've registered the program may be thinking now...

Like it or not -- it's IMPORTANT TO THE FUTURE OF WWIV SOFTWARE to be AWARE of
what its users think of it!!!  This is the essence of my "Point Zero -- It's
much easier to hack code than to find out what the user really wants."

The questions you ask are good ones...but they are WAY, WAY premature.  The
reason I say this?  See Point Zero.  At this point, do you know what you HAVE?
Do you know what market you CURRENTLY serve?  Do you know the demographics of
your Sysop community?  Do you know THEIR likes, their dislikes, their uses of
the software as it sits?

Do you know what your CURRENT users want?  For now, FORGET what's out there in
the ether.  Think about what's NOW.  What *IS* your market?  Is it hobbyists?
If it is, then what's wrong with that? I for one consider myself to be just
that -- a computer hobbyist who's learned from the ground up what makes a
computer tick.  I do not claim to know all things about all parts of one - but
I do make the claim that I can look at a program, fool with it, figure out
how it works...all from "command line interface".

You *REALLY* want to know what'd make the WWIV software more popular?  Pretty
simple answer, really:  Clean it up so that the features it currently has are
DOCUMENTED -- both in the code and in the separate 'doc file' -- so that
anyone can look at either the vanilla code, OR the precompiled version, and
know exactly what each feature is, what it does, and how he can customize it
if he is of a mind to customize his board.  I don't expect you to teach a
class in C -- but the C you're giving out needs to be CLEAN C, so that someone
who doesn't know "WWIV C" instead of "ANSI C" can figure out what it is and
what it does...and how it does it.

Clean it up.  Get rid of 'leventy-seven different ways to "print a line of
text to the screen".  That's the movement I've seen with the "COMMON" mods
that some groups have been doing -- make a baseline module of functions and
have things that can be created to "hook" into that baseline so that the
person trying to customize their board never HAS to know all 'leventy-seven
different "print" functions.  That way, all the person playing with code needs
to concentrate is how a _section_ -- a *clearly defined section* -- of code
works in order to do his own thing on a particular feature he's trying to
modify.

As I said before:  You have to have a GOOD, CLEAN PRODUCT to START WITH before
you can go in ANY new direction.  For all that WWIV is popular now...it's not
very "pretty" in its internal construction.  In fact, from everything I can
gather, when you compare it to known "C" standards of programming (ANSI) it's
downright UGLY.  Ugly to use.  Ugly to modify.  Ugly to try to define just
what it is, and how it works.  And part of that "ugliness" makes it bloody
difficult to assess what it IS, much less what it CAN be.

Until you know what your _supporters_ want, how can you have a clue what
direction to take?  I repeat -- it's time to find out.  See Point Zero.  Until
you know what people WANT, you can't make any plans.

I got into WWIV the way any person with a modem and a term program might find
it -- luck of the draw.  I called a system that decided to run WWIV.  And you
know what?  I fell in love with it from the very start.

What did I like?  It wasn't features, per se, from the user point of view.  It
was the _people_ out there in WWIVLand that made me want to see more....and
that made me know that the only BBS software I'd consider running was the
software that gave me that type of people.

 The people in WWIVLand are, like it or not, a "small town".  There aren't many
of us, and we get to know each other pretty quickly if we're active users.  We
are a small enough community that we _do_ get to know each other to a degree.
We are not part of that faceless mass of (in)humanity that's being portrayed
as "cyberspace" (Internet, AOL, Prodigy, etc. etc. etc.)  We are a small group
of pretty decent people who get together to talk about stuff.

Hey, what's wrong with that?  If I *wanted* Internet, I'd sign up for an
account with the "buck an hour" provider down the street. If I *wanted*
Prodigy, or AOL, I'd pay my money and sign up for it.  But you know what?  I
LIKE WWIV and the way it FEELS...WAY too much to EVER suggest that it SHOULD
become part of that faceless, nameless dreck that one finds on the "pay
services".

I was born and raised in a small town.  For what it's worth, small towns
aren't bad.  They're just different from NYC or LA, that's all.  Just as
people choose to move to the "big city", people will *always* want the things
that can be found only in a small town.

If you feel that WWIV *must* join that faceless mass...then that's your
decision.  As long as WWIV software is available in any way, shape, or form in
its current incarnation...and as long as there is a WWIV compatible (in its
current style) NET out there...I'll be THERE, not "hanging about in
Cyberspace" with the masses of humanity (shades of Soylent Green!)

> I am sorry that you have the concept that we have just "added" here and
> there.  While there is some truth to that, it not totally justified for
> we do consider how various things fit into the design of things.  Wayne
> is very good at that from a technical perspective.

That statement I won't back down on.  The code is uncommented and, by
admission, "just growed" from Basic to Pascal to C.  Rather than stepping back
and assessing existing code years ago and deciding to recode things from a
more functional point of view/way of doing things, things _have_ just been
added...without, I repeat, proper commentary or documentation to make _all_
sysops who investigate WWIV code be able to work from the basis of
understanding EVERYTHING that's there because they were TOLD "what does which
operation" in a commentary.

Is WWIV so unwieldy now that modular programming is not a consideration for
the whole board?  Why were Asylum and Papa Bear able to design "COMMON"
modules that they, and others, were able to use for a base for future
modifications?  Is it too late to "Commonize" WWIV so that all people who want
to make neat things to share with the user community will have the same basis
to work on/from?  That has been my basis for complaint about RIP.  Was it
not possible, for example, to have the functions of the two types of usage
[RIP and NON-RIP] completely separate, and have it hook to a "COMMON" type of
thing, so that it was your option to use it, or NOT use it, in its entirety?
I make no more claims to being a "coder" than you do, Filo...but I do talk a
great deal with people who ARE professional code writers.  And I hope I've
learned some things from listening to the stories they've told about their
work...and how TO, and NOT TO, approach programming.

Everything I've gotten on "proof of design" from the "pros" I know tells me
that coding a separate section that "hooks on" to a main set of functions is a
more flexible way of doing things...and more customizable, if I understood
them correctly.  AND it's easier to know _where_ your stuff is...or so it
would seem to me...when you have to go on a "search and destroy" when you're
looking for something to try and figure out why it's not working correctly.


In summary:

No matter what product (software wise) you're trying to produce, remember my
three points:

	*  Point Zero -- It's much easier to hack code
	than to find out what the user really wants.

	*  Point One -- It's much easier to hack code
	than to tell people how to use it.

	* Point Two -- It's much easier to hack code
	than to design it such that it's consistent within itself
	...so that the people who may need to work with it for
	modifications and changes can consistently find their way
	around in it.

To those, let me add the following...

	* Point Three -- It's very easy to go in a direction
	you didn't intend if you don't observe Point 0, Point
	1, and Point 2.


You have to figure out what your market IS before trying to GET there.

You have to listen to what people say "in the NOW" before you can plan for "in
the FUTURE".

You must, above all, be organized to the point of absurdity in whatever it is
you choose to do -- else it'll become another mass of spaghetti that no one
can - or would want to try to - figure out.

One point that may, or may NOT, be obvious in all of this:  The PLANNING stage
is the most important on any project.  Only be DEFINING what it is you want,
can you then work to make it happen in the cleanest, neatest, most efficient
and easiest way to use, and understand, by the people who'll be buying it.


				    -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ             The GC's Corner                Ӎ
	       Ӡ     Notes from the Group Coordinators      Ӎ
	       Ӡ              A Compilation                 Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ


The Diseased Mind #1 @10000

My thoughts on the state of WWIVnet....Boy, talk about being ambivalent about
this subject...

On the one hand, I see WWIVnet and 'slowboat' networks in general starting to
shrink as the internet becomes both more popular and more accessible to the
general public.  And the apathy level (at least in Group 10) is rising to
almost terminal levels.  In the summer of 95, two of the G10 ACs resigned and
you wouldn't belive the difficulty I had getting replacements.

It is not like I'm driving them away.  I have a very 'hands off' approach to
being a Group Coordinator.  As far as I know, neither of the resigning Area
Coordinators had any problems with me as their GC.  One left for the internet
and one left to run a pay system off of WWIVnet.

When I called for nominations for replacement ACs, I received more mail from
systems saying:  "If I'm nominated, I decline; thank you," than I received
mail with actual nominations.  In my opinion, that's a fairly sad statement on
the interest level these people are showing....Declining nominations in
advance!

And, of course, there is the standard complaint you're hearing more and more
from the 'oldtimers':  People are too rude.  It is not just the influx of many
 new modemers (most of who are NOT 'computer geeks'/hackers/<insert your
own word for a person  who's into computers>); it is also many people who have
been modeming for years who are in the thick of the argument as it degenerates
into sniping and general verbal combat.

On the other hand (remember waaaay back up to the top where I talked about
being of two minds on the subject of the state of WWIVnet?)....On the other
hand, I think WWIVnet provides something the internet does not provide yet: A
sense of belonging to a widespread group of people without becoming a faceless
reader in a HUGE crowd.

And another thing that I've noticed about the internet is that it is just...too
much...Too much information, mostly, and even then there's far more chaff than
wheat, so to speak.  WWIVnet provides forum/format that makes it easier to
assimilate what is going on.

				    -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńńÄńńńńńńń
	       ӠOperating WWIV through Windows 3.1 with QEMM Ӎ
	       Ӡ         Enchantress 1@1625 WWIVnet          Ӎ
	       Ӡ            With assistance from:     	      Ӎ
	       Ӊ    Laffin 84@1625 WWIVnet  	      Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńř


This is for those that are needing help with operating WWIV in Windows 3.1.
Included is the best settings I have found for running WWIV where the users
won't even notice a lag in speed except where you might copy several files
from or to a floppy. MANY users have even commented on how fast it runs
with being ran through Windows. Even if you don't have QEMM the PIF settings
will greatly improve your BBS's speed in Windows.

I was also having problems with insufficient memory in Windows until I
removed ANSI.SYS from the CONFIG.SYS and placed ANSIALL5 and RIPDRIVE in the
BBS1.BAT. Prior to doing this the BBS was frequently crashing due to
insufficient memory in various games.

I have:
   4 MEG RAM
   386/40/DX
   QEMM 7.0X
   Windows 3.1
   And a Sanyo CD-ROM

Following is my BBS1.BAT.

BBS1.BAT

ANSIALL5 FAST ON /B 0
RIPDRIVE
SET WWIV_INSTANCE=1
BBS -I1

Use the PIF Editor calling up the BBS1.BAT, working directory is the BBS
directory and the settings of:

Video Memory: High Graphics   (RipDrive and some Doors use EGA/VGA graphics)
Memory Requirements: KB Required 512 KB Desired 640
 EMS Memory:          KB Required 512 KB Desired 1024
XMS Memory:          KB Required 512 KB Limit   1024
Display Usage:       Windowed
Execution: Background

Advanced Options:
Background Priority: 1000
Foreground Priority: 1000

Uses High Memory Area

Monitor Ports: Text, High Graphics, Emulate Text Mode, and Retain Video
Memory Other Options: Allow Fast Paste

Also in the Control Panel under 386 Enhanced:
Memory Timeslice (in msec); 4

I also have a 4 MEG Permanent Swap file set up through the 386 Enhanced (in
the Control Panel). The swap file is used by Windows to swap in/out memory
(it's using the hard drive as extra memory). So , you may want to
increase/reduce the swap file size dependant upon how many windows you use
during a common session.

Happy SysOping!

				   -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ   Tips For Running WWIV Under Windows 95   Ӎ
	       Ӡ             By Bull Ship (1@11132)         Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

    -=��t to be outdone by WWIV, Microsoft Celebrates the
	  Release of WWIV 4.24a with a minor release of It's Own ��

Windows 95 and WWIV FAQ's
ver 1.0, 9/2/95

I haven't written any doc's for win95 yet... I've been trying to figure out
just what might be needed.. so far almost everything seems to work great in
the AUTO mode... just as win95 sets it up.  So this is just a set of notes,
suggestions, on how to set up WWIV under Windows.

I suggest that you first install win95 and your modem IN win95... make sure it
works fine... In the modem setup make sure flow control is set to HARDWARE.

Then setup wwiv in DOS mode... make sure it's working 100% perfectly in DOS
mode (not in a win95 dos window.. but in DOS mode)...  If you have problems
running WWIV when NOT running it under windows you'll definitely have problems
when running it under windows.  Problems don't just go away, you need to fix
them.

Now start win95...  Go to the START MENU | SETTINGS | TASK BAR... once you
have the task bar settings open, click on START MENU PROGRAM and then choose
ADD.

Go through the ADD program wizard and add WWIV (BBS.EXE, BBS.BAT, WWIV1.BAT or
whatever you use to start WWIV from DOS) as an Icon.. make sure you put it in
your STARTUP folder if you want wwiv to start up automatically when you start
Win95, otherwise put it wherever you want, even the desktop is fine.

When finished, right click on the START button and choose OPEN.. A window will
come up with a PROGRAMS icon in it... open PROGRAMS | STARTUP.. When you have
the STARTUP group open, right click on your WWIV icon (providing of course you
put the WWIV icon in your startup group, if you didn't then open the group you
did put your WWIV icon in.)  If you put your WWIV icon on your desktop you can
right click on the icon to get to it's properties.

Once you have the group open that has your wwiv icon in it, right click on
your WWIV icon and select PROPERTIES from the menu option.

You'll be presented with a dialog box with 5 different pages of settings. The
only pages that have settings in them that matter to WWIV are the "Memory"
page and the "Misc" page.  I've found that basically all the settings that
Win95 sets up a DOS program with work great with WWIV. There are only two
settings I've changed.. and one I changed just to meet my needs.

In the MEMORY page, I left all the settings on AUTO except the expanded memory
setting which I set to 1024 which met my needs.  I also checked the PROTECTED
box which provides a little more crash protection to that DOS program window.

BTW, the only way in Win95 that I've found to provide expanded memory in Win95
is to load HIMEM.SYS and EMM386.EXE in my CONFIG.SYS.. I used the RAM switch
with EMM386.EXE.  If you do this, make sure your path for these programs point
to the copies in your WINDOWS (win95) directory.. They came with win95 and are
32bit versions of their predecessors...

Now go to the MISC section of the properties.. The only setting here I changed
for WWIV was to move the "Idle Sensitivity" slide bar all the way to the left
to LOW...  I did this because I wanted to make sure that my online instance of
wwiv had a higher amount of system resources than other programs I might run.
You may not need to make this change, I may not have needed to make this
change.  If you run into situations where wwiv doesn't seem to be getting
enough CPU cycles.. (runs jerky, or doesn't answer the phone in time), I'd
suggest starting with this setting and seeing if changing it helps or hurts.

BTW.. If you make more than one icon to the same instance of WWIV or if you
make a SHORTCUT to wwiv using an existing icon, be aware that any changes you
make to the properties of one icon do NOT get transferred to the next icon.
Each icon is treated as a separate access to a program with the assumption
being that you might want to start that program differently from the different
icons.  So any changes you make to an icon that starts WWIV, you need to make
to all your WWIV icons if you want each one to start wwiv with those changes.

Like I said above, I haven't had to make much if any changes to successfully
run my board in Win95.  I've been running my board under Win95 for over 3
months now.


				   -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ           Understanding Viruses            Ӎ
	       Ӡ          Compiled by Sam (1@4051)          Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

[This was taken from an FAQ I picked up on the net. It is a rather large
article, which I will post in parts over the next few newsletters.]

What are computer viruses (and why should I worry about them)?

According to Fred Cohen's well-known definition, a COMPUTER VIRUS is a computer
program that can infect other computer programs by modifying them in such a
way as to include a (possibly evolved) copy of itself. Note that a program does
not have to perform outright damage (such as deleting or corrupting files) in
order to to be called a "virus". However, Cohen uses the terms within his
definition (e.g. "program" and "modify") a bit differently from the way most
anti-virus researchers use them, and classifies as viruses some things which
most of us would not consider viruses.

Many people use the term loosely to cover any sort of program that tries to
hide its (malicious) function and tries to spread onto as many computers as
possible.  (See the definition of "Trojan".)  Be aware that what constitutes
a "program" for a virus to infect may include a lot more than is at first
obvious - don't assume too much about what a virus can or can't do!

These software "pranks" are very serious; they are spreading faster than they
are being stopped, and even the least harmful of viruses could be fatal.  For
example, a virus that stops your computer and displays a message, in the
context of a hospital life-support computer, could be fatal.  Even those who
created the viruses could not stop them if they wanted to; it requires a
concerted effort from computer users to be "virus-aware", rather than the
ignorance and ambivalence that have allowed them to grow to such a problem.


What is a Trojan Horse?

A TROJAN HORSE is a program that does something undocumented which the pro-
grammer intended, but that the user would not approve of if he knew about it.
According to some people, a virus is a particular case of a Trojan Horse,
namely one which is able to spread to other programs (i.e., it turns them
into Trojans too).  According to others, a virus that does not do any
deliberate damage (other than merely replicating) is not a Trojan.  Finally,
despite the definitions, many people use the term "Trojan" to refer only to a
*non-replicating* malicious program, so that the set of Trojans and the set of
viruses are disjoint.


What are the main types of PC viruses?

Generally, there are two main classes of viruses.  The first class consists of
the FILE INFECTORS which attach themselves to ordinary program files.  These
usually infect arbitrary .COM and/or .EXE programs, though some can infect any
program for which execution is requested, such as .SYS, .OVL, .PRG, & .MNU
files.

File infectors can be either DIRECT ACTION or RESIDENT.  A direct-action virus
selects one or more other programs to infect each time the program which
contains it is executed.  A resident virus hides itself somewhere in memory
the first time an infected program is executed, and thereafter infects other
programs when *they* are executed (as in the case of the Jerusalem) or when
certain other conditions are fulfilled.  The Vienna is an example of a direct-
action virus.  Most other viruses are resident.

The second category is SYSTEM or BOOT-RECORD INFECTORS: those viruses which
infect executable code found in certain system areas on a disk which are not
ordinary files.   On DOS systems, there are ordinary boot-sector viruses, which
infect only the DOS boot sector, and MBR viruses which infect the Master Boot
Record on fixed disks and the DOS boot sector on diskettes.  Examples include
Brain, Stoned, Empire, Azusa, and Michelangelo.  Such viruses are always
resident viruses.

Finally, a few viruses are able to infect both (the Tequila virus is one
example).  These are often called "MULTI-PARTITE" viruses, though there has
been criticism of this name; another name is "BOOT-AND-FILE" virus.

FILE SYSTEM or CLUSTER viruses (e.g. Dir-II) are those which modify directory
table entries so that the virus is loaded and executed before the desired
program is.  Note that the program itself is not physically altered, only the
directory entry is.  Some consider these infectors to be a third category of
viruses, while others consider them to be a sub-category of the file infectors.


What is a stealth virus?

A STEALTH virus is one which hides the modifications it has made in the file or
boot record, usually by monitoring the system functions used by programs to
read files or physical blocks from storage media, and forging the results of
such system functions so that programs which try to read these areas see the
original uninfected form of the file instead of the actual infected form. Thus
the viral modifications go undetected by anti-viral programs.  However, in
order to do this, the virus must be resident in memory when the anti-viral
program is executed.

Example: The very first DOS virus, Brain, a boot-sector infector, monitors
physical disk I/O and re-directs any attempt to read a Brain-infected boot
sector to the disk area where the original boot sector is stored.  The next
viruses to use this technique were the file infectors Number of the Beast
and Frodo (= 4096 = 4K).

Countermeasures: A "clean" system is needed so that no virus is present to
distort the results.  Thus the system should be built from a trusted, clean
master copy before any virus-checking is attempted; this is "The Golden Rule
of the Trade."  With DOS, (1) boot from original DOS diskettes (i.e. DOS
Startup/Program diskettes from a major vendor that have been write-protected
since their creation); (2) use only tools from original diskettes until virus
checking has completed.


What is a polymorphic virus?

A POLYMORPHIC virus is one which produces varied (yet fully operational) copies
of itself, in the hope that virus scanners will not be able to detect all
instances of the virus.

One method to evade signature-driven virus scanners is self-encryption with a
variable key; however these viruses (e.g. Cascade) are not termed "poly-
morphic," as their decryption code is always the same and thus can be used as
a virus signature even by the simplest, signature-driven virus scanners (unless
another virus or program uses the identical decryption routine).

One method to make a polymorphic virus is to choose among a variety of different
encryption schemes requiring different decryption routines: only one of these
routines would be plainly visible in any instance of the virus (e.g. the Whale
virus).  A signature-driven virus scanner would have to exploit several sig-
natures (one for each possible encryption method) to reliably identify a virus
of this kind.

A more sophisticated polymorphic virus (e.g. V2P6) will vary the sequence of
instructions in its copies by interspersing it with "noise" instructions (e.g.
a No Operation instruction, or an instruction to load a currently unused reg-
ister with an arbitrary value), by interchanging mutually independent instruct-
ions, or even by using various instruction sequences with identical net effects
(e.g. Subtract A from A, and Move 0 to A).  A simple-minded, signature-based
virus scanner would not be able to reliably identify this sort of virus;
rather, a sophisticated "scanning engine" has to be constructed after thorough
research into the particular virus.

The most sophisticated form of polymorphism discovered so far is the MtE
"Mutation Engine" written by the Bulgarian virus writer who calls himself the
"Dark Avenger".  It comes in the form of an object module. Any virus can be
made polymorphic by adding certain calls to the assembler source code and
linking to the mutation-engine and random-number-generator modules.

The advent of polymorphic viruses has rendered virus-scanning an ever more
difficult and expensive endeavor; adding more and more search strings to simple
scanners will not adequately deal with these viruses.


What are fast and slow infectors?

A typical file infector (such as the Jerusalem) copies itself to memory when a
program infected by it is executed, and then infects other programs when they
are executed.

A FAST infector is a virus which, when it is active in memory, infects not only
programs which are executed, but even those which are merely opened.  The re-
sult is that if such a virus is in memory, running a scanner or integrity
checker can result in all (or at least many) programs becoming infected all at
once.  Examples are the Dark Avenger and the Frodo viruses.

The term "SLOW infector" is sometimes used for a virus which, if it is active
in memory, infects only files as they are modified (or created).  The purpose
is to fool people who use integrity checkers into thinking that the modifi-
cation reported by the integrity checker is due solely to legitimate reasons.
An example is the Darth Vader virus.


What is a sparse infector?

The term "SPARSE infector" is sometimes given to a virus which infects only
occasionally, e.g. every 10th executed file, or only files whose lengths fall
within a narrow range, etc.  By infecting less often, such viruses try to
minimize the probability of being discovered by the user.


What is a companion virus?

A COMPANION virus is one which, instead of modifying an existing file, creates
a new program which (unknown to the user) gets executed by the command-line
interpreter instead of the intended program.  (On exit, the new program
executes the original program so that things will appear normal.)  The only
way this has been done so far is by creating an infected .COM file with the
same name as an existing .EXE file. Note that those integrity checkers which
look only for *modifications* in *existing* files will fail to detect such
viruses.

(Note that not all researchers consider this type of malicious code to be a
virus, since it does not modify existing files.)


What is an armored virus?

An ARMORED virus is one which uses special tricks to make the tracing, dis-
assembling and understanding of their code more difficult.  A good example is
the Whale virus.


Miscellaneous Jargon and Abbreviations

BSI = Boot Sector Infector: a virus which takes control when the computer
attempts to boot (as opposed to a file infector).

CMOS = Complementary Metal Oxide Semiconductor: A memory area that is used in
AT and higher class PCs for storage of system information. CMOS is battery
backed RAM (see below), originally used to maintain date and time information
while the PC was turned off.  CMOS memory is not in the normal CPU address
space and cannot be executed.  While a virus may place data in the CMOS or may
corrupt it, a virus cannot hide there.

DOS = Disk Operating System.  We use the term "DOS" to mean any of the MS-DOS,
PC-DOS, or DR DOS systems for PCs and compatibles, even though there are
operating systems called "DOS" on other (unrelated) machines.

MBR = Master Boot Record: the first Absolute sector (track 0, head 0, sector 1)
on a PC hard disk, that usually contains the partition table (but on some PCs
may simply contain a boot sector).  This is not the same as the first DOS sector
(Logical sector 0).

RAM = Random Access Memory: the place programs are loaded into in order to
execute; the significance for viruses is that, to be active, they must grab
some of this for themselves.  However, some virus scanners may declare that
a virus is active simply when it is found in RAM, even though it might be
simply left over in a buffer area of RAM rather than truly being active.

TOM = Top Of Memory: the end of conventional memory, an architectural design
limit at the 640K mark on most PCs.  Some early PCs may not be fully populated,
but the amount of memory is always a multiple of 64K.  A boot-record virus on a
PC typically resides just below this mark and changes the value which will be
reported for the TOM to the location of the beginning of the virus so that it
won't get overwritten.  Checking this value for changes can help detect a
virus, but there are also legitimate reasons why it may change (see C11).  A
very few PCs with unusual memory managers/settings may report in excess of
640K.

TSR = Terminate but Stay Resident: these are PC programs that stay in memory
while you continue to use the computer for other purposes; they include pop-up
utilities, network software, and the great majority of viruses.  These can
often be seen using utilities such as MEM, MAPMEM, PMAP, F-MMAP and INFOPLUS.


				    -=��

Here are a few lesser-known viruses I've found out about, and thought you
should know about so that you may be on the lookout for them.....

 BOBBIT VIRUS: Removes a vital part of your hard disk then re-attaches it.
 (But that part will never work again.)

 OPRAH WINFREY VIRUS: Your 200MB hard drive suddenly shrinks to 80MB and then
 slowly expands back to 200MB.

 AT&T VIRUS: Every three minutes it tells you what great service you are
 getting.

 MCI VIRUS: Every three minutes it reminds you that you are paying too much
 for the AT&T virus.

 PAUL REVERE VIRUS: This revolutionary virus does not horse around. It warns
 you of impending hard disk attack---once if by LAN, twice if by C:.

 POLITICALLY CORRECT VIRUS: Never calls itself a "virus", but instead refers
 to itself as an "electric micro-organism."

 ROSS PEROT VIRUS: Activates every component in your system, just before the
 whole damn thing quits.

 MARIO CUOMO VIRUS: It would be a great virus, but it refuses to run.

 TED TURNER VIRUS: Colorizes your monochrome monitor.

 ARNOLD SCHWARZENEGGER VIRUS: Terminates and stays resident. It'll be back.

 DAN QUAYLE VIRUS: Prevents your system from spawning any child process
 without joining into a binary network.

 DAN QUAYLE VIRUS #2: Their is sumthing rong wit yor komputer, ewe just cant
 figyour out watt!

 GOVERNMENT ECONOMIST VIRUS: Nothing works, but all your diagnostic software
 says everything is fine.

 NEW WORLD ORDER VIRUS: Probably harmless, but it makes a lot of people
 really mad just thinking about it.

 FEDERAL BUREAUCRAT VIRUS: Divides your hard disk into hundreds of little
 units, each of which does practically nothing, but all of which claim to be
 the most important part of your computer.

 GALLUP VIRUS: Sixty percent of the PCs infected will lose 38 percent of
 their data 14 percent of the time.  (plus or minus a 3.5 percent
 margin of error)

 TEXAS VIRUS: Makes sure that it is bigger than any other file.

 ADAM AND EVE VIRUS: Takes a couple of bytes out of your Apple.

 CONGRESSIONAL VIRUS: The computer locks up, screen splits erratically with a
 message appearing on each half blaming the other side for the problem.

 AIRLINE VIRUS: You're in Dallas, but your data is in Singapore.

 FREUDIAN VIRUS: Your computer becomes obsessed with marrying its own
 motherboard.

 PBS VIRUS: Your programs stop every few minutes to ask for money.

 OLLIE NORTH VIRUS: Causes your printer to become a paper shredder.

 NIKE VIRUS: Just does it.

 SEARS VIRUS: Your data won't appear unless you buy new cables, power supply
 and a set of shocks.

 JIMMY HOFFA VIRUS: Your programs can never be found again.

 CONGRESSIONAL VIRUS #2: Runs every program on the hard drive simultaneously,
 but doesn't allow the user to accomplish anything.

 STAR TREK VIRUS: Invades your system in places where no virus has gone
 before.

 HEALTH CARE VIRUS: Tests your system for a day, finds nothing wrong, and
 sends you a bill for $4,500.

 GEORGE BUSH VIRUS: It starts by boldly stating, "Read my docs... No new
 files!" on the screen.  It proceeds to fill up all the free space on your
 hard drive with new files, then blames it on the Congressional Virus.

				    -=��
ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ               Type 2/0 Forum               Ӎ
	       Ӡ            Edited by Sam (1@4051)          Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

Have a comment?  Got a beef?  Wanna issue long-overdue kudos?  Here is the
for it!  Send your letters/comments/questions to Sam, 1@4051, for publication
in WWIVNews.

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ           Microsoft's  Bid to              Ӎ
	       Ӡ           Acquire the Vatican              Ӎ
	       Ӡ     (Quasi-TechNotes by Sam (1@4051))      Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

[Note: In the absence of Omega Man's TechNOTES, which he has told me he will
try to have in the next newsletter, I have attempted to try to fill the void
until Omega Man readies his submission. I found this article on the AP news-
wire, and thought some of you may find it interesting. I am for capitalism
as much as anyone, but perhaps this time Mr Gates has gone to far....]


MICROSOFT Bids to Acquire Catholic Church
By Hank Vorjes

VATICAN CITY (AP) -- In a joint press conference in St. Peter's Square this
morning, MICROSOFT Corp. and the Vatican announced that the Redmond software
giant will acquire the Roman Catholic Church in exchange for an unspecified
number of shares of MICROSOFT common stock. If the deal goes through, it will
be the first time a computer software company has acquired a major world
religion.

With the acquisition, Pope John Paul II will become the senior vice-president
of the combined company's new Religious Software Division, while MICROSOFT
senior vice-presidents Michael Maples and Steven Ballmer will be invested in
the College of Cardinals, said MICROSOFT Chairman Bill Gates.

"We expect a lot of growth in the religious market in the next five to ten
years," said Gates. "The combined resources of MICROSOFT and the Catholic
Church will allow us to make religion easier and more fun for a broader range
of people."

Through the MICROSOFT Network, the company's new on-line service, "we will
make the sacraments available on-line for the first time" and revive the
popular pre-Counter-Reformation practice of selling indulgences, said Gates.
"You can get Communion, confess your sins, receive absolution -- even reduce
your time in Purgatory -- all without leaving your home."

A new software application, MICROSOFT Church, will include a macro language
which you can program to download heavenly graces automatically while you are
away from your computer.

An estimated 17,000 people attended the announcement in St Peter's Square,
watching on a 60-foot screen as comedian Don Novello -- in character as
Father Guido Sarducci -- hosted the event, which was broadcast by satellite
to 700 sites worldwide.

Pope John Paul II said little during the announcement. When Novello chided
Gates, "Now I guess you get to wear one of these pointy hats," the crowd
roared, but the pontiff's smile seemed strained.

The deal grants MICROSOFT exclusive electronic rights to the Bible and the
Vatican's prized art collection, which includes works by such masters as
Michelangelo and Da Vinci. But critics say MICROSOFT will face stiff challenges
if it attempts to limit competitors' access to these key intellectual
properties.

"The Jewish people invented the look and feel of the holy scriptures," said
Rabbi David Gottschalk of Philadelphia. "You take the parting of the Red Sea
-- we had that thousands of years before the Catholics came on the scene."

But others argue that the Catholic and Jewish faiths both draw on a common
Abrahamic heritage. "The Catholic Church has just been more successful in
marketing it to a larger audience," notes Notre Dame theologian Father
Kenneth Madigan. Over the last 2,000 years, the Catholic Church's market
share has increased dramatically, while Judaism, which was the first to
offer many of the concepts now touted by Christianity, lags behind.

Historically, the Church has a reputation as an aggressive competitor,
leading crusades to pressure people to upgrade to Catholicism, and entering
into exclusive licensing arrangements in various kingdoms whereby all subjects
were instilled with Catholicism, whether or not they planned to use it. Today
Christianity is available from several denominations, but the Catholic version
is still the most widely used. The Church's mission is to reach "the four
corners of the earth," echoing MICROSOFT's vision of "a computer on every
desktop and in every home".

Gates described MICROSOFT's long-term strategy to develop a scalable religious
architecture that will support all religions through emulation. A single core
religion will be offered with a choice of interfaces according to the religion
desired -- "One religion, a couple of different implementations," said Gates.

The MICROSOFT move could spark a wave of mergers and acquisitions, according to
Herb Peters, a spokesman for the U.S. Southern Baptist Conference, as other
churches scramble to strengthen their position in the increasingly competitive
religious market.

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ          Filo's Mod of the Month           Ӎ
	       Ӡ             by Filo (1@4000)               Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

The Mod of the Month is selected by Filo and represents his choice of what
appears to be the most promising mod posted during the past month on Mod Net
(subtype 2370). UUencoded mods are not considered for selection as part of the
mod of the month due to the difficulty of including them in the WWIVnews. Mods
which involve the use of related files such as ENHANCE.C, or any of the
various COMMON type files are also not considered due to the amount of space
required to include them here.  Many of these mods have NOT been tested by
Filo and are selected based on their description as a promising, practical
mod.

This month's selection is written by Papa Bear.

Papa Bear #1 @11579

ۄńńńńńńńńńńńńńŁ CEREBRUM RELEASE!ńńńńńńńńńńńńńńĿ
ӠMod Name: SPV031IK.MOD     Mod Authors: 8-Ball                             Ӎ
ӠDifficulty: ҲҲҲаа <<< TAKE NOTE!   Repo Man                           Ӎ
ӠRevision Dates: FIRST [01/10/92]        Captain EJ                         Ӎ
Ӡ                LAST  [07/18/95]        Pİàሃr  (1@11579 WW4net)        Ӎ
ӠWWIV Version: 4.24  [not for versions previous to 4.24!]                   Ӎ
ӠFiles Affected: MSGBASE.C MSGBASE1.C READMAIL.C FCNS.H VARS.H VARDEC.H     Ӎ
ӠDescription: 8-Ball's Quote Mod! As revised by Repo Man and myself.  Code  Ӎ
Ԧrom Captain EJ included.  I think this is the *best* quote mod I've seen!  Ӎ
Ӿ>> NOW WORKS WITH NON-FSE's AS WELL AS FSE's!!! Added Anonymous support.   Ӎ
ǍńńńńńńńńńńńńńńńńńńΑ΄ńńńńńńńńńńńńńńńńń͵
ӠStarPort Valhalla [   ]   -     ASV 28.8kbps  Home of the SPV mod series!  Ӎ
DńńńńńńńńńńńńńńńńńńΏ΄ńńńńńńńńńńńńńńńńńř

		     >>> OFFICIAL WWIV SUPPORT SITE! <<<

 Word of Warning:  You installed it, you're responsible! Make back-ups BEFORE
 attempting to install this modification!  Read all text before beginning.
 Again, READ THIS ENTIRE MOD >BEFORE< BEGINNING!
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
 LEGEND:
 ==  Original Code [use this to search on]
 ++  Add this Line [mods ALWAYS add stuff, don't they?]
 --  Delete this Line [or comment out, its not needed]
 -+  Change this Line [I usually comment these lines]
 ... Skipping some code here [keeps the mod shorter]
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
 LONG DESCRIPTION:  The famous SPV modification redone for WWIV 4.24.  You
should note that 4.24 introduced the M command at the mail prompt that will
allow you reply to E-Mail to a different address than it was sent from.  For
that reason, this that feature has been removed from this mod proper.  The @
command will allow you to send a subboard post to a E-Mail address other than
the one it originated from.

REVISION "K"
  - Added ability to use the /Q command in WWIVEdit to quote text.
  - Added #define so you could simply not bother FSED users with quoting
    individual lines.  (Since the /Q now works.)
  - Found a HUGE section of existing 4.24 coding that can now be removed.

To UPGRADE:
  Find all occurances of SPV031IK and add/change/delete accordingly.  See
  STEPs: 7, 9a, 11, 13a, 13b, 14, 15a
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 1: Add this line the the top of MSGBASE.C

== #include "vars.h"
==
== #pragma hdrstop

== #include <mem.h>
== #include <errno.h>
== #include "subxtr.h"
++ #include <ctype.h>                                               // SPV031
==
== #define ALLOW_FULLSCREEN 1
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 2: In MSGBASE.C, make the following changes in:
	char *readfile(messagerec *m1, char *aux, long *l)

==        return(NULL);
==      }
==      l1=filelength(f);
-+      if ((b=malloca(l1+2L))==NULL) {                   // SPV031 - add +2L
==        sh_close(f);
==        return(NULL);
==      }
. . . SKIPPING SOME LINES HERE, TAKE CARE TO NOTE THE PROPER LOCATION! . . .
==        return(NULL);
 ==      }
==      l1=filelength(f);
-+      if ((b=malloca(l1+258L))==NULL) {       // SPV031 - change 256 to 258
==        sh_close(f);
==        return(NULL);
==      }
==      sh_read(f,(void *)b,l1);
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 3: Add these variable declarations in MSGBASE.C to  void inmsg(...)

==  struct {char tlen, ttl[81], anon; } fedit_data;
==  xtrasubsnetrec *xnp;
==  char q_txt[256];
++  FILE *pbquote;                                                  // SPV031
++  char pb[13],pb1[161];                                           // SPV031
++  int j=0;                                                        // SPV031
==
==  oiia=iia;
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 3a:  Add these lines in the same function

==    inputl(title,60);
==  }
==  if ((title[0]==0) && (needtitle)) {

// SPV031 block START
    sprintf(pb1,"%sINPUT.MSG",syscfgovr.tempdir);
    unlink(pb1);
// SPV031 block END

==    pl(get_string(14));
==    m.stored_as=0xffffffff;
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 4: Still in void inmsg(...) a little ways down, make these changes

==    outstr(get_string(627));
==    pln(maxli);
==    pl(get_string(628));
// SPV031 block START
    if (quoted) {
      nl();
      pl("9Type 1/Q9 in the message to view the quoted text!0");
      nl();
    }
// SPV031 block END
==    strcpy(s,get_string(629));
==    s[thisuser.screenchars]=0;
==    pl(s);
. . . JUST A LITTLE FURTHER DOWN NOW . . .
==        if (stricmp(s,get_string(942))==0) {
==          savel=0;
==          printmenu(2);
==        }
// START SPV031 BLOCK COPY
        if (stricmp(s,"/Q")==0) {
//        if (stricmp(stripcolors(s),"/Q")==0) {          // NOTE 1 -- SPV031
          if (quoted) {
            sprintf(pb,"%sINPUT.MSG",syscfgovr.tempdir);
            printfile(pb);
          } else {
            nl();
            pl("6You must quote the message you're replying to to0");
            pl("6use this command.  Please continue your message.0");
            nl();
	  }
        }
// END SPV031 BLOCK COPY
==        if (stricmp(s,get_string(943))==0) {
==          savel=0;
==          prt(5,get_string(630));

NOTE 1: If using FMD's FMD-39A.MOD (keep color) uncomment this line, and
        comment out the one ABOVE it!
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 5: Still in void inmsg(...) a LOT further down, make these changes

==      sh_read(i5, (void *) (& (b[l1]) ),ll);
==      l1 += ll;
==      sh_close(i5);
==    } else {
// START SPV031 BLOCK COPY
      if (quoted) {
        sprintf(pb,"%sINPUT.MSG",syscfgovr.tempdir);
        pbquote=fsh_open(pb,"rt");
	if (!pbquote) {
          nl();
          pl(get_stringx(4,91));
	  j=0;
	  nl();
        } else {
          do {
            fgets(pb1,160,pbquote);
            addline(b,pb1,&l1);
          } while (!feof(pbquote));
        }
        fsh_close(pbquote);
        unlink(pb);
      }
      nl();
      if (j)
        pl(get_stringx(4,92));
// END SPV031 BLOCK COPY
==      for (i5=0; i5<curli; i5++)
==        addline(b,&(lin[i5*LEN]),&l1);
==    }
==
==    if (sysinfo.flags & OP_FLAGS_MSG_TAG) {
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 5a: Add these lines a bit further down:

==    if (fsed)
==      unlink(fnx);
==    pl(get_string(14));

// SPV031 block START
    sprintf(pb1,"%sINPUT.MSG",syscfgovr.tempdir);
    unlink(pb1);
// SPV031 block END

==    m.stored_as=0xffffffff;
==  }
==  *m1=m;
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 6: Add these lines in MSGBASE.C

==    if (an) {
==      strcat(s,nam(&ur,un));
==      sysoplog(s);
++      Unknown=0;                                                  // SPV031
==    } else {
++      Unknown=1;                                                  // SPV031
==      strcpy(s1,s);
==      strcat(s1,nam(&ur,un));
==      sysoplog(s1);
==      strcat(s,get_string(482));
. . . A little farther down . . .
==    if (an) {
==      read_user(un,&ur);
==      strcpy(s2,nam(&ur,un));
++      Unknown=0;                                                  // SPV031
-+    } else {                                              // SPV031 added {
++      Unknown=1;                                                  // SPV031
==      strcpy(s2,get_string(482));
++    }                                                             // SPV031
==  } else {
==    if (net_num_max>1) {
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 7: Add these three functions to the end of MSGBASE.C

// SPV031 BLOCK COPY START
void extract_out2(char *org, long len, int type, long daten)
{
  char s[255],s1[81],s2[81],*p,buf[255],*b,tb[81],tb1[81],b1[81],pb[81],ch;
  int i,ii=0,j,jj,length,qnq=1,line_control,done,k;
  FILE *Output;

  printfile("QUOTE");
  if (!okfsed())
    pausescr();
  nl();
  quoted=0;
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
  if (okfsed()) {
    npr("5Do you want to select the lines to quote? 0");
    if (!yn())
      qnq=0;
    else
      outchr(12);
  } else
    outchr(12);
#else                                                             // SPV031IK
  if (okfsed())                                                   // SPV031IK
    qnq=0;                                                        // SPV031IK
  else                                                            // SPV031IK
    outchr(12);                                                   // SPV031IK
#endif                                                            // SPV031IK
  p=b=org;
  if (!hangup) {
    sprintf(s2,"%sINPUT.MSG",syscfgovr.tempdir);
    unlink(s2);
    if ((Output=fopen(s2,"w+t"))==NULL) {
      sprintf(s,"6ERR2: 9Could not create 1%s9! 5(1quote file5)0");
      nl();
      if (so())
	pl(s);
      else {
        ssm(1,0,s);
	pl("6Could not create quote file -- SysOp notified!0");
      }
      nl();
      return;
    }
    while (*p!='\r')
      ++p;
     *p='\0';
    strcpy(s1,b);
    p+=2;
    len=len-(p-b);
    b=p;
    while (*p!='\r')
      ++p;
    p+=2;
    len=len-(p-b);
    b=p;
    sprintf(pb,"%s",ctime(&daten));
    sprintf(s2,"1%s7, 1%s7. 1%s7, 1%s0",
           (strnncpy(pb,0,2)),
	   (strnncpy(pb,4,6)),
	   (strnncpy(pb,8,9)),
           (strnncpy(pb,20,23)));
    strcpy(tb1,stripcolors(strip_to_node(s1)));
    properize(tb1);
    if (strlen(tb1)%2!=0)
      sprintf(tb," %s",tb1);
    else
      strcpy(tb,tb1);
    jj=tb1[0]=0;
    for (j=0;j<strlen(tb);j++) {
      if ((toupper(tb[j])==tb[j]) &&
        (isalpha(tb[j]))) {
        tb1[jj]=tb[j];
        tb1[jj+1]=0;
        jj++;
      }
    }
    if (!tb1[0]) {
      if (tb[0]==32)
	tb1[0]=tb[1];
      else
        tb1[0]=tb[0];
      tb1[1]=0;
    }
    if (Unknown) {
      sprintf(tb," %s",get_string(482));
      strcpy(tb1,"6>2U6<0");
      Unknown=0;
    }
    switch (type) {
      case 1:
        sprintf(buf,"3Ϡ9In your E-Mail of 1%s7,9 you wrote: 3ΰ",s2);
        break;
      case 2:
        sprintf(buf,
         "3Ϡ9This was forwarded from 1%s9, sent on 1%s9. 3ΰ",tb,s2);
	break;
      case 3:
        sprintf(buf,
		  "3Ϡ9In a message posted 1%s7,9 you wrote: 3ΰ",s2);
	break;
      case 4:
        sprintf(buf,"3Ϡ9On 1%s7, 1%s9 said this: 3ΰ",s2,tb);
        break;
    }
    length=0;
    for (j=0;j<strlen(buf);j++) {
      if ((buf[j]!='\003') && (buf[j-1]!='\003'))
        length++;
    }
    jj=(39-(length/2));
    fprintf(Output,"2%s%s%s0\n",charstr(jj,196),buf,charstr(jj,196));
    line_control=1;
    done=0;
    k=77-strlen(tb1);
    while ((len>0) && (!done) && (!hangup)) {
      while ((strchr("\r\001",*p)==NULL) && ((p-b)<(len<253 ? len : 253)))
        ++p;
      if (*p=='\001')
	*(p++)='\0';
      *p='\0';
      if ((*b!='\004') && (strchr(b,'\033')==NULL)) {
        for (j=0;j<k;j++) {
          if (((b[j]=='0') && (b[j-1]!='\003')) || (b[j]!='0'))
            b1[j]=b[j];
          else
            b1[j]='7';
          b1[j+1]=0;
        }
        if ((qnq) && (line_control>thisuser.screenlines)) {
          line_control=0;
          outchr(12);
        }
        if ((qnq) && (okansi())) {
          goxy(0,line_control);
          line_control++;
	}
        if ((ii) && (okansi()) && (qnq)) {
          pl(charstr(79,32));
	  goxy(0,line_control-1);
	}
        sprintf(buf,"1%s7Ϲ%s0",tb1,b1);
        if (qnq) {
          if (!okansi())
            outchr(12);
          pl(buf);
          if (okansi()) {
            goxy(0,line_control);
            line_control++;
          }
          npr(
"5Quote this line? 3(1[2Y1]es, [2n1]o, [2q1]uit, [2a1]bort3) 0");
          ch=onek("QY\rNA");
          switch (ch) {
            case '\r':
            case 'Y':
	      fprintf(Output,"%s\n",buf);
              quoted=1;
              ii=0;
	      line_control--;
	      goxy(0,line_control);
              pl(charstr(79,32));
              done=0;
              break;
            case 'N':
              line_control-=2;
              ii=1;
              done=0;
              break;
            case 'A':
              pl("Aborted!");
              quoted=0;
              done=1;
              break;
            default:
            case 'Q':
	      done=1;
              break;
          }
	} else {
	  fprintf(Output,"%s\n",buf);
          quoted=1;
        }
      }
      p+=2;
      len=len-(p-b);
      b=p;
    }
    nl();
    pl("5Enter your reply text 3(1default6: 2My reply to this3)0");
    mpl(60);
    inputl(s,60);
    if (!s[0])
      strcpy(s,"My reply to this");
    jj=(39-((strlen(s)+4)/2));
    fprintf(Output,"2%s3Ϡ4%s3 β%s0\n",
	    charstr(jj,196),s,charstr(jj,196));
    outchr(12);
    if (!okfsed())
      fprintf(Output,"\n");
    fclose(Output);
//    if (!quoted) {                                      // SPV031IK removed
//      sprintf(s2,"%sINPUT.MSG",syscfgovr.tempdir);      // SPV031IK removed
//      unlink(s2);                                       // SPV031IK removed
//    }                                                   // SPV031IK removed
  }
  farfree(org);
}

char *strip_to_node(char *txt)
{
  int i,ok,ok1,i1=-1;
  char s[81],s1[81];

  if (txt[0]==96 && txt[1]==96) {
    for (i=2;(i<=strlen(txt)) && (txt[i]!=96);i++) {
       s[i-2]=txt[i];
       s[i-1]=0;
    }
    return(s);
  }
  if (strstr(txt,"AT")) {
    ok=1;
    for (i=2; i<strlen(txt); i++) {
      if (ok) {
        s[++i1]=txt[i];
        s[i1+1]=0;
      }
      if (txt[i+1]==96)
        ok=0;
    }
    return(s);
  }
  if (strstr(txt,"@")) {
    if (strstr(txt,"#")==NULL) {
      strcpy(s1,strrev(txt));
      ok=ok1=0;
      for (i=0;i<strlen(s1);i++) {
        if ((ok) && (ok1)) {
	  s[i1++]=s1[i];
	  s[i1+1]=0;
        }
        if ((ok1) && (!ok)) {
          if (s1[i+1]==32)
            ok=1;
        }
        if ((s1[i]==64) && (!ok1))
          ok1=1;
      }
      return(strrev(s));
    } else {
      ok=1;
      for (i=0; i<strlen(txt); i++) {
        if (ok) {
          s[i]=txt[i];
          s[i+1]=0;
	}
        if (txt[i+2]==35)
          ok=0;
      }
      return(s);
    }
  }
  return(txt);
}

char *strnncpy(char *str_parse, int start_ch, int end_ch)
{
  int i,j=0;
  char s[255];

  if (start_ch<0)
    start_ch=0;
  if (end_ch>(strlen(str_parse)))
    end_ch=strlen(str_parse);
  for (i=start_ch;i<(end_ch+1);i++) {
    s[j]=str_parse[i];
    s[j+1]=0;
    j++;
  }
  return(s);
}
// SPV031 BLOCK COPY END

NOTE:  To use this function, simply call it something like:

  strcpy(s,(strnncpy("This is a test",5,8)));

  This places "is a" into the variable s.
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 8: Prototype the function ins FCNS.H:

== int existprint(unsigned char *fn);
== void read_message(int n, int *next, int *val);
== void lineadd(messagerec *m1, char *sx, char *aux);
++ void extract_out2(char *org, long len, int type, long daten);     //SPV031
++ char *strip_to_node(char *txt);                                   //SPV031
++ char *strnncpy(char *str_parse, int start_ch, int end_ch);        //SPV031
==
== /* File: msgbase1.c */
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 9: Add these global variable declarations to VARS.H in the __EXTRN__
        int section:

==               use_workspace, using_modem, wfc, x_only,
==               instance,debuglevel,multitasker,tagging,tagptr,cursormove,
-+              titled, abortext,quoted,Unknown;                    // SPV031
==
== __EXTRN__ unsigned short com_speed, *csn_index, crc, *gat, modem_flag,
==                       modem_mode, modem_speed, net_sysnum, curloc, eflags;
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 9a:  Add this line to the top of VARDEC.H

== #ifndef __OS2__
== #define RIPDRIVE
== #endif
==
++ #define BOTHER_USER_QUOTE                               // SPV031IK - NOTE
==
== #define OK_LEVEL 0
== #define NOK_LEVEL 1

NOTE : Comment this line out if you don't want to bother your users by asking
       them if they want to quote.  With this commented out, it will quote
       everytime.  Additionally, when commented out, it'll stop asking FSED
       users if they want to quote by line ('cause the /Q works in WWIVEdit
       now.)
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 10: In MSGBASE1.C, add this line in
         void scan(int msgnum, int optype, int *nextsub)

==    write_inst(INST_LOC_SUBS, usub[cursub].subnum, INST_FLAGS_NONE);
==    switch(optype) {
==      case 0: /* Read Prompt */
++        quoted=0;                                                 // SPV031
==        if (E_C) {
==          sprintf(s,"1%s0:7(11-%u,^%u7)1,? 0: ",get_string(678),
==            nummsgs,msgnum);
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 11: In MSGBASE1.C, make the following changes in:
	 void scan(int msgnum, int optype, int *nextsub)

==          optype=2;
==          msgnum=i;
==        } else
==          if (s[1]==0) {
// START SPV031 BLOCK COPY
            if ((s[0]=='A') || (s[0]=='W')) {
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
              nl();
              npr("5Quote from this message? 0");
              if (ny()) {
#endif                                                            // SPV031IK
                p2=*get_post(msgnum);
                grab_quotes(&(p2.msg),subboards[curlsub].filename);
                if ((msgnum>0) && (msgnum<=nummsgs)) {
		  b=readfile(&(get_post(msgnum)->msg),
                            (subboards[curlsub].filename),&len);
                  extract_out2(b,len,((s[0]=='A')?3:4),p2.daten);
		}
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
              }
#endif                                                            // SPV031IK
            }
// END SPV031 BLOCK COPY
==            switch(s[0]) {
==
==              /* Find addition */
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 12: In MSGBASE1.C, make the following changes in:
         void scan(int msgnum, int optype, int *nextsub)

++              case '@':                                         // SPV031
==              case 'A':
==                if (rip_on()) {
==                  sprintf(s,"\n!|w000%c271610|e|#\r ", formery);
==                  comstr(s);
. . . SKIPPING DOWN A HAIR . . .
==                    pl(get_string(679));
==                    break;
==                  }
==                }
// START SPV031 BLOCK COPY
                if (s[0]=='@') {
                  nl();
                  pl("4Replying to a different address!0");
                  send_email();
                } else {
// END SPV031 BLOCK COPY
==                  if ((lcs()) || (ss.ability & ability_read_post_anony) ||
==                     (get_post(msgnum)->anony==0))
==                  else
==                    email(get_post(msgnum)->owneruser,
==                     get_post(msgnum)->ownersys,0,get_post(msgnum)->anony);

++                }                                         // SPV031 added }

==                irt_sub[0]=0;
==                grab_quotes(NULL, NULL);

  DID YOU ADD THE } (4 LINES ABOVE HERE)
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 13: Make these changes in MSGBASE1.C, function:
         void scan(int msgnum, int optype, int *nextsub)

==            if ((msgs[msgnum].anony & anony_sender) &&
==              ((syscfg.sl[actsl].ability & ability_read_post_anony)==0)) {
==                strcat(s,get_string(482));
++              Unknown=1;                                          // SPV031
==            } else {
++              Unknown=0;                                          // SPV031
==              b=readfile(&(msgs[msgnum].msg),(subboards[curlsub].filename),
==                         &len);
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 13a: Add these lines to MSGBASE1.C
          void grab_quotes(messagerec *m, char *aux):


++ //#define REMOVE_COLOR                                    // SPV031IK NOTE
==
== void grab_quotes(messagerec *m, char *aux)
== {
++   FILE *File;                                                  // SPV031IK
++   char ch,pb[161],pb1[161];                                    // SPV031IK
==   char *ss,*ss1;
==   long l,l1,l2,l3;
==   FILE *f;

NOTE: Normally this mod adds quite a bit of color to the quoted text.  In
      using the /Q mode of WWIVEdit, all this color *can* cause the editor
      to add extra, blank, lines.  These lines can easily be removed by you
      using CTRL-Y on the blank line.  (This is due to the line length being
      80 instead of 79 characters.)  If you want a more ordered output, one
      that has no blank lines, and no color as well, then uncomment this
      line (#define REMOVE_COLOR).
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 13b: Now add this block at the end of the same function:

==        quotes_nrm=NULL;
==        quotes_nrm_l=0;
== #endif
==      }
==    }
==  }

// START SPV031IK block copy
  sprintf(q_txt,"%sINPUT.MSG",syscfgovr.tempdir);
  if (exist(q_txt)) {
    f=fopen(q_txt,"rt");
    sprintf(q_txt,"%sQUOTES.TXT",syscfgovr.tempdir);
    File=fopen(q_txt,"wt");
    fputs(" \n \n",File);
    pb1[0]=0;
    while ((!hangup) && (!feof(f))) {
      fgets(pb,160,f);
      if (strcmp(pb,pb1)) {
	strcpy(pb1,pb);
#ifdef REMOVE_COLOR
        fprintf(File,"%-79s",stripcolors(pb));
#else
	fprintf(File,"%s",pb);
#endif
      }
    }
    fclose(f);
    fclose(File);
    nl();
    npr("5Auto-Display quoted text in editor? 0");
    if (!ny()) {
      sprintf(q_txt,"%sINPUT.MSG",syscfgovr.tempdir);
      unlink(q_txt);
    }
  }
// END SPV031IK block copy

== }
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 14: Now in READMAIL.C make these changes in void readmail(void)

==            pl(get_string(715));
==            nl();
==            break;
==          }
==          nln(2);
// START SPV031 BLOCK COPY
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
          nl();
          npr("5Quote this message?0 ");
          if (ny()) {
#endif                                                            // SPV031IK
            b=readfile(&(m.msg),"EMAIL",&len);
            extract_out2(b,len,2,m.daten);
            nl();
            pl("6Forwarding this E-Mail.0");
            send_email();
//            break;                            // SPV031IK REMOVED THIS LINE
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
          }
#endif                                                            // SPV031IK
// END SPV031 BLOCK COPY
==          prt(2,get_string(716));
==          input(s,75);
. . . SKIPPING SOME MORE LINES! . . .
==        case 'A':
==        case 'S':
==        case 'M':
// START SPV031 BLOCK READ
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
          nl();
          npr("5Quote from this message? 0");
          if (ny()) {
#endif                                                            // SPV031IK
            grab_quotes(&(m.msg),"EMAIL");
            b=readfile(&(m.msg),"EMAIL",&len);
            extract_out2(b,len,((ch=='M')?2:1),m.daten);
            if (ch=='M') {
	      nl();
              pl("5Forwarding this E-Mail!0");
            }
#ifdef BOTHER_USER_QUOTE                                          // SPV031IK
	  }
#endif                                                            // SPV031IK
// END SPV031 BLOCK READ
==          if (rip_on()) {
==            sprintf(s,"\n!|w000%c271610|e|#\r ", formery);
. . .SKIP DOWN JUST A FEW MORE LINES . . .
==            i2=0;
==            break;
==          } else if (m.fromuser!=65535) {

--            grab_quotes(&(m.msg),"EMAIL");       // SPV031 delete this line

==            if (ch=='M') {
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 15: Make these changes throughout READMAIL.C

==      sprintf(s,"2%3d 7%c0 ",i+1,okansi()?'ӧ:'|');
==      if ((m.anony & anony_sender) &&
==          ((ss.ability & ability_read_email_anony)==0)) {
==        strcat(s,get_string(482));
++        Unknown=1;                                                // SPV031
==      } else {
++        Unknown=0;                                                // SPV031
==        if (m.fromsys==0) {
==          if (m.fromuser==65535) {
. . . SKIPPING DOWN . . .
==                  strcpy(s,nam1(&thisuser,usernum,net_sysnum));
-+                if (m.anony & anony_receiver) {           // SPV031 added {
==                  strcpy(s,get_string(482));
++                  Unknown=1;
++                } else
++                  Unknown=0;
==                strcat(s,get_string(713));
. . . DOWN SOME MORE . . .
==            sprintf(s,"%s: %s",net_name,nam1(&thisuser,usernum,net_sysnum));
==          else
==            strcpy(s,nam1(&thisuser,usernum,net_sysnum));
-+          if (m.anony & anony_receiver) {                 // SPV031 added {
==            strcpy(s,get_string(482));
++            Unknown=1;
++          } else
++            Unknown=0;
==          strcat(s,get_string(713));
. . .YEP, GO DOWN SOME MORE! (YES IT LOOKS THE SAME AS ABOVE). . .
==            sprintf(s,"%s: %s",net_name,nam1(&thisuser,usernum,net_sysnum));
==          else
==            strcpy(s,nam1(&thisuser,usernum,net_sysnum));
-+          if (m.anony & anony_receiver) {                 // SPV031 added {
==            strcpy(s,get_string(482));
++            Unknown=1;
++          } else
++            Unknown=0;
==          strcat(s,get_string(713));
==          strcat(s,date());
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 15a: Go back to the top of the top of the void readmail(void) function
	  and find this large block of code.  Remove it all.

// SPV031IK START CODE REMOVAL
--          prt(2,get_string(716));
--          input(s,75);

. . . continue removing (commenting out) code all the way down to here . . .

--                  if ((!wfc) && (incom))
--                    topscreen();
--                  mailcheck=1;
--                }
--              }
--            }
--          }
// SPV031IK END CODE REMOVAL
==          break;
==        case 'A':
==        case 'S':
==        case 'M':
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 16: In NEWUSER.C, make this change in: void properize(char *s)

==  for (i=0;i<strlen(s);i++) {
==    if ((i==0) || ((i>0) && ((s[i-1]==' ') ||
++        (s[i-1]=='-') ||                                          // SPV031
==        (s[i-1]=='.')))) {
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 17: Make a file in your GFILES and call it QUOTE.MSG.  Mine looks like
	this, and yours should be similar!

QUOTE.MSG
---------

    You are about to send a msg/e-mail with a quotation in it.  You should
    remove unnecessary lines, including taglines and signoff macros.  This
			helps reduce network LD costs.

ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
STEP 18: Recompile this beast, and enjoy your new quoting!
ńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńč
  Well, this is a complete overhauled mod for 4.24.  I've installed it first
thing on my virgin 4.24 system 'cause this is the most installation intensive
mod I make.

  The word is, it works fine...

    This mod is copyright 1993-1995 by Tracy Baker, aka Papa Bear, and is
 distributed as freeware.  Permission is granted to distribute and post this
   mod on BBS systems and online services, provided no alterations are made
  (removal of message headers/taglines allowed).  This mod may contain some
  parts of WWIV source code, which is copyright 1988-1994 by Wayne Bell and
    licensed only to registered users of WWIV.  Use of WWIV source without
     registration constitutes a license violation and could lead to legal
			prosecution and certain doom.
   Shareware distributors and CD-ROM publishers may not distribute this mod
 without express written permission of the Author or WWIV Software Services.


				    -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ                "Adult"  BBS's,             Ӎ
	       Ӊ    and the Bill that Wasn't         Ӎ
	       Ӡ               by Sam (1@4051)              Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

There has been as of late a lot of talk in the news about pornography and the
'Super Information Highway" (SIH).  While we in WWIVLand are probably not
considered by many to be much more than a feeder road to the SIH, we never-
theless face the same scrutiny, and are subject to the same sort of mis-
information and mischaracterization that is abound in the media regarding
"online computer services ".

Congress recently voted on a landmark piece of legislation, dubbed "The
Communications Decency Act of 1995".  One of the provisions of this bill would
have called for people who maintain hubs- server administrators as it relates
to WWIVNet- to be held accountable for data deemed pornographic or otherwise
indecent that happened to pass through their system.

As all of you probably know, somewhere between 30 and 100 megs of information
a day pass through the servers in WWIVNet, and probably 10 to 100 and possibly
as much as 1000 times that amount pass through true internet providers each
day.

While that provision was eventually withdrawn from the bill, the debate over
pornography and online services (BBS's notwithstanding) rages on.

While I am not an attorney and have very little formal legal training, a few
things you should probably keep in mind if you are going to offer "adult"
services to your callers are:

Remember that pornography is defined by local community standards.  What is
legal in one part of the USA may not be legal in another part.  Case in point:
A sysop in California ran a BBS that offered adult files for download. The
sysop required proof of age, a signed request, and payment for access to those
areas of his BBS.  The BBS was legal insofar as 'local community standards' in
his area were concerned.

A person in Tennessee fulfilled the requirements in place at this BBS and
began downloading adult images from this board.  Problem was however that this
'person' was also a deputy District Attorney.  To further complicate matters,
the material deemed to be within 'local community standards' in the sysop's
local area in California were not so deemed in the area in rural Tennessee
from where the DDA was downloading them.

The sysop and his wife was found guilty of interstate trafficking of
pornography and were fined $200,000.00 dollars and given a prison sentence
of five years.  Last I heard, the case was under appeal.

Just because you have been provided with proof that someone is old enough to
view questionable material does not mean either that A) the person is not
lying to you about their age, or that B) Even IF they are 'of age' that it is
ok to have those types of files online and available for download.

Various tried (and failed) defenses that I have heard of from sysops who have
been arrested and charged with these types of crimes include "The GIF file is
nothing but binary data unless manipulated by a third-party program (a GIF
viewer of some sort).  Another is "It is not up to me to prove the person in
that GIF is over 18.  It is up to you to prove they are under 18 and I am
guilty."  (Doesn't work that way folks, even though that is the way it is
supposed to go.).  Another favorite is "I didn't >send< the file to them...
they came into my BBS and >got< the file..."

Bottom line is folks....if you have smut online for download, you are playing
with fire.  You may do it for years and never get caught, but to me, taking
a chance on a quarter of a million dollars in fines and five years in prison
just isn't worth it.  And with the recent allegations of "rampant child
pornography" that has been reported on various online services, I wouldn't
look for the laws to get anymore lax in the future.

				   -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ                 Dear Abby                  Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

[Got a letter for Abby? Send it to me, and I'll see that she gets it, and that
your letter along with her response get published in the next WWIVNews!]


Dear Abby,

    I downloaded a GIF of Filo, Sam, and Wayne. Sam and Wayne are ok, but I
cannot get my mind off of Filo! I am feeling guilty about having feelings like
I have for Filo and not making him aware of them. But he is so smart, so
witty, and just so damn CUTE that I could just die!

Abby, what should I do about this? Should I take a class he offers? I hate
accounting, but would learn it for him. Should I offer to host one of his subs?


Should I buy him a margarita?

Help me Abby, please.  You are my last hope.

				Signed,
				  Fantasizing over Filo in Freeburg

Dear FoFiF,

Depending on your gender, I can recommend a few tricks that might get
Filo to notice you.

If you are female:

A)  Rename your BBS to FiloLand, and hold candlelight vigils nightly.
B)  Print up 260 million "Filo for President" bumper stickers, hand them out.
C)  Offer to pay for 6 month's worth of Filo's Server long distance bills.
D)  Register the 32-instance WWIV, for yourself and a hundred of your closest
    friends.
E)  Offer to be the official "envelope licker" for WWIV Software Services.
F)  Show up at next July's WWIVcon'96 in Minnesota and offer to buy Filo a
    margarita!


If you are male:

Try F.


Signed,
Abby


ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ          Demographics- Just WHO            Ӎ
	       Ӡ                  ARE you?                  Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

In an effort to see who is out there, I have written up a short poll.
Based on the results I received, here is the "average" WWIV'er:

Age: 34

Income:  $40,000 per year

Favorite Operating System: DOS 6.x

Favorite Multi-Tasker:  OS/2

Married: Most are not

Kids: 1.7   <Hmmmm......>

Sysop? More than likely

WWIV Version most-used:  4.24

				    -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ                 Classified                 Ӎ
	       Ӡ                    Ads                     Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

A new feature here in WWIVNews is the Classified Ads Department. It's a place
where utility authors can let everyone know about their most-recent offering
to WWIV.  This issue is a little skimpy due to negative replies, but look
forward to a more-complete list next time.

(Note to shareware/utility authors:  If you would like you products listed
here, please include a *brief* description of them <including registration
fee, if any> and I will be happy to include them in the next issue, due out
around Thanksgiving/Christmas).


			-=��wg's New User Mailer ��

Dawg's New User Mailer (henceforth known as DNUM) is a small program to send
a newuser email on his first call to you WWIV bbs.  While there are other
programs that do this, (FastMail! and my own Dmail come to mind), where DNUM
differs is in that it writes directly to email.dat therefore removing the use
of network2 and/or >any< type of source mod to make this work.  All that is
required is that you add the command to your NEWUSER_CMD line in WWIV.INI.
That simple! Dnum is configurable via WWIV.INI as all future Cerebrum releases
from myself will be.  Dnum is >FREE< to all registered users of Dmail. If you
haven't registered Dmail, then you can either register >just< DNUM for $5.  If
in the future you wish to register Dmail I will credit that amount off of
Dmail's registration of $20.

				   -=��


		       -=��pa Bear's Productions ��

Do you make modifications to the WWIV source code?  Do you work on any WWIV
version that supports external string (STR) files?  Are you worried about
running into DGROUP (especially with WWIV v4.24), and not being able to
complete a compilation of your source?

Here's PBstring to your rescue.  PBstring's purpose is to remove the literal
strings (the main things that eats away at your DGROUP) and place them into
a STR file -- all the while replacing the string in the source with the
appropriate get_stringx() statement!

Its FAST, SAFE, and very configurable.  Now in version 1.1 and better
than ever!  Look at these features: -More than 11 different safeguards for
your source, -Extremely fast, beats out ALL other string file removers
[version 1.1 features a speed increase of 50-60% over version 1.0],
-Informative screen reporting, -Converts old string file type to new ones,
-Properly handles strings that are non-removable (multiline variable
declarations, preprocessor commands, multiline comments, multiline printf()
type lines, and more), -Complete control over what gets pulled, and what
doesn't, controlled via simple ASCII inclusion and exclusion file(s).

Free temporary registration code (use 123456789) until Oct. 1, 1995.  This
program *is* shareware.  I am asking for a one-time registration payment of
$20.  E-Mail Pİàሃr at 1@11579.wwivnet for more info! A CEREBRUM release.

				   -��
If you want the best and most complete in WWIV 4.24 user editors, look no
farther than PBuedit2!  Starting with version 2.0, it is the *ONLY* user
editor written specifically for WWIV version 4.24!  All the QWK (which are
 not available in any other editor), and other miscellaneous user toggles
(like expert mode, pause, etc...) are in the newly released version 2.1.

In addition to the QWK and user toggles, the main screen of the program
includes 37 editable userrec fields -- this is 16 more than the stock editor.

Have you found the search features in the internal editor confusing?  I have,
and I'm a programmer!  In PBuedit2, there is no more confusion.  Major fields
are easily searched for whatever you're looking for!

Also included (not found in most editors): -full color macro editor, -E-Mail
and SSM's facilities (in conjunction with Dawg's DMAIL/DNUM), -upload/download
ratio editor, -post/call ratio editor, -duplicate account search, -auto-purge
accounts, -swap users (with full mail, and SSM swapping), -extended zap
functions, -support for MANY BBS modifications.

This program *is* shareware.  I am asking for a one-time registration payment
of $20.  E-Mail Pİàሃr at 1@11579.wwivnet for more info!  A CEREBRUM
release.

				     -��
Want to make your files listing available to your users so they can see what
you have online?  Then you're looking for PBfiles!  A master files listing
that can do this simple little task, and much more!

Now in release version 1.61, PBfiles can not only make a simple listing, but
it can do it by date, directory, DSL, DAR, and more.  You can include your BBS
name, phone number, the file's extended descriptions, and a whole lot more
information in the listings as well!

What are some features?  Here ya go!  -Multitasker aware and friendly -- can
run while BBS is online (and includes a WWIV source code modification so your
users CAN use it online to get INSTANT listings), -strip high/low ASCII,
-include WWIV color codes (and define your own, too!), -Check for a file's
physical existence as well as use file's DOS (real) date, -Inserts
FILE_ID.DIZ's into pre-existing archives (supports ZIP, ARJ, LZH, UC2, RAR,
HAP, ARC, PAK, SQZ, ZOO, DWC, HYP, and HPK compression formats), -Use a RAM
disk as a work disk for a massive speed increase, and MORE MORE MORE!!!

This program *is* shareware.  I am asking for a one-time registration payment
of $10.  E-Mail Pİàሃr at 1@11579.wwivnet for more info!  A CEREBRUM
release.

				     -��
Are you looking for some little utility to do a job for you on your WWIV BBS?
Look to StarPort Valhalla/Pİàሃr (part of the CEREBRUM programming group).
I (we) will program virtually anything you may need for your BBS.  Here are
some other small programs from SPV/Pᡴhat may do what you're looking for!

PBdupe (version 1.0)   - This little gem will look at the files in the
directories you have marked as HARD DRIVE on your BBS to those in directories
marked as CD-ROM and report to you any duplications found.  You can optionally
have it check or ignore file size, date and extensions.  Find those dupes on
CD-ROM and clean up your hard drive(s)!  $10 registration.

PBupdate (version 1.1) - Sometimes, when you're uploading CD-ROMs to the BBS
or when you extract a mod from the net, the description the CD-ROM disc has
is actually too long for WWIV.  When this happens, other fields in the file
listing get overwritten.  This program fixes that! It will shorten the descrip-
tion so that it properly fits.  It will also fix the file's date and/or size
so that it properly reflects the files true date or time. Finally, it can also
make a file always appear as NEW to all users indefinitely!  $10 registration.

PBweed (version 1.2)   - Simply, this program will remove old files from your
BBS -- files that no one really wants.  It does this by looking for files that
are physically old with few downloads.  Each parameter is set by you.  Certain,
definable, directories can be excluded from this pruning.  Delete, or move,
old files.  Data file pertaining to the processing directories are backed-up
for easy restoration in case of an error. Now registration fee required --
source code $30.

				   -=��

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ           On the Lighter Side              Ӎ
	       Ӡ       A Compilation by Sam (1@4051)        Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

<Read to the meter of Edgar Poe's, "The Raven">

Once upon a midnight dreary, fingers cramped and vision bleary,
System manuals piled high and wasted paper on the floor
Longing for the warmth of bedsheets,
Still I sat there, doing spreadsheets;
Having reached the bottom line,
I took a floppy from the drawer.
Typing with a steady hand, then invoked the SAVE command
But I got a reprimand: it read Abort, Retry, Ignore.

Was this some occult illusion? Some maniacal intrusion?
These were choices Solomon himself had never faced before.
Carefully, I weighed my options.
These three seemed to be the top ones.
Clearly I must now adopt one:
Choose Abort, Retry, Ignore.

With my fingers pale and trembling,
Slowly toward the keyboard bending,
Longing for a happy ending, hoping all would be restored,
Praying for some guarantee
Finally I pressed a key--
But on the screen what did I see?
Again:  Abort, Retry, Ignore.

I tried to catch the chips off-guard--
I pressed again, but twice as hard.
Luck was just not in the cards.
I saw what I had seen before.
Now I typed in desperation
Trying random combinations
Still there came the incantation:
Choose:  Abort, Retry, Ignore.

There I sat, distraught exhausted, by my own machine accosted
Getting up I turned away and paced across the office floor.
And then I saw an awful sight:
A bold and blinding flash of light--
A lightning bolt had cut the night and shook me to my very core.
I saw the screen collapse and die
Oh no--my data base, I cried
I thought I heard a voice reply,
You'll see your data Nevermore!

To this day I do not know
The place to which lost data goes
I bet it goes to heaven where the angels have it stored
But as for productivity, well
I fear that IT goes straight to hell
And that's the tale I have to tell
Your choice:  Abort, Retry, Ignore.

				  -=��

Since there has been some discussion in this issue about problems with
modding WWIV, here is a short lesson in C programming.


May all your signals trap
May your references be bounded
All memory aligned
Floats to ints be rounded

   Remember....

Nonzero is TRUE
   ++ adds one
      Arrays start with [0]
	NULL points to none

      For octal use zero
    0x means in hex
    use = to set
and == for a test

Use -> for a pointer
 a dot if it's not
 ?: is confusing
 use this a lot

 a.out is your program
 there's no 'u' in foobar
   and char (*(*x())[])() is
   a function returning a pointer
 to an array of pointers
to functions returning a char

				   -=��

The Answer Is Not a Boolean

(Sung to "Blowin' In the Wind")

   How many code must a man type in
   Before you can call him a man?
   How many C must a compiler process
   Before it can sleep in the RAM?
   How many times must MS-DOS crash
   Before it is forever banned?

   (Refrain)
   The answer, my friend
   Is not a boolean
   The answer is not a boolean.

   How many times must a man read his source
   Before he can see what is wrong?
   How many memory must his system have
   Before he can use 'unsigned long'?
   How many errors will it take till he knows
   That there's still some work to be done?

   (Refrain)

   How many years can a program exist
   Before it's erased from drive C:\ ?
   How many years must known bugs exist
   Before you get an update for free?
   How many times can a drive move its head
   And pretend there's no data to read?

(Refrain and fade out)

ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ         What if Operating Systems          Ӎ
	       Ӡ               Ran Airlines?                Ӎ
	       Ӊ  Compiled by Sam (1@4051)           Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

What if Operating Systems Ran Airlines?  Somebody on the net asked that
preposterous question. Here are the responses, as told to us by Alan Paller,
Computer Associates International Inc.'s director for open systems.

DOS Airline

Everbody pushes the airline until it glides, then they jump until it hits the
ground again, then pushes again, jumps in again, and so on.

Mac Airways

All the stewards, captains, baggage handlers, and ticket agents look the same,
act the same, and talk the same. Every time you ask questions about details,
you are told you don't need to know, don't want to know, and everything will
be done for you without you having to know, so just shut up.


Windows Airline

The airport terminal is nice and colorful with friendly stewards. Easy access
to the plane... an uneventful takeoff... then the plane blows up withhout any
warning whatsoever.

Fly NT

Everyone marches out onto the runway, says the password in unison, and forms
the outline of an airplane.  Then they all sit down and make a whooshing sound
like they're flying.

Unix Airline

Everyone brings one piece of the plane with them when they come to the aiport.
They all go out on the runway and put the plane together piece by piece, ar-
guing constantly about what kind of plane they're building.



ńńńńńńńłńńńńńńńńńńńńńńńńńńńńńńłńńńńńńńč
	       Ӡ             Closing Thoughts               Ӎ
	       Ӡ       Editor's Notes by Sam (1@4051)       Ӎ
	       Dńńńńńńńńńńńńńńńńńńńńńńٍ

There have been a lot of complaints lately, mostly from the same group of
individuals about policies and procedures within WWIV Software Services. I
would like to address three of the more prevalent debates currently taking
place on the various WWIV Sysops Subs. Rebuttals and commentary on anything
said here is not only welcomed but encouraged.

The first issue I will address is "pinging" the network.  For those of you who
do not know what a ping/pong combination is, here it is in laymen's terms. A
system generates a data packet (called a ping) that travels through the net
work to every node on that network. When the ping arrives at your node, if
there is software installed and in place that recognizes the ping, it will
carry out whatever set of instructions it has been programed to execute, and
return a response (a pong) to the originator of the ping. A very good example
of this is the ping that Wayne sends out to all systems on the network looking
for subs that sub hosts have set up to automatically return information for
inclusion in the subs.lst files.

At issue is whether or not it is appropriate for private sysops to be allowed
to ping the network for their own personal gain, whether it be to check on the
status of software they may have written, check the registration status of
that software, or to attempt to see who is running their software. Other uses
of pings I have seen have been from sysops pinging the network in an effort to
make their own subs.lst files rather than waiting on Wayne's monthly updates
to be published.

Personally, I believe the NC should be the only person allowed to send pings
out over the network. While the actual cost of delivering the pings is so
small it cannot be measured, the subsequent pongs can amount to considerable
cost if everyone in the network were to start this practice.  Take a look at
how large your subs.lst files are. Now imagine everyone in the network sending
weekly pings to update their subs listing files. Further, when individual
sysops send out pings, they are the only ones who derive benefit from the ping.
When Wayne sends out his pings, the entire network benefits from the results.
There are currently on the market several programs that will trap a ping before
any software can see it to return the response, even if that software is
installed on the receiving computer.  Stripit is probably the most-widely
used. Asylum Group has released a mod that not only traps the pings, but
returns a pre-defined text file to the ping originator. In light of this, it
is pointless for a shareware author to attempt to gain information from pings.
Anyone can easily block any information from being returned by the use of one
of these network2.exe preprocessors.

				    -��
The second item I would like to discuss is the constant, almost incessant
bickering from a very small but vocal group of sysops who think WWIV should
have a large beta testing team, rather than the 50 or so beta testers currently
utilized by WWIV Software Services.

In the beginning, Wayne did all alpha and beta testing himself.  Because of
WWIV growing as much as it has from it's original 53,000 bytes of code to over
1.4 megs, Wayne incorporated volunteers to help with beta testing WWIV. This
beta team is comprised of the SDS Boards, Support Boards, and a few others who
have unique system setups. Each of these beta testers have proven themselves
over time to be extremely competent and highly qualified WWIV sysops . Each of
them has worked hard over a number of years at striving to improve WWIV and
WWIVNet as a whole.

While we do not catch every single bug in the code, the vast (over 99%)
majority are caught and fixed before the final product is released. To my
knowledge there have not been a major bug get out in a release version of WWIV
in over 4 years. And even that (the hack enabled by pkunzip) was not a 'bug'
in the classical sense of the word, rather, an oversight. The success of the
beta team should be more evident than ever with the recent release of 4.24.
WWIV v4.24 was a _major_ upgrade to WWIV, incorporating more new features than
in any other upgrade since WWIV's inception. There were no major bugs
reported, as evidenced by the "bug fix" release of 4.24a.

The recent release of Windows 95, with it's half-million beta testers and
nearly as many problems should be more than enough proof that "strength in
numbers" does not necessarily hold true when it comes to beta testing software.

				    -��
The last item I will address is the TO: field debate that has recently surfaced
(again). Maybe it is just me, but if you want a message to go to just one
person, do you not send that message in email? And if you post a message in a
message base, is it not intended for everyone to read? Having a TO: field in
the message area would be the same as me taking out a commercial on tele-
vision to send a message to one person across town. That's what telephones are
for, and in WWIV's case, that's what email is for.

I realize some other networks use the message bases to delivery email (or so
I'm told) to recipients as opposed to physically separating it as WWIV does.
Based upon my first paragraph, it is the other networks who seem to be doing
things backwards.

				    -=��

Well folks, that's it for another version of WWIVNews. Look for the next
issue right around Christmas. And if anyone would like to submit anything
for publication, please feel free to do so. You can email me (1@4051.wwivnet
or smorris1@mail.pernet.net) if you have any questions. Any and all contri-
butions will be greatly appreciated! (And yes, the MicroSoft/Vatican article
was not a serious piece. Hope you liked it and didn't take it seriously. It is
my understanding it actually made it onto CNN and that Time Magazine did a
report on it.)


ۄńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńߍ
Ӡ                            Closing Credits                               Ӎ
Ąńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńԍ
ӠWWIVNews is an independent newsletter published every two-three months as Ӎ
Ӡa service to the WWIV community of sysops & users. The opinions & reviews Ӎ
Ӡexpressed herein are the expressed views of the respective writers, & do  Ӎ
Ӡnot necessarily reflect those of the WWIVNews staff. Reproduction in wholeӍ
Ӡor in part is allowed provided credits are given. All rights reserved by  Ӎ
ӠWWIVNews, and all articles are copyright of their respective authors.     Ӎ
Ąńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńԍ
ӠThe source site for WWIVNews is Sam's BBS (409-729-1319 or 729-1418)      Ӎ
ӠWWIVNet Node @4051. Requests for information regarding articles & other   Ӎ
Ӡeditorial submissions, as well as back issue requests and the WWIVNews    Ӎ
ӠWriter's Guide, can be sent E-Mail to the WWIVNews editor, c/o 1@4051     Ӎ
Ąńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńԍ
Ӡ           WWIV and WWIVNet, copyright 1986,1995 by Wayne Bell            Ӎ
Ӡ Any product or company mentioned or reviewed herein are copyrighted of   Ӎ
Ӡ their respective owners, creators, and other corporate pseudoentities.   Ӎ
Dńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńńٍ


```
