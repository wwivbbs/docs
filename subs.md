#Messaging System
***

Message bases are sometimes referred to as "subs".  These are areas on the BBS where messages related to particular subject areas may be kept.  Any topic you can imagine may be used for a sub. Common examples include politics, science fiction, entertainment, sports, trivia, etc.  WWIV based networks have subs on every imaginable topic.  You may want to join such a network to offer a more diverse array of topics in your message bases.

The very first sub on your BBS should be one where you alone can post messages.  This is your place to make announcements concerning your system etc.  You can force users to read this sub any time there are new messages using the USE_FORCE_SCAN and FORCE_SCAN_SUBNUM INI settings.  See WWIV.INI for more information on these settings. Users who have the appropriate SL and ARs can read the message bases and post on them. These messages are not private and may be read by anyone else who has the appropriate SL and ARs.

**NOTE:** Because the more message bases and directories that you create, the more memory is required for pointers and so forth, it is advisable to set the number of message bases to the next highest multiple of 32 over the number that you actually intend to use. This will help conserve memory.

Message bases are setup by using the BOARDEDIT feature. This feature may be accessed in the following ways:

1. From WFC, enter B and then enter the system password when prompted for it.
2. From the main menu, enter //BOARDEDIT and then enter the system password when prompted for it.
3. From the main menu, enter //BE (short form for BOARDEDIT and the system password when prompted for it.

**BoardEdit**  
Using BoardEdit, you can delete, insert, and modify subs.  The default installation sets up one sub-board named General.

The first thing that is seen when BoardEdit is accessed is a Substring? prompt. If you wish to go directly to an existing subboard, enter a portion of the name, otherwise hit enter for a complete listing.

You will see a screen that looks like the following after you have chosen to insert or modify your listing.  A description of each setting is included below:
```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   Subboard      : 0                              ³
³   A. Name       : General                        ³
³   B. Filename   : GENERAL                        ³
³   C. Key        : None.                          ³
³   D. Read SL    : 10                             ³
³   E. Post SL    : 20                             ³
³   F. Anony      : No                             ³
³   G. Min. Age   : 0                              ³
³   H. Max Msgs   : 50                             ³
³   I. AR         : None.                          ³
³   J. Net info   : Not networked.                 ³
³   K. Storage typ: 2                              ³
³   L. Val network: No                             ³
³   M. Req ANSI   : No                             ³
³   N. Disable tag: No                             ³
³   O. Description: None.                          ³
³                                                  ³
³   Which (A-O,[,],Q) ?                            ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```
**A)  Name**  
Each sub-board needs a name, describing what type of
messages are expected on that sub-board. If your BBS is a
member of a WWIV network, the software will insert either <Net>
or [Net] preceding the sub-board name when the sub listing is
obtained.  The difference between these two uses of NET is
discussed below under the Network Validation Option.

**B.  Filename**  
Each sub-board also needs a UNIQUE filename. If
two subs have the same filename, BOTH SUBS WILL REFER TO THE
SAME MESSAGES.  The filename can be whatever you want (up to 8
letters in length), but it must not contain an extension.  For
example, WSSYSOP would be a legal name to enter, but
WSSYSOP.SUB would be illegal because it uses an extension.  It
is recommended that you develop a naming convention for your
networked message bases to identify the file that belongs to a
particular sub.  Using the sub above, if you subscribed via
WWIVnet, you may want to name the file WWSSYSOP.  The prepended
W identifies the file as subtype WSSYSOP on WWIVnet.

**C) Key**  
Normally, all sub-boards are assigned a number (in
ascending order, starting at one for your first sub-board)
which callers can press to immediately access them. If you
would prefer that a sub-board be referred to by a key (such
as %,&,#, etc) instead of a number, setting the key to that
character will do so. This option will not normally be used.

**D) Read SL**   
This setting determines the minimum SL required to
allow a caller to read messages on the sub-board. If the read
SL for a sub is 40, and a caller's SL is 39, that caller will
never know that the sub-board exists.

**E) Post SL**  
This setting determines the minimum SL required
for a caller to post on the sub. The post SL should be greater
or equal to the read SL. Having the post SL greater than the
read SL would allow callers to read messages on the sub, but
not post any.  This type of setting is often useful on some
network subs where anyone may be permitted to read the sub, but
posting may be only by certain persons (perhaps the sysop
and/or the co-sysops.)

**F)  Anony**  
Setting the anony (no, yes, forced, dear abby)
determines whether or not messages posted on that sub can be
anonymous. No means no anonymous (unless the caller has a
security level which permits it); yes means the caller has the
option of posting anonymously, regardless of security level;
forced means the post is always anonymous; dear abby means that
the caller will be presented a choice of "signatures" for
his/her post: their name (alias), Abby, or Problemed Person.
In effect, the "dear abby" option does the same thing as
setting anony to yes, but it gives the caller two options on
which name will represent the author of the post.  This option
is ignored on all networked message bases.

