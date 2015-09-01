# Configuring WWIVNet on Windows
***

## Installation and Configuration

* Submit your WWIVNet Node Application to 1@1 [Skulls & Bones BBS](telnet://skulls.wwivbbs.com)
* Get [WWIVNET.zip](http://wwivbbs.com/wwivnet/) put all of the contents of the zip in \wwiv\nets\wwivnet
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
* Edit \wwiv\NET.INI: POPNAME & POPPASS will be given to you by 1@1 **NOTE: ** NET.INI is missing from the release zip. For now grab it from down below.
* Create \wwiv\nets\wwivnet\CALLOUT.NET and add the line supplied by 1@1
* Create \wwiv\mail.bat and add the line provided to you by 1@1. You will have a second line as well bbs.exe -m -e with runs the local mail handler and maintenance events.
* From \wwiv\ run ```Network3 y .0``` which will verify your configuration and files and send an email to your local #1 mailbox. 
* From the \wwiv run ```bbs.exe -M``` to pickup and deliver the mail. **Note: ** The default config of WWIV5TelentServer runs the local node with the -M command so if you run the local node to check your mail this will happen anyway, but you have to launch the local node AFTER you run Network3.
* Login as #1 and Check your email on the BBS. You should see a pretty email and it should say "Everything is Fine" along with other details.

####Verify Network Mail
* Create a new email and address it to 1@1
* You will be prompted to pick the net (WWVIVnet) and confirm the system Skull & Bones.
* Give it a subject. Send Eli a love note and hit /S to save and send.
* From \WWIV run ```MAIL.BAT``` which will send the outbound mail. Ideally you and ELi are chatting in IRC while you do this. ;-) then you can confirm and troubleshoot all at once. If not, wait a couple of hours and run ```MAIL.BAT``` again.

####Scheduling MAIL.BAT

TODO: Testing Event Schedule

## NET.INI Workaround
```INI
[NETWORK1]
primenet = WWIVNET
smtphost= wwivbbs.com
POPHOST = wwivbbs.com
SMTPPORT= 2525
POPPORT= 110
POPNAME = Your POP Name
POPPASS = Your POP Pass
;
[GENERAL]
DRIVER = KLOS          
PPPCMD = KALI
RETRIES = 3
KEEPSENT = 7
ALLMAIL = Y      
MOREINFO = N
ONECALL = Y
CLEANUP = N
REALNAME = Y
IPADDR = [Your BBS IP ADDR]
;IPSTRING = IP address set to
NETMASK = 255.255.255.0
DNS = [Your preferred DNS server address]
SDNS = [Your secondary DNS server address]
DOMAIN = wwivbbs.com
GATEWAY =  [Your GW ADDR]
TIMEOUT = 90
SOCK_DELAY=90
INACTIVE = 120
; User account name for forwarding service, if used.
;FWDNAME = unclebrute
; Mail domain for forwarding services, if used.
;FWDDOM =ispop.net
[NEWS]
;NEWSHOST=[NEWS Server IP ADDR]
;NEWSNAME=[NEWS Server Login]
;NEWSPASS=[NEWS Server Pass]
;NEWSNAME0 = newsname
;NEWSHOST0 = news.erols.com
;NEWSHOST = msnews.microsoft.com
;NEWSPASS0 = newspassword
POSTMASTER = 1
REGNO = 0
NEWSRC_UPD= Y
TMPDIR = C:\WWIV\NEWSTEMP
; Use WWIV real name (USER.LST) instead of the alias on outbound mail.
REALNAME = N
SPAMCONTROL = Y
SPAMADDRESS = YourFake Email@some.com.remove.com
REPLYTO = Your email@your.com.remove.com
SIGNATURE = C:\WWIV\GFILES\inet.tag
;RIMETAG = C:\WWIV\GFILES\rime.tag
;DOVETAG = C:\WWIV\GFILES\dove.tag
XPOSTS = 5
BINXPOST = Y
QUIET = N
;

```

Within the Net37.zip there are two documents and I've also posted them on the wiki:  

* [NET37.DOC](net37doc) <- Has all the installation information (Must Read!)
* [NET37TEC.DOC](net37tecdoc) <- Good technical read on the inner workings of WWIVNet (optional)
