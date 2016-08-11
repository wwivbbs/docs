#  Displaying Text
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

## Text

WWIV supports multiple ways of displaying text to users.  You may use straight ASCII text,
ANSI color codes (which most ANSI-BBS terminal programs support), Traditional WWIV Heart Codes,
Extended Editor Heart Codes, or newer style pipe codes. 


### Heart Codes

Heart codes are the traditional "heart" + number codes that map to one of the user-configurable
colors defined in the user preferences in WWIV.  The heart is a control-C (aka ascii value #3)
and has been around along as WWIV has.  It may be used in any place WWIV is displaying text.


### Customizing User Heart Codes
By using the //COLORS menu option, users can customize how color codes are displayed to them and only
them. For example, by default |#5 is GREEN on BLACK. A User can change to MAGENTA on WHITE and anywhere |#5 or CTRL-P+5 have been used .MSG files or SUB messages it will display the users chosen color instead. Here is a screen shot of //COLORS. The character in the cell is the one you press to customize that color.

![ColorEditor](/screenshots/wwivbbs/ColorEditor.png)

### Extended Editor Heart Codes
These are the color codes you can use when posting messages, sending feedback and email on WWIV BBS. To use
a particular color type CTRL-P + the letter or number that represents the color you want. You can then use 
CTRL-P+0 to return to the default color.

![WWIVBBSColors](/screenshots/wwivbbs/COLORS.png)


### Pipe Codes

Pipe codes are a newer invention on the BBS scene, only around for 20 years or so (maybe longer),
and is supported by the majority of BBS software still in existence.  Pipe code support was
added to WWIV in 5.0 beta-1 around October of 2002.  It is a implemented as a vertical bar '|'
followed by either numbers or letters to implemente either a color change, formatting change
or even user macros.  Pipe codes may be used in any place WWIV is displaying text to the user
in prompts, messages, even ANS, B&W or MSG files.

These are the default 0-9 Pipe colors used in the menu system and other UI pages. You uses them by specifying
```|#5``` when you want to start GREEN and then ```|#0``` to switch back to GRAY. Look in some of the .MSG files
in \wwiv\gfiles for more samples.

![defPipeColors](/screenshots/wwivbbs/defaultPipeColors.png)


#### Pipe Colors

Two-digit pipe colors are a more widely-accepted "normal" way to define colors.  If you use
them in your messages, they are the most likely to be displayed properly on other systems
that might see them (gated subs, etc).

Let NN be a 2 digit color code, and 

```|NN ``` is the way to display a pipe code to set the color.

You can stack the foreground and background colors, too.  If you want to have
White on Red, for example, you can use ```|15|20```

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


**Note:** WWIV 5.0 supports background color setting as ```|B##```, but since no other
  BBS does too, use of this code is deprecated in 5.1 and will be removed in WWIV 5.2.


#### Pipe User Macros

**TODO **  This needs to be done.

## Files

Creating new display files is the easiest way to customize your BBS and make it your own. 
WWIV supports displaying files at many places throughout the BBS.

### File Extensions For Files

Here are the various file extensions WWIV will look for when displaying a text file to a user.
This is the order in which they are checked, and if one doesn't exist or isn't applicable to 
the user because of a constraint (like color), then the next one in the list will be checked.

| Extension | Description |
|-----------|-------------|
| ans | Used for clients who support ANSI-BBS colors.
| b&w | Used for clients who support ANSI-BBS without color.
| msg | Used fror all clients.  It may contain both heart and pipe codes.  This is the most common type of file extension used in WWIV since colors may be used with both heart or pipe codes.


### File Names
While there are many others, as a new SysOp, the following MSGs are where you should start.

| FileName | Description |
|----------|-------------|
welcome.msg | Displayed to every user before they LOGON or start the new user process.  Used to welcome people and show off the style of your board. Usually this has the name of your BBS, A LOGO, other artworks and something to lure people to sign up.  
logon.msg |  Displayed after every logon. Contains anything you want users to see before they start using the board.  
logiff.msg | Displayed after every user logs-off.  Used to say Goodbye, thank them for visiting, suggest another BBS they might visit. 
system.msg | Contains system information to display to your callers.  Displayed after login.msg and after newuser.msg
noansi.msg | Displayed to users who have clients that do not support ANSI. It should let them users know there are ANSI clients out there they 
feedback.msg | Displayed before sending feedback to the sysop.
newuser.msg | Displayed to new users after they have signed up for the bbs. Use it to thank them for signing up. Point them to anything in particular that is awesome. There is also a new user email, so be brief here.
chat.msg | Displayed in the chat room
editor.msg | Internal editor help screen
email.msg | user email menu
smain.msg | sysop menu
sonline.msg | sysop online command menu
smain.msg | sysop main menu (//sysop)
suedit.msg | sysop menu in user editor
swfc.msg | sysop menu in WFC


## Art Tools
[ASCII Art Studio](http://www.torchsoft.com/en/aas_information.html) is a great tool for making the B&W versions of your .TAG lines, Welcomes, Logons, etc. Then you can add the color codes in notepad.  
[Pablo Draw](http://picoe.ca/products/pablodraw/) is a great tool for doing full color ANSI artwork, used by many of the top artists.  

## Known Issues
* Microsoft stopped including [ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS) in Windows VISTA.  
  Because there's no ANSI support on some OSes you won't see well rendered ANSI on the local system. 
  You'll see all those square brackets and extended ASCII characters.
* Windows 10 includes support for ANSI color codes in cmd.exe again, so you can ```type welcome.ans``` and see the color
  in welcome.ans.

#### Notes
Just some notes to use when working on this page

* Tracking this work in [Issue #160](https://github.com/wwivbbs/wwiv/issues/160)
