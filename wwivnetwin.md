# Configuring WWIVNet on Windows
***

## Installation and Configuration

* Submit your WWIVNet Node Application to 1@1 Weather Station BBS - telnet://http://bbs.weather-station.org/
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
* Rename ```\wwiv\sample_net.ini``` to ```\wwiv\net.ini```
* Edit \wwiv\net.ini and input the POPNAME & POPPASS will be given to you by 1@1  
* Create \wwiv\nets\wwivnet\CALLOUT.NET and add the line supplied by 1@1
* Create \wwiv\mail.bat and add the line provided to you by 1@1. You will have a second line as well bbs.exe -m -e with runs the local mail handler and maintenance events.
* From \wwiv\ run ```Network3 y .0``` which will verify your configuration and files and send an email to your local #1 mailbox. 
* From the \wwiv run ```bbs.exe -M``` to pickup and deliver the mail.  
**Note:** The default config of WWIV5TelentServer runs the local node with the -M command so if you run the local node to check your mail this will happen anyway, but you have to launch the local node AFTER you run Network3.
* Login as #1 and Check your email on the BBS. You should see a pretty email and it should say "Everything is Fine" along with other details.

###Create MAIL.BAT
In your \wwiv\ directory create MAIL.BAT and insert the following lines.
```batch
@ECHO OFF
c:
cd \wwiv\
NETWORK /N1 .0
bbs -m -e
```

####Verify Network Mail
* Create a new email and address it to 1@1
* You will be prompted to pick the net (WWVIVnet) and confirm the system Skull & Bones.
* Give it a subject. Send Eli a love note and hit /S to save and send.
* From \WWIV run ```MAIL.BAT``` which will send the outbound mail. Ideally you and ELi are chatting in IRC while you do this. ;-) then you can confirm and troubleshoot all at once. If not, wait a couple of hours and run ```MAIL.BAT``` again.

####Scheduling MAIL.BAT

None of the SysOps polled as of Sept 2015 use the Event Service to run WWIVNet Mail. 
They all use some sort of scheduling service. You could use the one builtin to windows.
Or a variety of other applications. Here's some we're using

Scheduler | BBS Who uses 
--- | ----
[Z-Cron](http://www.z-cron.com/) | Cloud City BBS @206
[System Scheduler](http://www.splinterware.com/products/wincron.htm) | Skull and Bone @1
[Windows Task Scheduler](http://windows.microsoft.com/en-US/windows/schedule-task#1TC=windows-7) | Blood Stone BBS @707

***
Within the Net37.zip there are two documents and I've also posted them on the wiki:  

* [NET37.DOC](net37doc) <- Has all the installation information (Must Read!)
* [NET37TEC.DOC](net37tecdoc) <- Good technical read on the inner workings of WWIVNet (optional)