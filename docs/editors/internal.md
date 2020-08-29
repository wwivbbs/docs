# Internal Editor
***

WWIV Includes a built-in line oriented message editor as well as an
internal full-screen editor for creating emails and subboard messages.  

## Internal Line Editor

The internal editor supports many commands, all are accessed by typing
the command by itself on a blank line.

### Commands

Command | Description
:---: | ---
**/?** | Display WWIV Editor help
**/S** | Save Message
**/Q** | Quote text from original message.
**/ESY** | Save Message Anonymously
**/ESN** | Save Message NOT Anonymously
**/ABT** | Abort Entire Message (Quit)
**/CLR** | Clear Message and Start Over
**/RL** | Replace Last Line
**/TI** | Edit Message Title
**/LI** | List Message So Far
**/C:** | Center Text After "/C:"
**/SU/Old/New*** | Replace Old Text with New

## Internal Full-Screen Editor

The internal full-screen editor supports many commands, all are accessed
by pressing the escape key, and using the menu choices displayed at the
bottom of the screen.  (?) will provide help text listing all of the
editors commands.

### Navigating text

With modern terminal windows or dialers like SyncTerm, NetRunner, mTelnet
or even legacy DOS based terminals like ProComm Plus, Telix or Terminate
arrow keys should work for navigation within the editor.

In addition to arrow keys, there's a few default keybindings for
editing:

Command   | Description
:-------: | ---
CONTROL-A | Move to beginning of the line
CONTROL-D | Delete current line
CONTROL-E | Move to the end of the line
CONTROL-K | Delete text from cursor to end of line
CONTROL-W | Delete word to left of cursor
CONTROL-X | Delete from cursor to beginning of line
HOME      | Move to the first line of text.
END       | Move to the last line of text
PAGE-UP   | Move to the previous page of text.
PAGE-DOWN | Move to the next page of text


## Color codes 
In both the line and full-screen editors, the current text color can be
changed within the editor by pressing ```CONTROL-P``` + a character 0-9. 
The list of colors available and their values are defined in the
(D)efaults menu for the user.


