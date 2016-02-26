#Building WWIV5 BBS
***

## Windows Builds
This assumes you already have github desktop installed.
We prefer contributors to FORK WWIVBBS repositories to their account and work from there.
If you're on Windows this is likely in this folder: "Documents\GitHub\WWIV"

###Download Visual Studio
WWIV is compiled with the VS2015 compiler for windows. You can download [Microsoft Visual Studio 2015 Community](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx)

###Install VS2015
Choose a custom install and select the following components:
```
C++
   Common Tools for C++
   MFC for C++
   Windows XP Support for C++
Common Tools
   Git Fow Windows <- You should have this already
   GitHub for VS
```

##Build WWIV
* From the VS2015 menu, select File and then Open from Source Control
On the bottom, you should see your local GIT repositories already.
Above that you will see Login to GitHub, do that.
* Now in your Local repositories (Documents\GitHub\WWIV), open WWIV.SLN
VS will now open the solution file and analyzed all the files in the solution.
* When VS says "READY" on the bottom, go to Build on the menu and select Build Solution(F7). If you have any build errors, run Build one more time and see if that resolves itself as there can be timing issues on some machines.
* You select whether or not you are building DEBUG or RELEASE on the toolbar. Those binaries and other built files will be places in a \debug and \release folder along side your github source files. ex: ```Documents\GitHub\WWIV\debug``` or ```Documents\GitHub\WWIV\release```.

## Linux Builds
This only builds the binaries, it does NOT include the supporting files.  Please follow the [Linux Installation](linux_installation.md) instructions for getting the supporting files in place.

**NOTE:** Do these steps as a non-root user; your BBS user would be the easiest from a file permissions perspective later on.  root should never be used to compile binaries.

### Things you need:

Package | Comments
------- | ----------
git | to grab the source code for compiling  
ncurses | ncurses-devel, libncurses5-dev, etc depending on your distro
cmake | 
make | 
g++ 4.9 or later | 

### Build Steps
There are two primary ways to get the files for building; download a zip of the project or clone the repo.  In both cases, you will end up with the following files in the build directory:  

   bbs/bbs  
   init/init  
   nodemgr/nodemgr  
   wwivutil/wwivutil  
   network/network  
   networkb/networkb  

#### Using a downloaded .zip (no git required)
* If you don't want to worry about managing a git repo and just want the files, you can download the zipped project file from GitHub.  Go to https://github.com/wwivbbs/wwiv and click on the "[Download Zip](https://github.com/wwivbbs/wwiv/archive/master.zip)" Button
* unzip the zip file. It will create a wwiv-master directory in your current location
* navigate to wwiv-master
* If you want to create a debug version, run ```./debug.sh```
* run ```cmake . && make``` (don't forget the ".")

#### Using a repo
If you plan to have an active repo, we prefer contributors to FORK WWIVBBS repositories to their account and work from there.  
* [Fork](https://help.github.com/articles/fork-a-repo/), then clone your fork
    
    ```bash
    # Create a directory for your fork's clone.
    mkdir git
    chdir git
    # Clone your fork into the current directory (git).
    # Use your GitHub username instead of <em>YOUR-USERNAME</em>
    git clone https://github.com/<em>YOUR-USERNAME</em>/wwiv.git
    ```
* Navigate to wwiv
* If you want to create a debug version, run ```./debug.sh```
* run ```cmake . && make``` (don't forget the ".")
