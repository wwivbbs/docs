#Taglines
***
Taglines are similiar to email signature files, but they applied by the system (not users) on messages. Here's a list of .TAG files supported by WWIV BBS.

Tag Filename | File Location | Description
--- | --- | ---
GENERAL.TAG |  | GENERAL.TAG is the default tag file used for all SUBs when SUBTYPE.TAG is absent.
SUBTYPE.TAG |\wwiv\nets\wwivnet OR \wwiv\data | TAG files can also be customized on a per SUB basis. Hence, SUBTYPE.TAG. You replace SUBTYPE with the subtype for the networked SUB. For instance, for the WWIV Development WWIVNet sub, with the subtype "WWIVDEV" you'd use WWIVDEV.TAG. GENERAL.TAG is the default tag file used when <SUBTYPE>.TAG is absent.
INTERNET.TAG | Define in NET.INI (typically in \wwiv\data or \wwiv\gfiles) | This defines your NEWS tagline for Usenet Newsgroups as SIGNATURE. Plain text only, no Leading ^D.
BBS*.TAG | \wwiv\wwivedit | 

Tag files are expected to be found in either NET_DATA or DATA directories.
