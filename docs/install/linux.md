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


## Steps to install the software

These are the steps for installing WWIV.  You should do this step to setup
a base system, even if you plan on compiling the binaries from source to use.

_**DO NOT RUN WWIV AS ROOT.**_ You are just asking to get screwed if you do.
The root account is the linux equivalent of SYSOP. Also, don't run WWIV
as your own user. Anything your user can do, the BBS can do. The best
option is to create a dedicated user to run the BBS.

Luckily, we have an installer script that will take care of most of the details for you.

1. Make a wwiv directory and cd into it (e.g., /home/wwiv)   
2. Download the latest wwiv-linux-release.tar.gz to your wwiv directory  
  [WWIV 5.5 Development](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux/lastSuccessfulBuild/)  
3. Extract wwiv-linux-release.tar.gz into your wwiv directory ( e.g, ``tar zxvf wwiv-linux-release.tar.gz``)  (please note that the filename will be different)
4. If you plan on using binaries you compiled yourself, please follow the instructions on the
   [WWIV readme.md file on GitHub](https://github.com/wwivbbs/wwiv#building-on-linux) and then
   return here before running the next step.
4. From the wwiv directory (i.e. /home/wwiv), run ``sudo ./install.sh`` and follow the prompts.
   You must run this as root becasue it takes care of all the setup items for you:
     * creating the WWIV user/GROUP
     * setting up sudo access for a standard user
     * installing the systemd service file.  
5. Log into the new wwiv user ``(e.g, sudo -u wwiv -s)`` and run ./wwivconfig to configure the BBS.
   (If that first sudo command doesn't work on your system, try ```sudo su - wwiv -s /bin/bash```)

If you have any issues, check the install_date_time.log file that was created during the install.  
If you still can't tell what happened, come and find us in IRC.


## Steps to install Manually Compiled binaries

Please follow the instructions on the 
[WWIV readme.md file on GitHub](https://github.com/wwivbbs/wwiv#building-one-linux) after you
installed the base system as described above (making sure to have completed all of the steps.)

## After the install

If you've gotten this far, Your BBS should be up and running. Everything below
this point is details about more in-depth configuration (DOORs, WWIVnet, etc) 
and some of the current warts that linux has that you need to be aware of. 
If you come across anything that is not detailed here, please let us know.

### Customization
In addition to the settings configured using **wwivconfig**, there are also 
several INI files that manage details about your install.  The main ones are:

1. wwiv.ini - the primary config file.  Most of your settings are here
1. net.ini - manages details for how to connect to wwivnet for message transfers

### dosemu config 

**dosemu** is used for a number of things that can't be handled natively in linux (ie, DOS binaries). Here are some config details: 

* [dosemu common settings](/cfg/dosemu.md) - general settings for dosemu  

### Configuring WWIVnet 
See [WWIVnet Config on Linux](/network/wwivnet_linux.md) for details on configuring WWIVnet and subscribing to subs

_TERM settings_

The Curses library being used for wwivconfig gets confused on some terminal settings, and results in a borked display on exit. You may have to type a "reset" command to get it to behave normally again. In general, it appears that using a TERM setting in the xterm family works best (xterm, xterm-color, etc).

