# Configuring WWIVNet on Windows
***

## Installation and Configuration

* Submit your WWIVNet Node Application to 1@1 Weather Station BBS - telnet://bbs.weather-station.org/
* Get the latest version of [WWIVNET-##.zip](http://build.wwivbbs.org/job/wwivnet/) on the build server. 
* Put all of the contents of the zip in ```\wwiv\nets\wwivnet```
* [Net38b.zip](http://www.wwiv.us/net38b3.zip) put all of the *.EXE files in \WWIV. The rest of the files are not needed.
* Setup your node in WWIV INIT.EXE
```
┌─────────────────────────────────────────────────── Network Configuration ┐
│ Net Type  : WWIVnet                                                      │
│ Net Name  : WWIVNet                                                      │
│ Node #    : YOURNODE                                                     │
│ Directory : NETS\WWIVNET\                                                │
└──────────────────────────────────────────────────────────────────────────┘
```
* Create \wwiv\nets\wwivnet\CALLOUT.NET with ```@1 && /1 "password"``` replacing password with the one provided by 1@1.
* From \wwiv\ run ```Network3 y``` which will verify your configuration and files and send an email to your local #1 mailbox. 
* From the \wwiv run ```bbs.exe -M``` to pickup and deliver the mail.  
**Note:** The default config of WWIV5TelentServer runs the local node with the -M command so if you run the local node to check your mail this will happen anyway, but you have to launch the local node AFTER you run Network3.
* Login as #1 and Check your email on the BBS. You should see a pretty email and it should say "Everything is Fine" along with other details.

###Create BINKP.CMD
Create \wwiv\bink.cmd with the following commands:
```
@ Echo OFF
rem NetworkB controller
cls

:start
C:
cd \wwiv
echo Starting NetworkB to Receive Inbound Connections
echo.
networkb --receive

goto start
```

####Verify Network Mail
* With \wwiv\bbs.exe -m & BINKP.CMD running:
* Login to your BBS and send an email to 1@1
* You will be prompted to pick the net (WWVIVnet) and confirm the system (Weather Station).
* Give it a subject. Send the Net Coordinator a love note and hit /S to save and send.
* Ideally you and 1@1 are chatting in IRC while you do this. ;-) then you can confirm and troubleshoot all at once. If not, wait a couple of hours for 1@1 to read or reply.

***
Within the Net37.zip there are two documents and I've also posted them on the wiki. They have a lot of technical information if you'd like to read it.

* [NET37.DOC](net37doc) <- Has all the installation information (Must Read!)
* [NET37TEC.DOC](net37tecdoc) <- Good technical read on the inner workings of WWIVNet (optional)