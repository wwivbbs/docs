# New SysOps
***

**NOTE:** This oringally apperaed in the WWIV 4.30 Documentation and it is still a great ready today.

Operating a BBS can be a very satisfying (and addictive)
experience, particularly if you have given some thought to your
setup and the needs and desires of your target audience.  A BBS
with an attentive and participating sysop offers a personal, "homey"
atmosphere that the Internet cannot provide.  With the "Internet
Explosion" still in full swing, you must target a specific group
of users and advertise to capture a sizeable user base.

Because a BBS can be used for such a wide variety of things,
this chapter assumes that you know virtually nothing about a
BBS and that you are a first-time WWIV operator. The information
that follows is meant to help guide your thoughts and creative
processes so that you will obtain the most enjoyment from
the experience.

You can determine whether your BBS is to be a general purpose BBS
or whether it will cater to some particular interest.  A general
purpose BBS normally will not focus on any particular topic in
its message bases or file sections; instead, it will have something
for everyone and will probably not try to have everything available
on any topic or subject area.  A general purpose BBS is often the
best approach for a beginner to take unless you have some clearly
defined area(s) of interest that you want to pursue.  If you are
not participating on a network, then you may wish to have message
bases that reflect a broad spectrum of interests.  If you are on
a network, you may wish to subscribe to subs that reflect such
broad areas.  Your download sections may also reflect a broad area
of interest.  It is recommended, at a minimum, that you provide
file areas that support the needs of a general user.   That is,
you may want to make the common archive programs, protocols, and
terminal programs readily available to your users to make it
easier on them to call the BBS.  You may wish to provide the
User Documentation for download so that your users can learn how to
use a WWIV BBS system.  Beyond those minimums, you are left to your
own imagination and perhaps the suggestions of your users to create
the topical download areas that will appeal to those who call your
board.

A special purpose BBS is generally best when it reflects your own
interests.  If it reflects your interests, you are more likely to
take an active interest in your BBS, to post things, and to keep
fresh material in your download areas.  Generally, a BBS that
reflects that the operator takes an active interest in the BBS is
more successful than one where the operator's presence is invisible
or totally lacking.

Once you have determined the type of BBS that you are going to run,
you should give some thought to the types of security levels that
you will have on your board and the amounts of time that you will
allow each user and/or security level.  By looking in INIT, you can
determine the predefined or default levels for certain security
levels.  My advice would be to (a) use no more security levels than
you absolutely need and (b) to try to keep things as simple as
possible.  To give you some idea of this, here is a basic overview
of the setup at The Mountain Empire which is primarily a support
BBS for WWIV operators.

There are seven security levels and three access levels in use:
```
    Type User          SL     DSL    AR's    DAR's
   ÄÄÄÄÄÄÄÄÄÄÄÄ       ÄÄÄÄ   ÄÄÄÄÄ  ÄÄÄÄÄÄ  ÄÄÄÄÄÄÄ
   Unvalidated         10       0
   Normal              20      20
   Other Sysop         30      30
   Registered Sysop    40      40   A         A
      w/ Mods Access   60      60   A M       A M
      w/ SDS Access    80      80   AKM       AKM
   Sysop              255     255   All       All
```

There are two SL255 Sysops and no Co-Sysops, local or remote.
The Advanced ASV and Guest Account features are activated so
that users and visiting sysops who call for support will have
immediate access to the support areas of the BBS. (sans Mods
and SDS)

The AR and DAR of A indicate that the user has access to the
WWIV support message bases and file sections but does not have
access to the modifications and/or the WWIV source code.  A
registered visiting sysop (i.e. one that is a bonafide registered
WWIV sysop) has access to the message bases dealing with
modifications of the source code (indicated by AR and DAR of M)
and the transfer areas that contain such modifications.  This status
must be requested.  Finally, I have the sysops who are registered
and have requested to use my board as their SDS site (source
distribution site).  Those people must send email to WSS and provide
the information necessary to be approved for source access.

As you can see, the number of SLS, DSLS, ARS, and DARS used here
is very limited, yet it suits the security purposes of my BBS.
After you have examined your needs and thought out your own security
arrangements, then you should use the BOARDEDIT and DIREDIT features
to set up your board to reflect the security levels and access
restrictions that you will need.  You may wish to also have other
indicators (i.e. age or sex) for certain areas.  The BBS software
supports your using all of these factors to allow or deny support
from various sections of your board.  You should be aware that any
user who does not have the appropriate SL and accompanying access
restrictions will not be aware of the other parts of your BBS.  For
example, lets say that you have a total of 10 message bases.  The
first three have SL of 30 and no ARS; the next three have SL of 40
and AR of A.  The last four have SL of 50 and AR of B.  A user with
SL of 30 would see only the first 3.  A user with SL of 40 and AR
of A would see the first 6 message bases.  In other words, if you
have the appropriate access restrictions (ARS), you can see those
message bases that have lower SLs than your own.   A user with SL
of 50 are AR of B would see the first 3 message bases and the last
4.  If that user had ARs of both A and B, then he could see all of
your message bases.

After you have developed your security levels and access
restrictions, you should probably make yourself some form letters
to send to people explaining any particular rules of your BBS and/or
any rules associated with their particular access level.  These form
letters are explained in  Appendix ??? of the documentation.

You may then wish to have a few friends call so that you can learn
the process of validating them while they are on line using the F1
Key.  Encourage them to try out various parts of the BBS and to post
some messages.
