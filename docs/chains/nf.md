# Using NetFoss for FOSSIL Support
***

Using NetFoss will likely provide a more stable experience than the
sbbsexec.dll bundled with WWIV for running doors.  It should have
fewer NTVDM crashes when exiting doors and higher performance as
NetFoss is optimized for speed, and WWIV's handling of sbbsexec
is not.


## Setup

NetFoss is bundled with WWIV on Windows and available in the ```NETFOSS```
subdirectory under WWIV's install. i.e. C:\wwiv\netfoss

**IMPORTANT** Make sure to copy netfoss.dll to the Windows system32 directory, 
otherwise netfoss will not be able to load it as a VDD.
*This has to happen using an administrative command prompt.*

## Use

To use netfoss use the ```NetFoss``` exec mode in ChainEdit or for an external
message editor. You do not need to prepend C:\wwiv\nf\nf.bat in front
of the normal commandline used to run the door. 

That's it.
