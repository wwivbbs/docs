# Installing WWIV 5 on Linux
***

These are some rough details for the steps necessary to get a working linux-based system.
As I get more details about each area, I will be fleshing things out.

**NOTE:** Unless specifically stated otherwise, assume all linux commands
are run as the wwiv user created in section 1. This ensures the
permissions are correct.

### Prerequisites

Package | Comments
------- | ----------
sudo | to allow more controlled access to root-owned tools
xinetd | service manager to start telnet. This doc assumes xinetd, but you can also use inetd or systemd. That will be at your own risk, though.  
telnetd | telnet service to handle starting the BBS  
ncurses | any curses library, really. Needed for CLI tools display  
dosemu | to run dos|based doors and utilities  
dos2unix/unix2dos | for converting file types  

Compile things you will need  

Package | Comments
------- | ----------
git |  to grab the source code for compiling  
ncurses-devel (libncurses5-dev) | development headers, etc.  libncurses5-dev is the debian version
cmake | 
make | 
g++ 4.9 or later | 

(really) Optional Linux Things

Package | Comments
------- | ----------
fpc (FreePascal) | for building old Pascal things like WWIVedit  

### Pre-install steps

_**DO NOT RUN WWIV AS ROOT.**_ You are just asking to get screwed if you do.
The root account is the linux equivalent of SYSOP. Also, don't run WWIV
as your own user. Anything your user can do, the BBS can do. The best
option is to create a dedicated user to run the BBS.

Create WWIV user  
as root:  

1. create the wwiv group: ```groupadd wwiv```
2. create the wwiv user: ```useradd -g wwiv -c "WWIV BBS Service Account" -d /home/wwiv -s /sbin/nologin -m wwiv```
3. lock wwiv user: ```usermod -L wwiv```

This creates a wwiv group and user that has a home directory of
/home/wwiv (change this to whatever you want, but see the note below) 
and sets the shell to /sbin/nologin, which makes it impossible to log 
in as the wwiv user. The wwiv user should also be locked.

**NOTE:** If you see something like this:
```useradd: cannot create directory /home/wwiv```
It's probably because the base directory (/home) does not exist. You will 
need to create that separately before running the user command. You should 
not run into this unless you decide to use a directory location that's 
different than a typical user setup (like a separate /bbs filesystem or something).

Next, use sudo to grant your userid access to run stuff as the wwiv
user, since you can't log in as the wwiv user. This will be important
for manipulating files in the directory, since your userid won't own
them.

As root
visudo add the following line to allow access to all commands as the wwiv user:
youruserid ALL=(wwiv) ALL
To use this, simply run:
```sudo -u wwiv -s```
it will ask for your password and then will start a shell as the wwiv user.

You are now effectively the wwiv user. You can check this with the id command. For example:
```yourid@yourserver ~ $ id uid=1001(wwiv) gid=1001(wwiv) groups=1001(wwiv)```

### Steps to install

**NOTE:** run all commands from WWIV install directory as the wwiv user unless stated otherwise
NOTE All references to init refer to the WWIV init program in the WWIVBASE, NOT the linux init command.
Make WWIV directory (this should be the same as the home directory of the wwiv user above)

