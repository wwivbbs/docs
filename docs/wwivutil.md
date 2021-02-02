
# WWIVutil Help

    WWIVutil is WWIV's Swiss Army Knife utilty program.  It handles many different
    types of commands for WWIV.  It's also replaces the 4.x FIX command.

    Here's documentation for the various commands.
## wwivutil acs

Evaluates an ACS expression for a user.


| Arg     | Description |
| ------- | ----------- |
|    --debug   | [boolean] Display expression evaluation at end of execution.
| -? --help   | [boolean] Displays Help
|    --user   | user number to use while evaluating the expression

<br/>




## wwivutil conf

WWIV conference system commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil conf convert

Converts 4.3x conferences to 5.6 format


| Arg     | Description |
| ------- | ----------- |
|    --conf_type   | The conference type ('subs' or 'dirs')
| -? --help   | [boolean] Displays Help
|    --menu_set   | The menuset to use

<br/>



## wwivutil conf dump

Displays the info about a conference


| Arg     | Description |
| ------- | ----------- |
|    --conf_type   | The conference type ('subs' or 'dirs')
|    --full   | [boolean] Display full info about every command.
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil config

WWIV config commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil config convert

converts the config to either JSON or DAT format


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --revision   | Configuration revision number
|    --wwiv_version   | WWIV Version that created this config.dat

<br/>



## wwivutil config version

Sets or Gets the config version


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --revision   | Configuration revision number
|    --wwiv_version   | WWIV Version that created this config.dat

<br/>





## wwivutil email

WWIV email commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil email add

Creates/Adds a new email.


| Arg     | Description |
| ------- | ----------- |
|    --date   | message sub name to post on
|    --from   | user number this email is from
| -? --help   | [boolean] Displays Help
|    --title   | email title
|    --to   | user number to send the email to

<br/>



## wwivutil email delete

Deletes email number specified by '--num'.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --num   | Message Number to delete.

<br/>



## wwivutil email dump

Displays message header and text information.


| Arg     | Description |
| ------- | ----------- |
|    --all   | [boolean] dumps everything, control lines too
|    --end   | Last message number.
| -? --help   | [boolean] Displays Help
|    --start   | Starting message number.

<br/>





## wwivutil fido

WWIV fido commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil fido dump

Dumps contents of a fido packet


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil fido nodelist

Dumps contents of a fido nodelist


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil fido subscribers

Dumps contents of a fido subscriber list


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil files

WWIV file commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil files allow

Manipulate allow.dat


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil files allow add

Add to the contents of allow.dat


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files allow allowed

Is the file allowed (i.e. not in the list)


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files allow delete

Delete from the contents of allow.dat


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files allow list

Lists the contents of allow.dat


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>




## wwivutil files arc

Manipulate archives


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil files arc cmd

Gets the commands to use for an archive.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files arc view

Views the contents of an archive.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>




## wwivutil files areas

Lists the file areas


| Arg     | Description |
| ------- | ----------- |
|    --full   | [boolean] Display full info about every area.
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files delete

Deleate a file in an area


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --num   | File Number to delete.

<br/>



## wwivutil files list

Lists the files in an area


| Arg     | Description |
| ------- | ----------- |
|    --ext   | [boolean] Display extended descriptions.
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil files tic

Manipulate TIC files


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil files tic validate

Validates the contents of a TIC file.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>






## wwivutil fix

WWIV fix commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil fix dirs

Fix File Directories.


| Arg     | Description |
| ------- | ----------- |
| -X --dry_run   | [boolean] Enable dry run mode (report errors, do not fix).
| -? --help   | [boolean] Displays Help
| -V --verbose   | [boolean] Enable verbose output.

<br/>



## wwivutil fix users

Fix users.


| Arg     | Description |
| ------- | ----------- |
| -X --exp   | [boolean] Enable experimental features.
| -? --help   | [boolean] Displays Help
| -V --verbose   | [boolean] Enable verbose output.

<br/>





## wwivutil help

Displays help on wwivutil and commands.


| Arg     | Description |
| ------- | ----------- |
|    --format   | The format of the help to use (text | markdown)
|    --full   | [boolean] Display long format for help.
| -? --help   | [boolean] Displays Help

<br/>




## wwivutil instance

