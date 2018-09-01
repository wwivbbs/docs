# Semaphore files used by the network

WWIV's network stack uses a handful of semaphore files to block concurrent
access while operations are ongoing. Here's the list of semaphore files
currently used.

## Network Semaphores

These Semaphore files reside in or in a subdirectory of the WWIV network
directory (i.e. ```C:\bbs\net\wwivnet``` is the default wwivnet network 
directory).  

In these examples, we'll use ```[network]``` to denote the network 
directory.

### All network types

*[network]/[networkn].bsy*

Where ```[networkn]``` is the name of the network command e.g. ```network1```.
It's used to denote that the network command is running and additional
copies should not attempt to execute.

### FTN Networks

*[network]/out/[flo_name].bsy*

Where ```[flo_name]``` is the same name as a FLO file, blocks access to manipulating 
the FLO file while it is being rewritten with information.