1. Download the latest wwiv-build-linux-release.tar.gz to your wwiv directory  
  [WWIV 5.0 Stable](https://build.wwivbbs.org/jenkins/job/wwiv_5.0.0/label=linux/lastStableBuild/)</br>
  [WWIV 5.1 Development](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux/lastSuccessfulBuild/)
2. Extract wwiv-build-linux-release.tar.gz into your wwiv directory 

If running the pre-built binaries, skip down to "Run Setup", otherwise continue with "Compile Manually"

##### Compile Manually
**NOTE:** Do these steps as a non-root user; your BBS user would be the easiest from a file permissions perspective later on.

There are currently pre-built binaries for linux available at http://build.wwivbbs.org, but they may not work on a given distribution.  You are welcome to try them, but compiling is likely to work better.
  
pull down the code from git (https://github.com/wwivbbs/wwiv.git) 
In the source directory (e.g., ```/home/wwiv/wwiv-master```), run ```cmake . && make``` (don't forget the ".")
assuming you built in ```/home/wwiv/wwiv-master```, the binaries you will have as a result are:
```
/home/wwiv/wwiv-master/bbs/bbs  
/home/wwiv/wwiv-master/init/init  
/home/wwiv/wwiv-master/nodemgr/nodemgr  
/home/wwiv/wwiv-master/wwivutil/wwivutil  
/home/wwiv/wwiv-master/network/network
/home/wwiv/wwiv-master/networkb/networkb  
```
These should all be placed in your base WWIV directory. For example, if your WWIV base is /home/wwiv and your git base is /home/wwiv/wwiv-master, the following will copy all the compiled binaries to your base wwiv directory
```
cd /home/wwiv  
cp wwiv-master/bbs/bbs wwiv-master/init/init wwiv-master/nodemgr/nodemgr wwiv-master/wwivutil/wwivutil wwiv-master/network/network wwiv-master/networkb/networkb  . 
```
**(don't forget the ".")**

##### Run Setup
Run ```sh install.sh``` </br>
It will get system-specific settings configured and run init at the end; say Yes to initializing and log out of init. </br>
init takes care of the remaining WWIV-specific config files (e.g., config.dat)  

Your BBS basic local setup is complete. Run ./bbs and set up a new user to be the sysop (#1) account (ie, type NEW for the user and fill in the user info). Once you are done, log out.  
Run ./init and set up all the details  
select (G) "General System Configuration" to set up the BBS name, etc  
select (P) "System Paths". You will want to set up relative pathing, not absolute paths, as tools that run under DOSEMU will conflict and get confused. 

example of relative pathing:

* Messages : msgs/ 
* GFiles : gfiles/  
* Menus : gfiles/menus/  
* Data : data/  
* Downloads : dloads/  

### Setting up multiple instances 

Managing your instance nodes is a setting in the wwiv.ini file. Find the following values and configure to your liking. The default setup gives you four nodes:  

```INI
NUM_INSTANCES        = 4  
TEMP_DIRECTORY       = temp%n  
BATCH_DIRECTORY      = batch%n  
```

Set up xinetd to handle telnet requests and run nodemgr 

Move ```${WWIVBASE}/wwiv-service``` to ```/etc/xinetd.d/wwiv```, change disable=yes to disable=no, and restart xinetd.  

Depending on how xinetd is configured, you may also need to adjust access settings in ```/etc/xinetd.conf```. The no_access or only_from directives for example often are set up to not allow remote connections by default.
If your system is using inetd instead, you will need to translate the wwiv-service file to an inetd.conf compatible format.  

**NOTE:** this will need to be created as the root user, since you are writing in the ```/etc/xinetd.d``` directory. Note we are using the user that we created above. Change the port, user and server_args values as appropriate (i.e., to match where you installed things, etc).


### After the install

If you've gotten this far, Your BBS should be up and running. Everything below this point is details about more in-depth configuration (DOORs, WWIVnet, etc) and some of the current warts that linux has that you need to be aware of. If you come across anything that is not detailed here, please let us know.

### DOSEMU config 

DOSEMU is used for a number of things that can't be handled directly. Here are some config details: 

* [DOSEMU common settings](Linux_dosemu_settings) - general settings for DOSEMU  
* [DOSEMU for system scripts](Linux_dosemu_scripts) - specific settings for system scripts (wwivnet, etc)
* [DOSEMU for doors] - specific settings for different doors  

### Configuring WWIVnet 
See [WWIVnet Config on Linux](WWIVNet_Linux) for details on configuring WWIVnet and subscribing to subs

### Things that are "hinky" 

* Filename Case mismatches   
* The biggest issues right now are problems with filename case mismatching. One way to get around this is to use hard linking. Hard linking only works if the files are on the same filesystem (which shouldn't be a problem since everything is in the same directory anyway). hard links also don't work for directories. hard links are preferred over symlinks (soft links) where possible because they are actually references to the same inode (ie, they are the same file with different names), so any change to one is actually a change to both. You can verify they are the same inode by using the ls command with a -i:  
```
wwiv@wdfs ~/msgs $ ls -li *.dat
173185 -rw-r--r-- 1 wwiv wwiv 200 May 11 23:50 GENERAL.dat
173234 -rw-r--r-- 1 wwiv wwiv 100 May 11 23:48 TESTSUB.dat
173387 -rw-r--r-- 1 wwiv wwiv 100 May 30 14:59 W4LINUX.dat 
173239 -rw-r--r-- 2 wwiv wwiv 1000 May 30 15:14 wwivsys.dat
173239 -rw-r--r-- 2 wwiv wwiv 1000 May 30 15:14 WWIVSYS.dat
```
**Note:** the inodes are the same in the first column, and the number of references to that inode is 2, rather than the usual 1.  
To create a hard link, use the ln command. For example:  
```'ln -P wwivsys.dat WWIVSYS.dat'```

_List of known filename case mismatches_

* Data  subs msgs files: msgs/*.dat should be UPPER.lower  
* Display Files  
* gfiles/  

_TERM settings_

The Curses library being used for init gets confused on some terminal settings, and results in a borked display on exit. You may have to type a "reset" command to get it to behave normally again. In general, it appears that using a TERM setting in the xterm family works best (xterm, xterm-color, etc).

### Troubleshooting

_Hung bbs process_

There have been some cases where the connection to the bbs will die for unknown reasons and it doesn't clean up properly. This leaves nodes hung up as in use and if a normal user was connected, they won't be able to reconnect. An easy way to simulate this is to connect with syncTERM and just close the syncTERM window instead of logging off.

To clean up disconnected processes, use the ps command to find them and kill them. Let's look at an example:
```
wwiv@wdfs ~ $ ps axu | head -n 1
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
    
wwiv@wdfs ~ $ ps axu | grep "\./bbs\s" | grep -v grep
wwiv     21546  6.1  0.4   5820  2508 ?        R    11:52   1:08 ./bbs /N1 /I1
wwiv     21611  0.2  0.4   5820  2252 pts/10   S+   12:09   0:00 ./bbs /N2 /I2
```
If you look at the TTY column, you will see that one of the active nodes has "pts/10" while the other has "?". The one with the "?" is the disconnected one. Active terminal sessions have a TTY for user interaction. When the TTY goes away, it becomes an unusable node. So, the one we are interested in killing off is the one with "?" in the TTY column.

so, we can use a shell script to clean these up:
```shell
for pid in `ps axu | grep "\./bbs\s" | grep -v grep | awk '{if($7 == "?") print $2}'`
do
    kill $pid
done
```

This will find all the ps lines that match ./bbs and have "?" in column #7, loop through them and run a kill command on the process id in column #2. You can put this in a shell script and schedule it via cron if this is a big issue, otherwise, it's available for occasional cleanup.

**NOTE:** You may need to change the field value references for your awk command to match your specific ps output.