WWIV status commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil instance dump

Displays WWIV instance information.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil messages

WWIV message commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil messages delete

Deletes message number specified by '--num'.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --num   | Message Number to delete.

<br/>



## wwivutil messages dump

Displays message header and text information.


| Arg     | Description |
| ------- | ----------- |
|    --all   | [boolean] dumps everything, control lines too
|    --end   | Last message number.
|    --end_date   | Date for ending message in format yyyy-mm-dd[ h:m:s].
| -? --help   | [boolean] Displays Help
|    --start   | Starting message number.
|    --start_date   | Date for starting message in format yyyy-mm-dd[ h:m:s].

<br/>



## wwivutil messages pack

Packs a WWIV type-2 message area.


| Arg     | Description |
| ------- | ----------- |
|    --backup   | [boolean] make a backup of the subs
|    --delete_overflow   | Strategy for deleting excess messages when adding new ones. (none|one|all)
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil messages post

Posts a new message.


| Arg     | Description |
| ------- | ----------- |
|    --date   | message sub name to post on
|    --delete_overflow   | Strategy for deleting excess messages when adding new ones. (none|one|all)
|    --from   | message sub name to post on
|    --from_usernum   | message sub name to post on
| -? --help   | [boolean] Displays Help
|    --in_reply_to   | message sub name to post on
|    --title   | message sub name to post on
|    --to   | message sub name to post on

<br/>





## wwivutil menus

WWIV menu commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil menus convert

Converts a 4.3x menu to 5.6 format


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --menu_set   | The menuset to use

<br/>



## wwivutil menus dump

Displays the info of a menu


| Arg     | Description |
| ------- | ----------- |
|    --full   | [boolean] Display full info about every command.
| -? --help   | [boolean] Displays Help
|    --menu_set   | The menuset to use

<br/>





## wwivutil net

WWIV network commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil net callout

Dumps parsed representation of callout.net


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil net connect

Dumps parsed representation of connect.net


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil net contact

Dumps parsed representation of contact.net


| Arg     | Description |
| ------- | ----------- |
|    --backup   | [boolean] make a backup of the contact.net files
| -? --help   | [boolean] Displays Help
|    --save   | [boolean] Save/cleanup contact.net in all subs

<br/>



## wwivutil net dump

Dumps contents of a network packet


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil net dump_bbsdata

Dumps parsed representation of BBSDATA.*


| Arg     | Description |
| ------- | ----------- |
| -L --bbslist   | [boolean] Parse bbslist.net vs. bbsdata.net
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil net list

List WWIV Networks


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil net req

Add/Drop WWIVnet Sub


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --net   | Network number to use (i.e. 0).

<br/>



## wwivutil net send

<sub type> <node> <.net> [num msgs]


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help
|    --net   | Network number to use (i.e. 0).

<br/>



## wwivutil net subscribers

Dumps contents of a WWIVnet subscriber list


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil print

prints a textfile


| Arg     | Description |
| ------- | ----------- |
|    --ansi   | [boolean] Display the file as an ANSI file.
|    --bps   | What BPS to emulate
| -? --help   | [boolean] Displays Help
|    --io   | What type of IO to use, win32 | curses

<br/>




## wwivutil status

WWIV status commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil status dump

Displays status.dat.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil status qscan

Sets or Gets the qscan high water mark.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil subs

WWIV subboard commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil subs areas

Lists the message areas


| Arg     | Description |
| ------- | ----------- |
|    --full   | [boolean] Display full info about every area.
| -? --help   | [boolean] Displays Help

<br/>



## wwivutil subs import

Import wwiv subboards.


| Arg     | Description |
| ------- | ----------- |
| -D --defaults   | Specify an ini file with defaults to use when creating new subs.
| -F --format   | must be 'backbone'
| -? --help   | [boolean] Displays Help

<br/>





## wwivutil users

WWIV user commands.


| Arg     | Description |
| ------- | ----------- |
| -? --help   | [boolean] Displays Help

<br/>


## wwivutil users asv

Execute automatic sysop validation on a user.


| Arg     | Description |
| ------- | ----------- |
|    --asv   | user number to use while evaluating the expression
| -? --help   | [boolean] Displays Help
|    --user   | user number to use while evaluating the expression

<br/>





