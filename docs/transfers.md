#Transfer System
***

The Transfer system allows you to make files available to your users for downloading.  Two default directories are created upon installation, Sysop and Miscellaneous.  The Sysop directory is accessible only to SL255 users by default.   It should be used for storage or uploading of files prior to cataloging.  You may wish to setup many directories or only a few based on your setup.

Transfer directories are setup by using the DIREDIT feature. This feature may be accessed in the following ways:

1. From WFC, enter D and then enter the system password when prompted for it.
2. From the main menu, enter //DIREDIT and then enter the system password when prompted for it.
3. From the main menu, enter //DE (short form for DIREDIT and the system password when prompted for it.


**DIREDIT**  
The first thing that is seen when the
directory editor is accessed is a Substring? prompt.
If you wish to go directly to an existing directory, enter a
portion of the name, otherwise hit enter for a complete
listing.  The listing of the directories will appear like this:
```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³ NN   DAR Name                     FN       DSL AGE FIL PATH  ³
³ ==== --- ======================== -------- === --- === ------³
³ 0     Sysop                    SYSOP    100 0   50  DLOADS\SY³
³ 1     Miscellaneous            MISC     10  0   50  DLOADS\MI³
³                                                              ³
³ Dirs: D:elete, I:nsert, M:odify, S:wapDirs, Q:uit, ? :       ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```

The commands are relatively straight forward and work in a
fashion similar to BOARDEDIT.  Swap directories allows the sysop
to change the order in which  directories are listed.

When a particular directory is selected for modification, the
following is seen:
```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   Directory     : 0                              ³
³   A. Name       : Sysop                          ³
³   B. Filename   : SYSOP                          ³
³   C. Path       : DLOADS\SYSOP\                  ³
³   D. DSL        : 100                            ³
³   E. Min. Age   : 0                              ³
³   F. Max Files  : 50                             ³
³   G. DAR        : None.                          ³
³   H. Require PD : No                             ³
³   I. Dir Type   : 65535                          ³
³   J. Uploads    : Allowed                        ³
³   K. Arch. only : No                             ³
³   L. Drive Type : HARD DRIVE                     ³
³   N. //UPLOADALL: Yes                            ³
³   O. WWIV Reg   : No                             ³
³                                                  ³
³   Which (A-M,[,],Q) ?                            ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```

**A) Name**  
The name would be the name that you want the users to
see.  Sysops generally find it useful to create categories that
will have like type of files grouped together in the directory.

**B) Filename**  
This should be a dos legal (i.e. 8 characters or
less) filename.  The BBS software will append the DIR extension
to it, store it in the DATA directory and use it to keep
information in binary format for the board's use.

**C) Path**  
The path is the path to the directory.  The path may
be specified complete or in relationship to the main BBS
directory.  The example shows one where DLOADS would be a
subdirectory of the BBS.  If you wanted to put the directory on
a different drive, you might have something like D:\DLOADS\MISC.

**D) DSL**  
The DSL is the download security necessary to have
access to the directory.  Anyone with that level of DSL or
higher will have access to the directory unless an upper limit
is placed on the DSL in the Conference editor by the sysop.

**E) Minimum Age**  
This allows you to restrict access to people of a certain age.

**F) Maximum Files**   
This sets the maximum number of files that can be held by this directory.

**G)  DAR**  
This setting allows you to set an Access Requirement
on the directory so that the person must have that DAR in order
to see or access the files in that directory.

**H) Require PD**  
This setting asks the user if the file about to
be uploaded is Public Domain.  If they answer No, it will not
permit them to upload the file.

**I) Directory Type**  
This setting allows you to set a directory
type for this directory.  At the present time, WWIV itself does
not make use of this variable, but some of the utilities written
by third parties do make use of it.  In a future version of
WWIV, this field will allow you to "subscribe" to file areas in
much the same way as subboards.

**J)  Uploads Allowed**  
This setting may be toggled to indicate
that uploads are not permitted.  Many sysops will leave this as
allowed and require that uploads go to the sysop using the INI
setting to force all uploads to the Sysop directory.

**K) Archive Only**  
Setting this will allow you to require a
certain type of file extension and no other type may be
uploaded.

**L)  Drive Type**  
This permits the sysop to toggle between HARD
DRIVE and CD-ROM as permissible types.  If a CD-ROM is used, its
use will be optimized (i.e. the board will work better and
faster) if it is identified as a CD-ROM.

**N) //UPLOADALL**  
This is a toggle which allows or disallows the use of the //UPLOADALL command to function on this file area.

**O)  WWIV Reg**  
This is also a toggle and if set to Yes, will only allow access to this file are to users with a WWIV Registration number defined in the user record.

**ALLOW.DAT and AllowEdit (AE)**  

TODO: Does this apply to WWIV 5.0?

This option applies to registered sysops only and is associate with the OPT_FAST_Search
setup.  A program is available called WWSORT.EXE which should be
run first.  This program creates your original ALLOW.DAT file
which will permit a fast search for duplicate file names.  The
ALLOWEDIT option gives the sysop the ability to add or remove
file names from the binary file.  A sysop might want to add the
name of a non-existent file if he did not care to have that file
uploaded to him.  For example, sysops frequently get a "scam"
uploaded to them called FASTCASH. This "scam" is like a chain
letter for BBSs. Putting FASTCASH as a file name would prevent
someone's uploading a file by that name.  By the same token, if
the sysop needs to remove a filename from the binary list, he
has the option to do so by using the ALLOWEDIT option.
