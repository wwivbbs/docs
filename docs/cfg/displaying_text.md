#  Displaying Text
***
## Table of Contents

[TOC]

***
When you logged in, you saw several places where some placeholder messages
were displayed. These messages are all specified in files located at 
```\wwiv\gfiles```. In this directory, there are a number of .MSG and .ANS
files which are the messages and menus displayed to calers as they use your
WWIV BBS.

You can customize all of these as you wish. They can be edited with NOTEPAD 
or another text editor. .MSG files are used by default and .ANS files are 
displayed to callers if their client supports ANSI. You should definitely have
an ANSI version wherever you want to show off some art or where you can
enhance the look and feel of your board. This is one of the ways you can
make your WWIV BBS your own. 

## Text

WWIV supports multiple ways of displaying text to callers.  You may use 
straight ASCII text, ANSI color codes (which most ANSI-BBS terminal programs
support), Traditional WWIV Heart Codes, Extended Editor Heart Codes, or
newer style pipe codes. 


### Heart Codes

Heart codes are the traditional "heart" + number codes that map to one of 
the user-configurable colors defined in the user preferences in WWIV. The
heart is a control-C (aka ascii value #3) and has been around along as WWIV
has. It may be used in any place WWIV is displaying text.


### Customizing User Heart Codes
By using the //COLORS menu option, users can customize how color codes are
displayed to them and only them. For example, by default |#5 is GREEN on
BLACK. A User can change to MAGENTA on WHITE and anywhere |#5 or CTRL-P+5
have been used .MSG files or SUB messages it will display the users chosen
color instead. Here is a screen shot of //COLORS. The character in the cell
is the one you press to customize that color.

![ColorEditor](../screenshots/wwivbbs/ColorEditor.png)

### Extended Editor Heart Codes
These are the color codes you can use when posting messages, sending feedback
and email on WWIV BBS. To use
a particular color type CTRL-P + the letter or number that represents the color you want. You can then use 
CTRL-P+0 to return to the default color.

![WWIVBBSColors](../screenshots/wwivbbs/COLORS.png)


### Pipe Codes

Pipe codes are a newer invention on the BBS scene, only around for 20 years
or so (maybe longer), and is supported by the majority of BBS software still
in existence.  Pipe code support was added to WWIV in 5.0 beta-1 around
October 2002.  It is a implemented as a vertical bar '|' followed by
numbers,letters, or some other characters such as '[' and '{' to implement 
color changes, perform cursor movement perform display manipulation, include
session, user or system information into the output. Pipe codes may be used in
any place WWIV is displaying text to the user in prompts, messages, even 
in .ANS, .B&W and .MSG files.


#### Pipe Color Codes

Two-digit pipe colors are a more widely-accepted "normal" way to define
colors.  If you use them in your messages, they are the most likely to be
displayed properly on other systems that might see them (gated subs, etc).

These are the default 0-9 Pipe colors used in the menu system and other UI 
pages. You uses them by specifying ```|#5``` when you want to start GREEN
and then ```|#0``` to switch back to GRAY. Look in some of the .MSG files
in \wwiv\gfiles for more samples.

![defPipeColors](../screenshots/wwivbbs/defaultPipeColors.png)

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


#### Pipe Display Macros


WWIV pipe macros are the canonical way to embed system, session and user
information into display text.

Let X be a single digit character, and @ be a literal '@' character

```|@X ``` is the way to display a pipe code macro to display session 
information.

| Code | Information to display |
|------|------------------------|
@~ | Total e-mails and feedbacks sent.
@/ | Today's Date
@% | Time remaining
@# | User number
@$ | File points
@* | WWIV registration num
@- | A$$ points
@! | Display a pause.
@& | status of ANSI or ASCII
@ | Current directory name
@: | Current Message area #
@; | Current File area #
@A | User's age
@a | User' language
@B | User's Birthday
@b | Minutes available in the TimeBank
@C | User's city           
@c | User's country
@D | Number of files downloaded    
@d | User's DSL         
@E | # of E-mails sent
@e | # of network E-mails sent    
@F | # of Feedbacks sent      
@f | Date of first call
@G | # of Messages read       
@g | # of gold                
@I | User's callsIgn
@i | # of Illegal log-ons     
@J | Current message conference name   
@j | Current File conference name
@K | Kb uploaded
@k | Kb downloaded
@L | Date of last call
@l | Total number of logons    
@M | # of e-mail waiting        
@m | # of messages posted
@N | User's name         
@n | Sysop's note        
@O | Times on today
@o | Minutes on          
@P | BBS phone number          
@p | User's phone number
@R | User's real name    
@r | Last baud rate connected      
@S | User's SL
@s | User's street addr. 
@T | User's state        
@t | Current time
@U | # of files uploaded      
@V | # messages in sub   
@X | User's gender
@Y | This BBS Name       
@y | User Computer type  
@Z | User's zip code

#### Pipe Screen and Cursor Control


WWIV pipe screen and cursor codes allow simple display manipulation to be
embedded in text without needing to implement ANSI codes, nor checking for
ANSI support from the user.


```|[nnX ``` is the way to display a pipe code macro to display session 
information.  

In all cases nn is optional and defaults to 1


| Code  | Information to display |
|-------|------------------------|
[nnA    | Moves the cursor up nn lines
[nnB    | Moves the cursor down nn lines
[nnC    | Moves the cursor right nn lines
[nnD    | Moves the cursor left nn lines
[xx;yyH | Goto screen position xx, yy. Upper left hand corner is 1;1
[J      | Clears the screen
[K      | Clears the line from cursor position to end of line
[1K     | Clears the line from beginning of line to cursor position
[2K     | Clears the entire line, leaves the cursor position the same
[nnN    | Performs nn newlines (same as bout.nl(nn) in code)


#### Pipe Expression Language


WWIV pipe expression language allows more functions to be executed in the context
of displaying text.  All text that is not part of a string literal (i.e.
enclosed in double quotes) must be lower case.

These are of the format ```|{xxxxx}``` whre xxxxx is the expression text.

| Expression  | Action |
|-------------|------------------------|
set           | sets the next variable to the value that follows.  Example: set pause off
pausescr      | displays the system pause.
if            | 'if "expr", "true value", "false value"'.  If expression is true, display true value, otherwise false value
random        | 'random "1", "2", ...' picks a random string from the list of choices to display
mpl           | display a textbox with a colorized background using color #4, like mpl() funtion in WWIV.
sleep         | pauses the display for the # of millisecond specified. Example sleep 100
spin          | spins the text of the next variable using the color that is the 2nd parameter. Example: spin "Hello", 1
backprint     | args: text, color, per-char delay, delay at end of string. Example backprint "Invalid username", 1, 30, 500
rainbow       | arg text; Displays text using a rainbow effect.

Set can manipulate the values of several system variables.  The values can be
strings that must be enclosed on double quotes, numbers, or truthy values.  

Truthy values are for true are: 'true', 'yes', 'on'.  Every other value is false.

| Variable    | Meaning |
|-------------|------------------------|
pause         | sets the pause on page on or off
lines         | sets the number of lines displayed, this is used for pause calculation.  Currently only 0 is supported for a value.


Examples:
```
  |{set pause=off}
  |{set lines=0}
  Hello |@N! How are you today?
  |{pausescr}
```


## Files

Creating new display files is the easiest way to customize your BBS and make
it your own. WWIV supports displaying files at many places throughout the BBS.

### File Extensions For Files

Here are the various file extensions WWIV will look for when displaying a text
file to a caller. This is the order in which they are checked, and if one
doesn't exist or isn't applicable to the caller because of a constraint
(like color), then the next one in the list will be checked.

| Extension | Description |
|-----------|-------------|
| ans | Used for clients who support ANSI-BBS colors.
| b&w | Used for clients who support ANSI-BBS without color.
| msg | Used fror all clients.  It may contain both heart and pipe codes.  This is the most common type of file extension used in WWIV since colors may be used with both heart or pipe codes.


### File Names

While there are many others, as a new SysOp, the following MSGs are where
you should start.  These are the fils that may be displayed to callers.

| FileName   | Description |
|------------|-------------|
ar#.msg      | Displayed at logon for users with AR matching #
chain.msg    | Displayed before listing chains (doors) in the chains menus.
chat.msg     | Displayed in the chat room
dar#.msg     | Displayed at logon for users with DAR matching #
dsl###.msg   | Displayed at logon for users with DSL matching ###
defaults.msg | Displayed before the user preferences (aka defaults) item is displayed
upload.msg   | Displayed when a caller attempts to download a file.
editor.msg   | Internal editor help screen
email.msg    | Displayed as help for the email menu
feedback.msg | Displayed before sending feedback to the sysop.
fs_msgread.msg | Displayed for the header at the top of the full screen message scan page.
fs_msgscan.msg | Displayed for the header at the top of the full screen message scan page
logoff.msg   | Displayed after every caller logs-off.  Used to say Goodbye, thank them for visiting, suggest another BBS they might visit. 
logon.msg    | Displayed after every logon. Contains anything you want callers to see before they start using the board.  
mbmain.msg   | Displayed when ? is pressed while scanning messages or listing titles.
newuser.msg  | Displayed to new callers after they have signed up for the bbs. Use it to thank them for signing up. Point them to anything in particular that is awesome. There is also a new user email, so be brief here.
noansi.msg   | Displayed to users who have clients that do not support ANSI. It should let them users know there are ANSI clients out there they 
sl###.msg    | Displayed at logon for users with SL matching ###
system.msg   | Contains system information to display to your callers.  Displayed after login.msg and after newuser.msg
upload.msg   | Displayed when a caller attempts to upload a file.
welcome.msg  | Displayed to every caller before they LOGON or start the new user process.  Used to welcome people and show off the style of your board. Usually this has the name of your BBS, A LOGO, other artworks and something to lure people to sign up.  
yourinfo.msg | Displayed to implement the YourInfo command (Y) by default from the main menu

<br/>

These are the files that may be displayed to the sysop for help. The same file extensions 
are valid for these files.

| FileName    | Description |
|-------------|-------------|
sbmain.msg    | Co-Sysop and Sysop version of the message scan help.
smain.msg     | sysop main menu (//sysop)
sonline.msg   | sysop online command menu
srestrict.msg | Displays help for what each of the user restrictions restrict or allow.
swfc.msg      | sysop menu in WFC

<br/>

## Special context aware pipe variables

** Global context variables**

The following are available in all places where pipe variables may be used in expressions.

Some files can have special context aware pipe variables used in expressions.

| Variable         | Type    | Meaning |
|------------------|---------|-----------------|
bbs.name           | string  | Name of the BBS
bbs.sysopname      | string  | Name of the  SysOp
bbs.phone          | string  | Phone Number of the BBS
bbs.node           | string  | Node number for this BBS instance
bbs.os             | string  | Operating System Name this node BBS is running on
bbs.version        | string  | WWIV Version #
bbs.reg            | string  | WWIV 4.x Registration Number
bbs.compiletime    | string  | Date and time the BBS binary was compiled
user.name          | string  | User's name or handle
user.sl            | number  | User's SL
user.dsl           | number  | User's DSL
user.age           | number  | User's Age
user.regnum        | number  | User's WWIV registration number
user.sysop         | boolean | Is the user a sysop
user.cosysop       | boolean | Is the user a co-sysop
user.guest         | boolean | Is the user logged on as a guest
user.validated     | boolean | Is the user validated
user.screenlines   | boolean | User's screen lines
user.screenwidth   | boolean | User's screen width
user.ansi          | boolean | Does the user have ansi enabled
user.ansistr       | string  | describes user's ansi and color state
user.color         | boolean | Is color enabled
user.pause         | boolean | Is pause enabled
user.mailbox_state | string  | Describes the mailbox state (i.e. forwarded to user ...)
user.extcolors        | boolean | Are extra colors enabled
user.optional_lines   | number  | Number of optional message lines
user.conferencing     | boolean | Is conferencing enabled
user.fs_reader        | boolean | Is the full screen message reader enabled
user.email            | string  | User's internet email address
user.ignore_msgs      | boolean | Ignore inter-instance messages
user.clear_screen     | boolean | Clear screen before messages
user.auto_quote       | boolean | Use WWIV auto-quote vs. standard quoting
user.protocol         | number  | default protocol number
user.callsign         | string  | User's HAM callsign (if provided)
user.street           | string  | User's street address (if provided)
user.city             | string  | User's city (if provided)
user.state            | string  | User's state (if provided)
user.zip_code         | string  | User's zipcode (if provided)
user.last_ipaddress   | string  | Last IP addressed used
user.last_bps         | number  | Last BPS rate (if over serial)
user.laston           | string  | Date (MMDDYY) last on BBS
user.voice_phone      | string  | User's voice phone (if provided)
user.data_phone       | string  | User's data phone (if provided)
user.gender           | char    | User's gender (as character, M/F) (if provided)
user.menuset          | string  | curent menuset
user.birthday_mmddyy  | string  | User's birthday (MMDDYY)  (if provided)
user.email_waiting    | number  | Number of email waiting
user.messages_posted  | number  | number of messages posted
user.posts_today      | number  | number of messages posted today
user.posts_net        | number  | number of messages posted on a network
user.messages_read    | number  | number of messages read
user.email_today      | number  | number of email sent today
user.email_sent_local | number  | number of email sent locally today
user.feedback_sent    | number  | number of feedback to sysop send
user.email_sent_net   | number  | number of email sent to the network
user.chains_run       | number  | number of chains execute
user.uploaded         | number  | number of files uploaded
user.uk               | number  | KB of files uploaded
user.downloaded       | number  | number of files downloaded
user.dk               | number  | KB of files downloaded
user.editorname       | string  | Fullscreen editor name


<p/>

### fs_msgscan.msg

| Variable         | Type   | Meaning |
|------------------|--------|-----------------|
cursub.subnum      | number | current sub #
cursub.name        | string |current sub name
cursub.desc        | string |current sub description
cursub.filename    | string |current sub filename
cursub.num_msgs    | number |current sub's number number of messages
cursub.maxmsgs     | number |current sub max number of messages allowed

<p/>

**Return variables**

| Variable         | Type   |  Meaning |
|------------------|--------|---------------|
| num_header_lines | number | how many lines does the header use.  Default 2

<p/>

### fs_msgread.msg

| Variable            | Type    | Meaning |
|---------------------|---------|--------------|
msg.message_area      | string  | current message area #
msg.message_number    | string  | current message number
msg.total_messages    | string  | curent sub's max number of messages allowed
msg.from              | string  | Message author
msg.to                | string  | message receipient
msg.date              | string  | Message date sent
msg.title             | string  | Message title
msg.sys               | string  | Sending system #
msg.loc               | string  | Sending system's location
msg.flags.local       | string  | Is this message local
msg.flags.forced      | boolean | Is this message forced to be read
msg.flags.not_net_val | boolean | Is this message not yet network validated
msg.flags.not_val     | boolean | Is this message not yet validated
msg.flags.permanent   | boolean | Is this message permanent (i.e. wont be auto deleted)
msg.flags.ftn         | boolean | Is this message part of a FTN network
msg.flags.wwivnet     | boolean | Is this message part of a WWIVnet type network
msg.flags.private     | boolean | Is this message private
net.name              | string  | Network display name
net.node              | string  | WWIVnet node number or FTN address


<p/>

**Return variables**

| Variable         | Type   |  Meaning |
|------------------|--------|----------------|
num_header_lines   | number | how many lines does the header use.  Default 5

<br/>


## Art Tools
[ASCII Art Studio](http://www.torchsoft.com/en/aas_information.html) is a great
tool for making the B&W versions of your .TAG lines, Welcomes, Logons, etc.
Then you can add the color codes in notepad.  
[Pablo Draw](http://picoe.ca/products/pablodraw/) is a great tool for doing full
color ANSI artwork, used by many of the top artists.  

## Old MenuPacks

Old menupacks for WWIV - such as [these](http://www.oocities.org/siliconvalley/pines/2722/#menus) are a 
great place to draw inspiration. *Please note*: The file structure and names of these 
menu sets is different than the current menu system!  


## Known Issues
* Microsoft stopped including [ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS)
  in Windows VISTA.  
  Because there's no ANSI support on some OSes you won't see well rendered ANSI
  on the local system. 
  You'll see all those square brackets and extended ASCII characters.
* Windows 10 includes support for ANSI color codes in cmd.exe again, so you 
  can ```type welcome.ans``` and see the color in welcome.ans.
