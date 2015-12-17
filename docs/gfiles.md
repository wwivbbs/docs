#GFILES System#
***

The GFILES (General Files) section allows you to place text files online for your users to read.  Good examples of G-Files include the user documentation for the BBS, online games, download protocols, editors, or just about any other text file you may find useful for your users.  The text files are maintained in subdirectories of the GFILES directory.

G-Files are setup by using the GFILEEDIT feature. This feature may be accessed in the following ways:

1. From WFC, enter G and then enter the system password when prompted for it.
2. From the main menu, enter //GFILEEDIT and then enter the system password when prompted for it.
3. From the main menu, enter //GE (short form for GFILEEDIT) and the system password when prompted for it.

**G-File Editor (GE)**  
When the editor is first run, there will be no sections present.  To create a new section, choose Insert.  The editor will bring up a a screen that looks as follows:

```
ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   A. Name       : *NEW SECTION*                  ³
³   B. Filename   : REM                            ³
³   C. SL         : 10                             ³
³   D. Min. Age   : 0                              ³
³   E. Max Files  : 99                             ³
³   F. AR         : None.                          ³
³                                                  ³
³   Which (A-F,Q) ?                                ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
```
**A) Name**  
Enter the name of the G-File section as you want it to appear to your users.

**B) Filename**  
Enter the name of the data file you wish to assign to this section.  The data file will be created in the DATA directory to contain all the information on this section. You will be asked if you wish to create a directory for the section.  It is recommended that you always answer Yes to aid in maintenance of the files unless this is to be a single file rather than a section of like oriented files.  If this is a single file, all you need do is place the text file you want to be available in the GFILES directory and rename it with the GFL extension. Otherwise, a directory with the name you specify will be created as a subdirectory of GFILES.  This is where all of the files you want to make available in this section must be.

**C) SL**  
Minimum SL required to view this section.

**D) Min Age**  
Minimum age required to view this section.

**E) Max Files**  
Maximum number of files allowed in this section.

**F) AR**  
AR required to view this section.