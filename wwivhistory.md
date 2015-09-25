# History of WWIV
***
##The Official History of WWIV 
**By Wayne Bell Random 1@1**  
_Originally posted in WWIVNEWS Volume 1, Issue 1, January 1991_

WWIV started around December 1984, when  I first put up a BBS. It
was run on  an IBM-PC with a 10  meg hard disk and a  Hayes 1200. I was
running  WWIV v1.0,  which was  in interpreted  BASIC. It crawled along
quite slowly, and did not have a whole lot of features.
About the only  other BBSs I was competing with  at the time were
run on Apple II's, also running  in interpreted BASIC. Of course, there
were RBBSs  and the like, but  I do not recall  ever having called one.
Soon the 64k limitation of IBM interpreted BASIC became apparent. I did
some pretty  strange stuff with  memory allocation and  string storage,
but I had pretty much reached the  cutoff point. When you try typing in
30 lines of a  message and the result is an "out  of memory" error, you
know it is time to go on to something better.

The better thing was Turbo Pascal 2.0. Turbo 2.0 did not have ANY
support  directories (all  file I/O  was within  your current directory
only).  I also  had quite  some trouble  getting comm routines working.
With the release  of Turbo 3.0, I put  up WWIV v2.0. Soon after  that I
got  REAL interrupt-driven  comm  routines,  and things  started moving
along.

I had  to go off  to UCLA, and  was forced to  take the BBS down.
Around December  1985 on Christmas vacation,  I decided to put  the BBS
back up for some reason. I did some major revamping at some time around
then,  and called  it WWIV  v3.0. Still  in Turbo  Pascal 3.0,  though.
Around this time (December), I got around to putting in a file section.
It took  quite a bit  of work getting  xmodem working, and  I had to go
back and re-format my data files  to allow for file descriptions. Since
I had never actually  been on any other IBM-type BBS,  I had no clue as
to  how the  file section  should  work,  so things  turned out  pretty
randomly.

On  January 1,  1986 I  finally released  WWIV v3.0.  It ended up
going through  quite a few revisions,  especially in the first  week or
two after being  released. And, to make things even  more fun, I had to
resume classes at UCLA, so I  ended up pretty much writing WWIV without
running a BBS. As you may guess,  this caused a few unfortunate bugs to
slip by me, but that's life.

