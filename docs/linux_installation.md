# Installing WWIV on Linux
***

## Prerequisites

### Critical Items
These are items that are needed for proper functionality.
**NOTE** The installer **will halt** and ask you to address these if they are not found

Package | Comments
------- | ----------
sudo | to allow more controlled access to root-owned tools
zip/unzip | needed for system setup, and really any BBS should have it
ncurses (libncurses5)| Needed for CLI tools GUI display (libncurses5 is the debian version)
awk, grep, sed | core OS tools for line parsing (these are _really_ basic)


### Optional Items
These are items that are not needed for proper functionality of a basic BBS, but will make things
a lot easier (and potentially necessary for certain advanced configurations).

**NOTE** The installer will warn you about these, but will continue.

Package | Comments
------- | ----------
dosemu | to run dos|based doors and utilities  
dos2unix/unix2dos | for converting file types  


## Steps to install the precompiled binaries

These are the steps for using the precompiled binaries.  These are the
recommended ones to use if you have a debian-based system (eg, debian 8,
ubuntu, etc).

_**DO NOT RUN WWIV AS ROOT.**_ You are just asking to get screwed if you do.
The root account is the linux equivalent of SYSOP. Also, don't run WWIV
as your own user. Anything your user can do, the BBS can do. The best
option is to create a dedicated user to run the BBS.

Luckily, we have an installer script that will take care of most of the details for you.

1. Make a wwiv directory and cd into it (e.g., /home/wwiv)   
2. Download the latest wwiv-linux-release.tar.gz to your wwiv directory  
  [WWIV 5.3 Development](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux/lastSuccessfulBuild/)  
3. Extract wwiv-linux-release.tar.gz into your wwiv directory ( e.g, ``tar zxvf wwiv-linux-release.tar.gz``) 
4. Run ``sudo ./install.sh`` and follow the prompts.  You must run this as root becasue it takes care of
   all the setup items for you: creating the WWIV user, setting up sudo access for a standard user, installing
   the systemd service file, etc.  
5. log into the new wwiv user ``(e.g, sudo -u wwiv -s)`` and run ./init to configure the BBS 

If you have any issues, check the install_date_time.log file that was created during the install.  
If you still can't tell what happened, come and find us in IRC.



## Steps to install Manually Compiled binaries

### Compile things you will need  
If you are going to be compiling your own BBS binaries, these are a must-have

Package | Comments
------- | ----------
git |  to grab the source code for compiling  
ncurses-devel (libncurses5-dev) | development headers, etc.  (libncurses5-dev is the debian version)
cmake | used to control the software compilation process
make | runs the compile steps
g++ 4.9 or later | the actual compiler tool


All the steps for installing manually compiled biniaries are the same as the prebuilt

1. Make a wwiv directory and cd into it (e.g., /home/wwiv)   
2. Download the latest wwiv-linux-release.tar.gz to your wwiv directory  
  [WWIV 5.3 Development](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux/lastSuccessfulBuild/)  
3. Extract wwiv-linux-release.tar.gz into your wwiv directory ( e.g, ``tar zxvf wwiv-linux-release.tar.gz``) 


This is where things differ (we need to replace the prebuilt binaries with our new ones)


pull down the code from git (https://github.com/wwivbbs/wwiv.git) 
Navigate to your source directory (e.g., ```/home/wwiv/wwiv-master```)   
The first time you compile, you need to precompile cryptlib: 
`` pushd deps/cl342; make; popd > /dev/null `` 

Now that you have the pre-reqs compiled, it's time to compile WWIV itself.  
run ```cmake . && make``` (don't forget the ".")  

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
/home/wwiv/wwiv-master/networkb/networkc  
/home/wwiv/wwiv-master/networkb/networkf  
/home/wwiv/wwiv-master/wwivutil/wwivutil  
```
These should all be placed in your base WWIV directory. For example, if your WWIV base is /home/wwiv and your git base is /home/wwiv/wwiv-master, the following will copy all the compiled binaries to your base wwiv directory
```
cd /home/wwiv/wwiv-master
cp -v bbs/bbs init/init wwivd/wwivd network/network network1/network1 network2/network2 network3/network3 networkb/networkb networkc/networkc networkf/networkf wwivutil/wwivutil /home/wwiv/
```

Now that we have the new binaries in place, we can pick up where we left off...


4. Run ``sudo ./install.sh`` and follow the prompts.  You must run this as root becasue it takes care of
   all the setup items for you: creating the WWIV user, setting up sudo access for a standard user, installing
   the systemd service file, etc.  
5. log into the new wwiv user ``(e.g, sudo -u wwiv -s)`` and run ./init to configure the BBS 

## After the install

If you've gotten this far, Your BBS should be up and running. Everything below this point is details about more in-depth configuration (DOORs, WWIVnet, etc) and some of the current warts that linux has that you need to be aware of. If you come across anything that is not detailed here, please let us know.

### Customization
There are several INI files that manage details about your install.  The main ones are:

1. wwiv.ini - the primary config file.  Most of your settings are here
2. wwivd.ini - tells the wwivd service what ports to monitor
3. net.ini - manages details for how to connect to wwivnet for message transfers
### dosemu config 

dosemu is used for a number of things that can't be handled natively in linux (ie, DOS binaries). Here are some config details: 

* [dosemu common settings](linux_dosemu_settings.md) - general settings for dosemu  

### Configuring WWIVnet 
See [WWIVnet Config on Linux](network/wwivnet_linux.md) for details on configuring WWIVnet and subscribing to subs


_TERM settings_

The Curses library being used for init gets confused on some terminal settings, and results in a borked display on exit. You may have to type a "reset" command to get it to behave normally again. In general, it appears that using a TERM setting in the xterm family works best (xterm, xterm-color, etc).

