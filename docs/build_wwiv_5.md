#Building WWIV5 5.0 BBS
***

## Windows Builds
This assumes you already have github desktop installed.
We prefer contributors to FORK WWIVBBS repositories to their account and work from there.
If you're on Windows this is likely in this folder: "Documents\GitHub\WWIV"

###Download Visual Studio
WWIV 5.0 is compiled with the VS2015 compiler for windows. You can download [Microsoft Visual Studio 2015 Community](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx)

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

##Build WWIV 5.0
* From the VS2015 menu, select File and then Open from Source Control
On the bottom, you should see your local GIT repositories already.
Above that you will see Login to GitHub, do that.
* Now in your Local repositories (Documents\GitHub\WWIV), open WWIV.SLN
VS will now open the solution file and analyzed all the files in the solution.
* When VS says "READY" on the bottom, go to Build on the menu and select Build Solution(F7). If you have any build errors, run Build one more time and see if that resolves itself as there can be timing issues on some machines.
* You select whether or not you are building DEBUG or RELEASE on the toolbar. Those binaries and other built files will be places in a \debug and \release folder along side your github source files. ex: ```Documents\GitHub\WWIV\debug``` or ```Documents\GitHub\WWIV\release```.

## Linux Builds
TODO by one of the linux devs
