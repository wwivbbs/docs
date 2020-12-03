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
zlib1g | Needed for SSH (called zlib on centos)
awk, grep, sed | core OS tools for line parsing (these are _really_ basic)

<br/>
### Optional Items
These are items that are not needed for proper functionality of a basic BBS, but will make things
a lot easier (and potentially necessary for certain advanced configurations).

**NOTE** The installer will warn you about these, but will continue.

Package | Comments
------- | ----------
dosemu | to run dos|based doors and utilities  
dos2unix/unix2dos | for converting file types  



<br/>
## Installation Steps

These are the steps for installing WWIV.  You should do this step to setup
a base system, even if you plan on compiling the binaries from source to use.

_**DO NOT RUN WWIV AS ROOT.**_ This will cause many problems, please run it
as a user account, and ideally a UNIX account that is not used by any
user for interactive use.  The standard install name is ```wwiv``` with
a group of ```wwiv``` and without the ability to login on it's own.  This
means that you login as a normal user, then use ```su``` or ```sudo``` to
execute commands as the wwiv user.

The root account is the linux equivalent of SYSOP. Also, don't run WWIV
as your own user. Anything your user can do, the BBS can do. The best
option is to create a dedicated user to run the BBS.

Luckily, we have an installer script that will take care of most of the
details for you.

1. Make a wwiv directory and cd into it (e.g., /opt/wwiv).
   Example:<br/> 
   ```
   sudo mkdir -p /opt/wwiv && sudo chown "$(id -u):$(id -g)" /opt/wwiv
   ```
   <br/>
2. Download the latest wwiv-linux-release.tar.gz to your wwiv directory.
   Here are some links: 
     * [Debian10](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux-debian10/lastSuccessfulBuild/)
     * [Ubuntu 20.04](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux-ubuntu2004/lastSuccessfulBuild/)
     * [Centos7](https://build.wwivbbs.org/jenkins/job/wwiv/label=linux-centos7/lastSuccessfulBuild/)  
   <br/>
3. Extract wwiv-????.tar.gz into your wwiv directory.
   *(please note that the filename will be different)* 
       ```
		   tar zxvf wwiv-linux-debian10-5.5.0-1234.tar.gz
       ```   
   <br/>
4. If you plan on using binaries you compiled yourself, please follow the
   instructions on the [WWIV readme.md file on GitHub](https://github.com/wwivbbs/wwiv#building-on-linux)
   and then return here before running the next step.

5. From the wwiv directory (i.e. /opt/wwiv), run ``sudo ./install.sh`` and
   follow the prompts.
   <br/>
   There are many options available for install.sh,
   please run ```sudo ./install.sh  --help``` for the full list of options. 
   By default the script expects the username and groupname to both be 
   ```wwiv``` and not yet exist.
   <br/>
   **You must run this as root**.  The script performs the following tasks
   for you:

       * creating the WWIV user and group
       * setting up sudo access for a standard user
       * installing the systemd service file.  

Now, you may log into the new wwiv user ``(e.g, sudo -u wwiv -s)`` and run ./wwivconfig
to configure the BBS.
(If that first sudo command doesn't work on your system, try 
```sudo su - wwiv -s /bin/bash```)

If you have any issues, check the install_date_time.log file that was created
during the install.  

If you still can't tell what happened, come and find us in IRC or post a message
in one of the wwiv support subs.

## Steps to install Manually Compiled binaries

Please follow the instructions on the 
[WWIV readme.md file on GitHub](https://github.com/wwivbbs/wwiv#building-one-linux)
after you installed the base system as described above (making sure to have
completed all of the steps.)

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

### Directory Permissions

It is possible to let your "regular" user write and create files in the WWIV 
directory though clever use of permissions, based off [this solution](https://askubuntu.com/questions/647392/user-access-to-ftp-and-at-same-time-set-www-data-as-owner-group).  

These instructions assume that your installation is in `/opt/wwiv`; adjust paths appropriately.

1. Add your regular or FTP user to the wwiv group: 

`sudo usermod -a -G wwiv USERNAME`

2. To ensure everything is owned properly to start: 

`sudo chown -R wwiv:wwiv /opt/wwiv`

3. Set the permission for the main folder: `sudo chmod 2775 /opt/wwiv`

The chmod values are: 2=set group id, 7=rwx for owner (wwiv), 7=rwx for group 
(wwiv), 5=rx for world.  Setting group ID (SETGID) bit (2) causes the group 
(wwiv) to be copied to all new files/folders created in that folder. 

4. Use `find` to do the same process for all subdirectories: 

`sudo find /opt/wwiv -type d -exec chmod 2775 {} +`

5. Make sure all other files are read/write for group: 

```
sudo find /opt/wwiv -type f -perm 664 -exec chmod 0664 {} +
sudo find /opt/wwiv -type f -perm 644 -exec chmod 0664 {} + 
sudo find /opt/wwiv -type f -perm 646 -exec chmod 0664 {} +
sudo find /opt/wwiv -type f -perm 666 -exec chmod 0664 {} +
```

6. Change the umask for your users to 0002 by adding this line to the bottom of /etc/profile

`umask 0002`

7. Reboot and profit.

### dosemu config 

**dosemu** is used for a number of things that can't be handled natively in
linux (ie, DOS binaries). Here are some config details: 

* [dosemu common settings](../cfg/dosemu.md) - general settings for dosemu  

### Configuring WWIVnet 
See [WWIVnet Config on Linux](../network/wwivnet_linux.md) for details on
configuring WWIVnet and subscribing to subs

_TERM settings_

The Curses library being used for wwivconfig gets confused on some terminal
settings, and results in a borked display on exit. You may have to type a
"reset" command to get it to behave normally again. In general, it appears
that using a TERM setting in the xterm family works best (xterm, 
xterm-color, etc).

