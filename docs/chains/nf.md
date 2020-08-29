# Using NetFoss for FOSSIL Support
***

Using NetFoss will likely provide a more stable experience than the
sbbsexec.dll bundled with WWIV for running doors.  It should have
fewer NTVDM crashes when exiting doors and higher performance as
NetFoss is optimized for speed, and WWIV's handling of sbbsexec
is not.


## Setup

NetFoss is bundled with WWIV on Windows and available in the ```NF```
subdirectory under WWIV's install. i.e. C:\wwiv\nf

* Follow the install instructions that come with netfoss in
  C:\wwiv\nf\netfoss.txt
* Make sure to copy netfoss.dll to the Windows system32 directory, 
  otherwise netfoss will not be able to load it as a VDD.
* Edit C:\wwiv\nf\nf.bat to fix the paths from ```C:\netfoss``` to
  the right location (i.e. ```C:\wwiv\nf```)


## Use

To use netfoss use the ```Normal``` exec mode (do not use Emulate DOS FOSSIL)
as nf.bat will do that for you.  Then prepend C:\wwiv\nf\nf.bat in front
of the normal commandline used to run the door.  In the future release this
will be more automated as it is today for sbbsexec.dll.

That's it.