Sometime around June 1986, I had decided to put in ANSI color and
call it WWIV v3.2. This involved  re-formatting the user list (to store
the user's color  selections), and a few other little  fun things, so I
decided to put up  a BBS again. This was only for  a week because I had
to move  back up to  UCLA after that  time for the  summer session. You
might think  that not many  people would end  up calling a  BBS that is
pretty much stated as  only being up for a week, but  it managed to get
some pretty good  activity. To make this week even  more fun, for about
half of it I was not there. I had a friend of mine, Stephen Davis, call
up and remotely take care of  this experimental BBS. It even managed to
make it without crashing.

After releasing that,  it turned out that I had  a pretty bad bug
in the Y-Modem routine. The BBS would read in a block of data, and THEN
seek  to the  right place  in the  file instead  of FIRST  seeking then
reading. So I came out with 3.20a rather quickly. Around January 1987 I
put up the BBS again, running 3.21d.

Then  around June  1987 I  started writing  WWIV v4.0. Naturally,
since I  had a summer  job, things did  not go so  fast. Also, the fact
that I had never written anything in  my life in C before did not help.
I eventually got the hang of things. Finally,  on Dec 1, 1987, I put up
4.0 as my  BBS for testing in real  life. Among my big promises  of how
great it would be, I said  it would support networking among systems. I
thought this sounded like  a good idea, only I had no  clue as to how I
would  go about  implementing it  at the  time. So  I relegated that to
"don't hold  your breath" status,  secretly thinking I  might never get
around to it.

Surprisingly,  I did  get around  to it  relatively soon. By that
time, everyone had  already installed the BBS on  their computers, so I
was stuck with the  format I had dreamed up a long  time ago when I had
no clue how  it would work -- a number  1-65535 indicating which system
was which. I ended up trying  to design a network around that, although
it was not  quite the optimal solution (as  if is such a thing).  I was
bored one day  and had been talking with someone  about a network, so I
decided  to start  writing a  program to  send files between computers.
There was no planning at all, I  just pretty much sat down and typed it
in. That developed into the NETWORK.EXE program.

Of course, there was more to  it than that. It was actually after
I had the  NETWORK.EXE program mostly  working that I  started thinking
about how the systems would connect together. I originally started with
the idea of having it pretty much hierarchial, with a local-system list
for all  systems to call  directly any systems  that were local.  After
talking with Stephen Davis about this  for a while, I decided to pretty
much  have it  grid-like, with  an amorphous  structure. That does not,
however, prevent some  structure from being applied to  it. Without any
software  changes,  it  can  be  easily  changed  over  to  a  straight
hierarchial structure. All I would have  to do is set up the hierarchy,
change one file, and send out an update of that.

Well that  pretty much brings me  up to the present  time. Future
expansion? Who  knows. One thing  that keeps appearing  is a multi-line
WWIV.  That just  is not   practical. WWIV  depends upon  many external
programs  (chains,   FSED,  archiving  programs)   and  you  can   NOT,
practically, have the BBS run external programs without running under a
multi-tasking  operating  system.  To  put  it  simply,  PC-DOS was not
designed with multi-tasking in mind.


## WWIV 5.0 
In YYYY WSS agreed to open source the WWIV Software under the Apache License. It is the BBS system of choice for thousands of sysops world-wide who appreciate having a rock-solid BBS system to rely upon and who like the fact that it is dynamic and evolving software.

##[WWIV Hall of Fame](wwivHOF)
##WWIVCon
WWIVCon was the official WWIV Convention. Here's the information we have found year by year.
[WWIVCon 1994- New Orleans 1-3 July](wwivcon1994)  
[WWIVCon 1995 - Buffalo](wwivcon1995)  
[WWIVCon 1996 - Minneapolis](wwivcon1996)  
[WWIVCon 1997 - Washington DC](wwivcon1997)  
[WWIVCon 1998 - Pigeon Forge 21-23 August](wwivcon1998)  
[WWIVCon 1999 - Los Angeles](wwivcon1999)  


##WWIVNews - The WWIV Newsletter
Form 1991 through 1994 the official WWIVNews was published and distributed over WWIV Nets. 
**TO DO** Fact Check those dates.

[WWIVNews Volume 1 Issue 1 (January, 1991)](wwiv9101)  
[WWIVNews Volume 1 Issue 2 (February, 1991)](wwiv9102)  
[WWIVNews Volume 1 Issue 3 (March, 1991)](wwiv9103)  
[WWIVNews Volume 1 Issue 4 (April, 1991)](wwiv9104)  
[WWIVNews Volume 1 Issue 5 (May, 1991)](wwiv9105)  
[WWIVNews Volume 1 Issue 6 (June/July 1991)](wwiv9106)  
[WWIVNews Volume 1 Issue 7 (August/September, 1991)](wwiv9108)  
[WWIVNews Volume 2 Issue 1 (January, 1992)](wwiv9201)  
[WWIVNews Volume 3 Issue 1 (May 19, 1992)](wwiv9205)  
[WWIVNews Volume 3 Issue 2 (June 24, 1992)](wwiv9206)  
[WWIVNews Volume 3 Issue 3 (July 25, 1992)](wwiv9207)  
[WWIVNews Volume 3 Issue 4 (August 25, 1992)](wwiv9208)  
[WWIVNews Volume 3 Issue 5 (September 28, 1992)](wwiv9209)  
[WWIVNews Volume 3 Issue 6 (October 25, 1992)](wwiv9210)  
[WWIVNews Volume 3 Issue 7/8/9 (November 1992/January 1993)](wwiv9211)  
[WWIVNews Volume 3 Issue 10/11 (February/March 1993)](wwiv9302)  
[WWIVNews Volume 4 Issue 1 (April/May 1993)](wwiv9304)  
[WWIVNews Volume 4 Issue 2 (June/July 1993)](wwiv9306)  
[WWIVNews Volume 5 Issue 1 (January/February, 1994)](wwiv9401)  
[WWIVNews Volume 5 Issue 2 (March/June, 1994)](wwiv9403)  
[WWIVNews Volume 6 Issue 1 (May/June, 1995)](wwiv9505)  
[WWIVNews Volume 6 Issue 2 ()]()  
[WWIVNews Volume 6 Issue 3 (September/October 1995)](wwiv9509)  
[WWIVNews Volume 6 Issue 4 (December 1995)](wwiv9512)  
[WWIVNews Volume 7 Issue 1 (Spring 1996)](wwiv96spr)  

##Historical Data 

TODO: This needs to be updated to WWIV 5.0 history

WWIV was originally written by Wayne
Bell.  Wayne began work on WWIV when he was a teenager.  It
was first written in BASIC on a TRS-80.  Wayne soon
recognized the limitations of the BASIC language for BBS
operations and he re-wrote the program in PASCAL.  At that
time, the BBS could be registered by donations of $25.  The
last PASCAL version was v3.21d. Many modern day PASCAL BBS
systems are based wholly or in part upon this early version
of WWIV. All v4.xx releases of WWIV have been written in C.
With this language, WWIV has developed into a multifeatured
BBS system supporting one of the most trouble-free hobbyist
networks in the world.  WWIVnet, the network founded by
Wayne, began as a local based network in Los Angeles,
California with 25 charter members.  In the early 1990's,
the network grew to over 1,500 members located around the
world. Because many sysops wanted to run their own networks
for various reasons, Wayne added a feature which allowed the
BBS system to participate in multiple WWIV-based networks
and developed the networking software to support such
multiple network usage. At the peak, there were some 100
WWIV based networks offering a range of topics and
supporting a multitude of various interests.

In January of 1998, Dean Nash purchased WWIV and WWIV
Software Services from Wayne Bell.  WSS was reformed as
a Tennessee Limited Liability Company with a full
corporate posture. Craig Dooley was appointed Support
Coordinator and supervises the Support Board System and
Source Distribution Sites.

The documentation for WWIV has also developed overtime.
It began as a short 3-page document written by Wayne.
Later, with v4.10, William Daystrom wrote a complete
set of documentation for use with WWIV. Beginning with
v4.20, Filo added additional comments to some of the
documentation files written by Will and completely
rewrote others.  The documentation was again completely
rewritten by Filo for v4.23 and updated for the v4.24a
release. With the release of v4.30, the documentation
was updated to reflect all code changes and was
converted to several different formats for your
convenience.


## Other History Pages and Stories Mentioning WWIV
[Wikipedia](https://en.wikipedia.org/wiki/WWIV)  
[WWWIVNews Archives at TextFiles.com](http://www.textfiles.com/bbs/WWIVNEWS/)  
[BBS Documenary WWIV Pages](http://software.bbsdocumentary.com/IBM/DOS/WWIV/)  
[Jason Olsen's History of WWIV](http://software.bbsdocumentary.com/IBM/DOS/WWIV/feren.txt)  
[SysOp Corner's Timeline of BBS History](http://sysopscorner.thebbs.org/bbshist.html)  
[BBS Wikia Page on WWIV](http://bbs.wikia.com/wiki/WWIV)  
[TechCrunch article: Happy Birthday, BBS!](http://techcrunch.com/2010/02/17/happy-birthday-bbs/)  
[1991 Phrack Article on Hacking WWIV](http://phrack.org/issues/34/5.html) -= NOTE: All mitigated  
[THOUGHTS ON CO-SYSOPS FOR WWIV BOARDS AND SECURITY LEVELS IN GENERAL.. by Kent Stromsmoe](http://www.textfiles.com/bbs/cosysop.txt)  
[WWIVNet & WWIVLink split](http://www.bbsdocumentary.com/library/CONTROVERSY/EVENTS/WWIVWAR/)  
[The BBS.org Enty on WWIV](http://sysopscorner.thebbs.org/wwiv.html)  