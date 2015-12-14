# DOSEMU common settings
***

This relates to settings for using DOSEMU to run certain parts of the WWIV 
BBS. The main things are system related (e.g., WWIVnet) and DOORs related. 
There are a number of things, however, that apply to all cases when using 
DOSEMU. If you haven't installed WWIV for linux yet, please check out 
[WWIV 5.0 Install on Linux](installlinux).

## Common Settings

###Overview

Configuring DOSEMU is generally pretty straightforward. Most linux 
distributions have it in their package repository in one form or another. 
This page won't cover getting it installed; what it covers is specific 
configuration items related to how to use it with WWIV.

The fundamental components of DOSEMU are:

Component | Comments
--------- | --------
dosemu | is actually a wrapper for the binary file dosemu.bin  
dosemu.bin | the main binary  
.dosemurc | a config file that's called when dosemu is invoked  
dosdebug | a binary that allows for inspecting running dosemu processes. It can be handy to use for killing a dosemu that has hung for some reason.  
.dosemu directory | typically, the .dosemu directory will be created under  the home directory of the user running it.  
dosemu.users | typically in /etc/dosemu. Defines user permissions  

DOSEMU typically comes with FreeDOS; a DOS implementation that works pretty 
well. The only downside I've seen is that it's a bit wordy. You get a lot of 
startup info when it's first called that can expose a bit more about your 
setup than you might want, but it does work. If you have it available, it's 
also possible to use MS-DOS instead of FreeDOS. I highly recommend reviewing 
the man pages for dosemu and dosemu.bin.

### User Permissions

Your wwiv user should be restricted in its access while running DOSEMU. This is found in the dosemu.users file (usually in /etc/dosemu). Just add a single line to the end of the file:

wwiv restricted  

### The .rc file  
the .dosemurc file sets up the basic operating environment your DOSEMU session 
will be running under. There isn't much you need to do with this; a fairly 
simple config will get you what you need. You should create a default 
.dosemurc in your ${WWIV_DIR}. One that will work for most things will 
look like this:

```shell
ifdef u_virtual  
serial { virtual com 1 }
endif

$_sound = (0)
$_cpu = "80586"
$_hogthreshold = (10)
$_dpmi_base = (0x10000000)
$_external_char_set = "cp437"
$_internal_char_set = "cp437"
$_layout = "us"
```

This will take all the default settings for drive locations. That's usually 
under the .dosemu directory (drive_c, drives, etc). If you use the same 
setup for everything or don't run any doors, that will be sufficient to run 
most things.

### running the first time 

If you have never run dosemu manually, please do it now as your bbs userid (e.g., wwiv). That sets up the shell drive info (typically under ~/.dosemu) that will be referenced in the rest of this page.

### The model of a script

When dealing with DOSEMU, you have to be able to pass information from WWIV to DOSEMU. This is usually handled by calling a shell script in the linux directory that runs a DOS batch file under DOSEMU. A typical script will look something like this:

```shell
#!/bin/bash
#
# Trade Wars 2002 chain
#

trap "echo" SIGHUP SIGINT SIGTERM
source ~/.wwivrc

NODE=$1

# we need to convert the chain.txt file to DOS format.  TW doesn't like unix files
unix2dos ~/temp${NODE}/chain.txt > /dev/null 2>&1

dosemu -f ~/.dosemurc -I "dosbanner 0" -E "tw2002.bat ${NODE}" 2>/dev/null
```

You will notice a few things in this script

1. The trap line is very important. It closes a security issue of allowing someone to ctrl-C out of a running shell script. You REALLY don't want that to happen. If it does, the user running the script has the potential to get dropped to a shell and they will have full access to every file your BBS user does. I'm not talking about every file in your BBS directory, I'm talking every file on your linux system that user can see. This is another reason the bbs user you create should be as limited as possible at the linux level. If you run DOSEMU as root, that will be full access to EVERY SINGLE FILE on the entire system. I can't stress enough that you have to be very careful with this; it's not 1992 anymore.
2. We are sourcing the .wwivrc file in the home directory. This is where we keep all the variables so that they can be used easily by all of our scrips.
3. We are setting NODE equal to the node value from the chainedit information
4. Then we call the various commands in which we are interested. In this case, unix2dos and dosemu

### Parts of a dosemu call

That last line:
`dosemu -f ~/.dosemurc -I "dosbanner 0" -E "tw2002.bat ${NODE}" 2>/dev/null` 
has a lot of stuff going on. Here is a breakdown of all the bits:

