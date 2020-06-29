# SR Doors (Barren Realms Elite, Falcon's Eye, Falcon's Honor and The Arcadian Legends)
***
These are instructions universal to the four game series that run under the same door software that John Dailey took over. If you want
Barren Realms Elite, Falcon's Eye, Falcon's Honor and The Arcadian Legends Installed these instructions will be helpful.

You can find BRE/FE/TAL/FH at John Dailey Software

Grab your desired doorgame in this example we are installing Falcon's Eye.

* Download the program and run the exe file.
* Run the INSTALL.EXE in the directory you installed the door in such as c:\wwiv\door\fe
* After you configure your settings from INSTALL, run the unpack batch file
* RUN FE RESET after unpacking to configure your game settings
* You will also need to edit your setup.sr file, most likely you will be running more than one node.
```
c:\wwiv\temp\1\DOOR.SYS
10   <- Line # of Username or First name
0   <- Line # of Last name (0 if prev line was full name)
20   <- Line # of IBM charaters (1/Y/G = yes)
20   <- Line # of ANSI support (1/Y/G/C = yes)
21   <- Line # of number of lines on the screen
2   <- Line # of baud rate
1   <- Line # of COM port
19   <- Line # of time left (minutes)
0   <- Line # of Real Name
Enter 0 for any value not supported.
```
You will need to make a new file for each node, this would be SETUP.1 if you want node 2, change the node number on the first line
of SETUP.SR and save it as setup.2

You also will need to make a batch file to call the game.

The batch file I use on my system is here:

```
@ECHO OFF
C:
CD\WWIV\DOOR\FE
SRDOOR -f setup.%1
FE
c:
CD \wwiv
EXIT
```

the -f switch is used to load a config file for each node you run.

Your WWIV Door Configuration Settings would be as follows:

```
A) Description  : Falcon's Eye
B) Filename     : c:\wwiv\door\fe\falc.bat %n
C) SL           : 10
D) AR           : None
E) ANSI         : Optional
F) Exec Mode:     FOSSIL
I) Launch From  : Temp/Node Directory
J) Local only   : No
K) Multi user   : No
L) Registered by: AVAILABLE
M) Usage     	: 
N) Age limit	: 0 - 255
```
