# Door Party

***

[Door Party](https://throwbackbbs.com/) offers either one-menu-for-all game 
access with DoorParty's large user base, claiming over 50 nodes, 180+ door 
games, no ads and easy signup.

**Apply and be accepted before beginning.  Follow the instructions on the website.**

## Installation on Linux

1. Prerequisites

for DoorParty you will possibly need `rlogin-client`; install it on Debian/Ubuntu
with `sudo apt install rlogin-client`.

Please note that [RLOGIN is a security risk](https://www.ssh.com/ssh/rlogin) if 
exposed to the internet.  Ensure that you have both your router and system firewalls 
so that they will not accept connections from outside the LAN, and you should be 
fine. It is for this reason that it is best practice to have the `doorparty-connector` 
daemon running on the same machine as the BBS to minimize risk.

Optional:

* [throttle](https://linux.die.net/man/1/throttle)

If you wish to use `throttle` to emulate connection speeds, just ensure that 
it is present in your `$PATH`. If it is not present, it will simply be skipped.

* ANSI art loading screen

If you do not wish to use the ANSI art files, delete or rename them. (They are 
loaded by default if they exist).

2. Installation

The installation instructions were used on Debian 10 with systemd.

1. Install Doorparty Connector
* Choose where you want the connector daemon to live, for example `/opt/doorparty-connector`
* `sudo mkdir -p /opt/doorparty-connector`
* `cd /opt/doorparty-connector`
* `sudo wget https://raw.githubusercontent.com/echicken/dpc2/master/doorparty-connector.ini`
* `sudo wget https://github.com/echicken/dpc2/blob/master/build/linux_x64/doorparty-connector`
* `sudo wget https://raw.githubusercontent.com/echicken/dpc2/master/doorparty-connector.service`
* If you did not use /opt/doorparty-connector as your install path, edit the paths in `doorparty-connector.service`
* `sudo ln -s $PWD/doorparty-connector.service /etc/systemd/system/doorparty-connector.service`
* `sudo systemctl daemon-reload`
* `sudo systemctl enable doorparty-connector`
* `sudo systemctl start doorparty-connector`

2. Either clone the [git repository](https://github.com/uriel1998/WWIV_Utilities/tree/master/networked-bbs-doors), or download the file [networked-bbs-doors.zip](https://github.com/uriel1998/WWIV_Utilities/raw/master/networked-bbs-doors/networked-bbs-doors.zip).  
Place the `doorparty` directory alongside your other doors. These instructions 
assume you have placed it in `/home/wwiv/chains/doorparty`.

3. Set up the door. For WWIV, the entries to change are:

`A) Description  : Door Party`
`B) Filename     : bash -c "./chains/doorparty/doorparty-link.sh -f %1 -s AA"`
`F) Exec Mode:     STDIO`

**IMPORTANT** - the variable after `-s` is your system tag, as assigned by DoorParty.

Additional command-line options for `doorparty-link.sh` are:

* -h = show this help
* -u = manually specify an user **name**, overrides any in CHAIN.TXT
* -s = Your SystemTag from DoorParty. Do NOT use brackets.
* -f = The path to CHAIN.TXT
* -a = The path to optional ANSI file splash screen

If `doorparty.ans` is in the script directory and no other file is specified with 
the `-a` switch, it will be shown automatically. You can specify another filename 
by calling it like so: 

`bash -c "./chains/doorparty/doorparty-link.sh -f %1 -s AA -a /path/to/file.ANS"`

If you are using another BBS system that can pass the username, use the `-u` 
switch followed by the username variable.  You can also use this from the 
command-line yourself, e.g. `doorparty-link.sh -u USERNAME -s AA`

At present there is not a way to specify a specific door at runtime from Door Party *that I know of*. 