1. dosemu - the binary itself
2. -f ~/.dosemurc - We are calling a specific rc file. This allows us to have more than one so we can have separate configurations for system scripts and doors. By default, calling dosemu by itself will read .dosemurc in the user's home directory. If you are using .dosemurc, this flag is NOT necessary
3. -I "dosbanner 0" - This disables the startup text from DOSEMU (this is NOT settable in the rc file, so we do it at the time of calling dosemu
4. -E "tw2002.bat ${NODE}" - defines the batch file we are calling once DOSEMU starts up. In this case, we are passing the batch file for starting Trade Wars and the instance node.
5. 2>/dev/null - We are redirecting STDERR messages to /dev/null (ie, throwing them away). This is just to clean up output.

The main thing that you will be messing with the most is the -E parameter. Most everything else will "just work" and pretty much stay static once you get it dialed in.
and now the corresponding batch file

```batch
@echo off
break=off
f:
cd \tw2002
TW2002 TWNODE=%1 > ERR%1.LOG
exitemu
```

This is all pretty typical. The important item is the last line: exitemu. That closes the DOSEMU session and returns to the linux environment. Without it, your users will either become hung, or the process will drop into a DOS shell. Dropping into a shell is VERY bad; that gives full access to all your files and will likely let someone run rampant on your system.

### The DOS environment files
The core files in the DOS environment are still the config.sys and autoexec.bat files. Minimal files that will work for most things look like this:

_**config.sys**_  

```batch
SWITCHES=/F/N
DOS=UMB,HIGH
dosdata=umb
lastdrive=Z
files=40
stacks=0
buffers=10
device=d:\dosemu\ems.sys
install=d:\dosemu\lredir.com z: linux\fs\${DOSEMU_LIB_DIR}/drive_z ro
shellhigh=z:\command.com /e:1024 /p
```

The one interesting line is the install statement that establishes the Z: drive as the base location for the DOSEMU tools. This is a little weird, as they start out on the D: drive. This is the stock behavior, but you can disable that if you want. The main advantage to this is setting that drive read-only. It does add one extra line of output that you may not want to see.

_*autoexec.bat*_  

```batch
@echo off
break=off
path z:\bin;z:\gnu;z:\dosemu
set HELPPATH=z:\help
set TEMP=c:\tmp
prompt $P$G

REM The following needs to be the LAST line in autoexec.bat
unix -e
```

About the only thing that is really new here is the unix command at the end of the autoexec.bat file. That tells DOSEMU to run the command that you passed with the -E argument to dosemu in your shell script. The break=off is related to the trap security issue I mentioned above, but this one is at the DOS level. You don't want people using ctrl-C to break out of batch files and gaining access to all your files.

## Common gotchas
1. vm.mmap_min_addr=0 - In recent linux kernels, being able to map to low memory addresses was disabled due to security concerns; this breaks DOSEMU for a lot of things. You will need to add vm.mmap_min_addr=0 to your /etc/sysctl.conf (and reboot, or reload as root with sysctl -p) if you want to be able to to run certain programs (TW2002 is one such program that suffers from this).
2. DOS doesn't understand UNIX - This might sound obvious, but it will bite you a lot; especially if you use MS-DOS instead of FreeDOS. If the batch file you are running in your DOSEMU drive is not a DOS file format (i.e., lines do not end in \r\n), you may have issues with your batch files not running properly. Convert all batch files with something like unix2dos to solve this problem.
Filename case matters (but only to linux) - Especially with system scripts, you will find instances where your DOS programs are creating uppercase files, but it's looking for lowercase files on the linux side (or vice versa, or some mix in-between).
Path references are picky - Yet another DOS/UNIX compatibility issue. DOS expects a backslash for a directory separator, while linux expects a forward slash. You will find yourself converting things back and forth to make sure the current environment has the proper separator defined.
3. File location matters - You need to make sure you have all your scripts in the right place for things to find them. Typically, your shell files will be defined relative to the base WWIV directory and your DOS batch files will be in the corresponding C: drive in the DOSEMU environment. It's not necessary to do that, but it makes things easier to find.

### System-Specific Cases

Now that we have covered the basics of setting up DOSEMU, we have a couple advanced details regarding DOSEMU for our system scripts and WWIVnet and using DOSEMU for DOORs.

You may not want the same configuration for all instances of DOSEMU. Maybe you want a different set of DOS disks, maybe you want to run MS-DOS 5 for one door, or MS-DOS 6.22 for another, or the default FreeDOS for something else. The key to running different configurations lies in using a different .dosemurc file to point to different drives.

In order to accomplish this, all you need to do is copy the standard .dosemurc to something else (e.g., .dosemurc_doors) and add a line that points to that directory. 
`$_hdimage = "/bbs/wwiv/.dosemu/drive_c_doors drives/d"`

The $_hdimage variable in the .rc file determines what "drives" the instance of DOSEMU will see, with the DOS drive letters being defined in order. The above example will end up with two drives:

C: = /bbs/wwiv/.dosemu/drive_c_doors  
D: = drives/d  

DOSEMU will typically put the C: drive in .dosemu/drive_c by default. That references the FreeDOS startup files, but will use the D: drive to load command.com and all the utility binaries. If you want a separate C: drive, just copy the drive_c directory to another location (e.g., drive_c_doors) and edit the config.sys, autoexec.bat and any other batch files as you see fit. 

**NOTE:** There really shouldn't be a need to do this unless you have a case where a specific DOS application needs different startup parameters or a specific OS that conflicts with your defaults, but it is possible to do it. config.sys and autoexec.bat are usually generic enough and just hand off to your batch file for the specific invocation.

### DOSEMU with real MS-DOS

To set up real MS-DOS, all you need to do is a few steps

1. extract all your DOS files to a directory (eg, .dosemu/msdos622/DOS)
2. copy command.com, io.sys, msdos.sys to the root of "C:" (e.g., .dosemu/msdos266)
3. make sure config.sys, autoexec.bat and any other batch files are DOS formatted (i.e., convert with unix2dos)
4. create a new .dosemurc file (e.g., .dosemurc622) that has an $_hdimage that points to .dosemu/msdos622 for C:

To use it, just reference it in your dosemu call in your linux scripts:  
`dosemu -f ~/.dosemurc622 -I "dosbanner 0" -E "tw2002.bat ${NODE}" 2>/dev/null`

The main gotcha doing this is you still need the FreeDOS tools that will exit DOSEMU, so make sure you have access to the D: drive like usual.