**G) Min age**  
This will allow you to specify the minimum age of
callers on that sub.  If, for example, you set the minimum age
to 18 (years), anyone under 18 would not know the sub existed.
This setting is normally used for adult-oriented subjects.

**H)  Max msgs**  
This sets the maximum number of messages that
can be on the sub at one time. This is usually set to 50 or
100, but can be up to 999.  When the maximum number is reached,
the oldest post in the sub is rotated off (deleted) as each new
post is entered, unless a post has been given permanent status.
A post with permanent status means that it will not be erased.
This is useful if you have posted the sub rules or something as
the first message on the sub.  To give permanent status to a
post, you hit N after reading the post.  You will see the
message, "This post will NOT be auto-purged.

**I)  AR**  
This allows you to specify the AR for that sub. AR is
used to allow specific people to access specific subs when
other sub limitations (age, post SL, etc) are not sufficient
for your needs. As an example, suppose you have a group of
Amiga callers on your BBS. You want to give them their own area
to talk about Amigas. Age and SL restrictions would be
cumbersome and inefficient.  That is where AR comes into play.
There are 16 different AR flags that can be used, A through P.
To give the Amiga callers their own sub, you would use this
setting to assign an AR to the sub.  You can use any letter
(A-P) you wish, as long as it isn't in conflict with another
sub which doesn't concern the Amiga people (you can use the
same AR on different subs, but realize that anybody with the
same AR flag set would be able to access all subs with the
identical AR).  For this example, you could set the AR flag to
A. Then you would go into UEDIT and activate each Amiga
caller's A flag.  Now, all Amiga callers would be able to
access the Amiga sub (as long as SL and age requirements, if
any, were met) and nobody else would know the sub exists.

**J)  Net info**  
Used with WWIV network software on network subs
to properly allocate messages. If the sub you are editing is not
a WWIV network sub, leave this blank.  If you select this
option, you will get a sub-menu asking for information
regarding Network, Type, Host, and Flags. As you enter the
information, you will receive helpful prompts.  The Networks
that are recognized are those that you have setup in the INIT
program.

**NOTE:** When setting up a networked message base, this is the
first  setting you should enter.  Some of the fields will be
filled out for you if you have a current SUBS.LST file for
the specified network.

TYPE refers to the Subtype.  Under WWIV v4.21a and NET31 or
earlier, these subtypes had to be integer values; under NET32
and WWIV v4.22, you may use 7 letter character names for the
subtype.  This option is referred to in WWIV literature as
"sub-by-name".

HOST refers to the network host of the sub; if you host it,
the information will display HERE; otherwise, the host's
network node number will be shown.

SUBS refers to the number of subscribers on the sub and is
displayed only when you are the sub host.

FLAGS refers to whether the sub is auto-requestable and whether
or not the information about the sub should be reported in the
SUBS.LST distributed on each network. For more information on
this, refer to the WWIVnet Documentation that accompanies the
Network Software.

There will also be an appended category on subs you host.  If
this is chosen, a list of  available categories (distributed
by the NC for the network) will be given.  The purpose of this
is to allow the sysop to select the most appropriate category
(for that sub information) for listing in the Subs List that
is distributed by each network.

**K) Storage type**  
There are 2 main ways messages can be
stored, either with each message in its own file, or with all
messages in that message base in one large file. 0 means each
message will be in its own (text) file, 2 means all messages
in that sub will be in one large (non-text) file.

**L) Val Network**  
This option may be toggled on or off.  If
toggled on, sub-board that are network subs, will have the
network name enclosed in brackets (i.e. [WWIVnet]) in front of
the name and the sysop will need to validate the messages
received there before the messages will be sent over the
network.  If the option is toggled off, the sub will have
the network name enclosed in v-brackets (i.e. <WWIVnet> in
front of the Sub-Board name.  Because many network subs have
various restrictions (such as no ANSI posts, or posts from #1
on the BBS only, etc), network validation is a means of
insuring that posts originating from this BBS are in compliance
with the sub-host's rules.

**M) Req. ANSI**  
The sysop can require that the user have ANSI
enabled in order to view this sub.  This option is particularly
useful if the sub is one of ANSI pictures drawn with The Draw or
some other ANSI editor.  An example of an all ANSI sub is the
WWIVnet Sub known as The ANSI Art Gallery.

**N) Disable Tag**  
This option, if toggled on, will disable
taglines in the messages. This may be useful if a network sub
host does not permit posts which have taglines added to them.

**O) Description**  
This option permits you to supply a
description of a sub that you host.  This description will
be used in the SUBS.LST file maintained by the network. The
entry in this field makes it possible for subs you host to
be included in the SUBS.LST without your intervention; the
only requirement is that the auto-info option in FLAGS be set
when the sub is set up.