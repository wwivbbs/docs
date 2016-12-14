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
/home/wwiv/wwiv-master/wwivd/wwivd
/home/wwiv/wwiv-master/network/network
/home/wwiv/wwiv-master/network1/network1
/home/wwiv/wwiv-master/network2/network2
/home/wwiv/wwiv-master/network3/network3
/home/wwiv/wwiv-master/networkb/networkb  
/home/wwiv/wwiv-master/wwivutil/wwivutil  
```
These should all be placed in your base WWIV directory. For example, if your WWIV base is /home/wwiv and your git base is /home/wwiv/wwiv-master, the following will copy all the compiled binaries to your base wwiv directory
```
cd /home/wwiv  
cp wwiv-master/bbs/bbs  wwiv-master/init/init  wwiv-master/wwivd/wwivd wwiv-master/network/network wwiv-master/network1/network1 wwiv-master/network2/network2 wwiv-master/network3/network3 wwiv-master/networkb/networkb  wwiv-master/wwivutil/wwivutil  .
```
**(don't forget the ".")**

##### Run Setup
Run ```sh install.sh``` </br>
It will get system-specific settings configured and run init at the end; say Yes to initializing and log out of init. </br>
init takes care of the remaining WWIV-specific config files (e.g., config.dat)  

Your BBS basic local setup is complete. Run ./bbs and set up a new user to be the sysop (#1) account (ie, type NEW for the user and fill in the user info). Once you are done, log out.  
Run ./init and set up all the details  
select (G) "General System Configuration" to set up the BBS name, etc  
select (P) "System Paths". You will want to set up relative pathing, not absolute paths, as tools that run under dosemu will conflict and get confused. 

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

### Set up systemd to run the wwivd service

Systemd is the common standard on most current linux distributions.  We have created the wwivd service to manage connections to the bbs, and also to the BinkP subsystem that handles messages transfers between WWIV systems on WWIVnet.

There are two files that manage the linux portion of the config.  When you run the install.sh script, it will create two files:
```
config 
wwivd.service 
```
in the systemd directory.  

As root, create the /etc/wwiv directory and copy config to /etc/wwiv/config; and copy wwivd.service to /etc/systemd/system

To make the wwivd service active and start on system reboot, do the following as root:
```
systemctl daemon-reload
systemctl enable wwivd.service
```

The config options for setting what ports to use and other command options are found in the wwivd.ini file in your WWIV directory.  A basic working file to get WWIV listening on a telnet port and ssh port looks like:

```ini
[WWIVD]
telnet_port = 23
ssh_port = 22
```

You will probably want to change the ssh port since it will likely conflict with your current ssh session.

Once you have all the configs in place, you can start and stop wwivd with systemctl.  
To start it: ```systemctl start wwivd.service```  
To stop it: ```systemctl stop wwivd.service```  
To check status: ```systemctl status wwivd.service```  



### After the install

If you've gotten this far, Your BBS should be up and running. Everything below this point is details about more in-depth configuration (DOORs, WWIVnet, etc) and some of the current warts that linux has that you need to be aware of. If you come across anything that is not detailed here, please let us know.

### dosemu config 

dosemu is used for a number of things that can't be handled natively in linux (ie, DOS binaries). Here are some config details: 

* [dosemu common settings](linux_dosemu_settings.md) - general settings for dosemu  

### Configuring WWIVnet 
See [WWIVnet](wwivnet.md) for details on configuring WWIVnet and subscribing to subs

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

