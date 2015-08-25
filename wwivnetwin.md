# Configuring WWIVNet on Windows
***

## Overview

1. Get [WWIVNET.zip](http://wwivbbs.com/wwivnet/)
2. Get Net38b.zip **NOTE:** As part of the WWIV 5.0 Update this is not yet available.

## Installation & Configuration

# **NOTE: This will all be revised shortly. Please hold.**

## NET.INI
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
