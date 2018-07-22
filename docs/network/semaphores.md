# Semaphore files used by the network

WWIV's network stack uses a handful of semaphore files to block concurrent
access while operations are ongoing. Here's the list of semaphore files
currently used.

*network/out/NN.bsy*

Where NN is the same name as a FLO file, blocks access to manipulating 
the FLO file while it is being rewritten with information.

