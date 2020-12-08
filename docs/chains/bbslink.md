# BBSLink

***

[BBSlink](http://www.bbslink.net) allows you to offer popular, established door games on your BBS. Users pass seamlessly from your system to the door game of their choice through the connection client that is just configured like any other door. They are connected to the BBSlink server by telnet and their BBSlink account is linked to your BBS meaning should the caller want to play again, they must return to your BBS. BBSlink games cannot be accessed by directly connecting to the server.

**Apply and be accepted before beginning.  Follow the instructions on the website.**

## Installation on Linux

1. Prerequisites

Optional:

* [throttle](https://linux.die.net/man/1/throttle)

If you wish to use `throttle` to emulate connection speeds, just ensure that 
it is present in your `$PATH`. If it is not present, it will simply be skipped.

* ANSI art loading screen

If you do not wish to use the ANSI art files, delete or rename them. (They are 
loaded by default if they exist).

2. Installation

The installation instructions were used on Debian 10 with systemd.

Either clone the [git repository](https://github.com/uriel1998/WWIV_Utilities/tree/master/networked-bbs-doors), or download the file [networked-bbs-doors.zip](https://github.com/uriel1998/WWIV_Utilities/raw/master/networked-bbs-doors/networked-bbs-doors.zip).  

Extract the `bbslink` directory alongside your other doors. These instructions 
assume you have placed it in `/home/wwiv/chains/bbslink`.

2. Edit `bbslink.ini` and put in the syscode, authcode, and schemecode where 
appropriate.

3. Set up the door. For WWIV, the entries to change are:

`A) Description  : BBSLink`
`B) Filename     : bash -c "./chains/bbslink/bbslink.sh -f %1"`
`F) Exec Mode:     STDIO`

Additional command-line options for `bbslink.sh` are:

* -h = show this help
* -u = manually specify an user **number**, overrides any in CHAIN.TXT
* -f = The path to CHAIN.TXT
* -a = The path to optional ANSI file splash screen
* -d = The door code to use (defaults to the menu)

If you are using another BBS system that can pass the user **number**, use the `-u` 
switch followed by the username variable.  You can also use this from the 
command-line yourself, e.g. `bbslink.sh -u USERNUMBER`

If `bbslink.ans` is in the script directory and no other file is specified with 
the `-a` switch, it will be shown automatically. You can specify another filename 
by calling it like so: 

`bash -c "./chains/bbslink/bbslink.sh -f %1 -a /path/to/file.ANS"`

This feature may be of particular use if you use BBSLink as a "direct door" so 
that there are different "loading" screens for each door.

If you wish to use the script as a "direct door" link instead of going to the 
menu, set up a new door entry, but modify the filename like so:

`B) Filename     : bash -c "./chains/bbslink/bbslink.sh -f %1 -d DOORCODE"`

A list of valid door codes is found on the [BBSLink website](http://www.bbslink.net/sysop/).
