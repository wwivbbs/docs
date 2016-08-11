# Customize MSGs to Users
***
When you logged in, you saw several places where some placeholder messages were displayed. 
These messages are all specified in files located at \wwiv\gfiles. In this directory, there 
are a number of .MSG and .ANS files which are the messages and menus displayed you users as 
they use your WWIV BBS.

You can customize all of these as you wish. They can be edited with NOTEPAD or another text 
editor. .MSG files are used by default and .ANS files are displayed to users if their client 
supports ANSI. You should definitely have an ANSI version wherever you want to show off some 
art or where you can enhance the look and feel of your board. This is one of the ways you can 
make your WWIV BBS your own. 

## Displaying Text

WWIV supports multiple ways of displaying text to users.  You may use straight ASCII text,
ANSI color codes (which most ANSI-BBS terminal programs support), Traditional WWIV Heart Codes 
or newer style pipe codes. 


### Heart Codes

Heart codes are the traditional "heart" + number codes that map to one of the user-configurable
colors defined in the user preferences in WWIV.  The heart is a control-C (aka ascii value #3)
and has been around along as WWIV has.  It may be used in any place WWIV is displaying text.

### Pipe Codes

Pipe codes are a newer invention on the BBS scene, only around for 20 years or so (maybe longer),
and is supported by the majority of BBS software still in existence.  Pipe code support was
added to WWIV in 5.0 beta-1 around October of 2002.  It is a implemented as a vertical bar '|'
followed by either numbers or letters to implemente either a color change, formatting change
or even user macros.  Pipe codes may be used in any place WWIV is displaying text to the user
in prompts, messages, even ANS, B&W or MSG files.

#### Pipe Colors

Let NN be a 2 digit color code, and 

```|NN ``` is the way to display a pipe code to set the color.

| NN | Foreground Color | BackGround Color
|----|------------------|-----------------|
| 00 | Black | 
| 01 | Blue |
| 02 | Green
| 03 | Cyan
| 04 | Red
| 05 | Magenta
| 06 | Brown
| 07 | Gray
| 08 | Dark Gray
| 09 | Bright Blue
| 10 | Bright Green
| 11 | Bright Cyan
| 12 | Bright Red
| 13 | Bright Magenta
| 14 | Yellow
| 15 | White
| 16 | | Black
| 17 | | Blue
| 18 | | Green
| 19 | | Cyan
| 20 | | Red
| 21 | | Magenta
| 22 | | Brown
| 23 | | Gray

#### Pipe User Macros


## File Extensions For Files

Here are the various file extensions WWIV will look for when displaying a text file to a user.
This is the order in which they are checked, and if one doesn't exist or isn't applicable to 
the user because of a constraint (like color), then the next one in the list will be checked.

| Extension | Description |
|-----------|-------------|
| ans | Used for clients who support ANSI-BBS colors.
| b&w | Used for clients who support ANSI-BBS without color.
| msg | Used fror all clients.  It may contain both heart and pipe codes.  This is the most common type of file extension used in WWIV since colors may be used with both heart or pipe codes.


## File Names
While there are many others, as a new SysOp, the following MSGs are where you should start.

| FileName | Description |
|----------|-------------|
WELCOME.MSG | Displayed to every user before they LOGON or start the new user process.  Used to welcome people and show off the style of your board. Usually this has the name of your BBS, A LOGO, other artworks and something to lure people to sign up.  
LOGON.MSG |  Displayed after every logon. Contains anything you want users to see before they start using the board.  
LOGOFF.MSG | Displayed after every user logs-off.  Used to say Goodbye, thank them for visiting, suggest another BBS they might visit. 
SYSTEM.MSG | ??
NOANSI.MSG | Displayed to users who have clients that do not support ANSI. It should let them users know there are ANSI clients out there they 
FEEDBACK.MSG | Displayed before sending feedback to the sysop.
NEWUSER.MSG | Displayed to new users after they have signed up for the bbs. Use it to thank them for signing up. Point them to anything in particular that is awesome. There is also a new user email, so be brief here.
