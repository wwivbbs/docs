# Customizing Menus

***
## Table of Contents

[TOC]

***

## Parts of a Menu

There are several files that go into making each WWIV menu, separated out by the 
file extension. For example, `main.ans`, `main.msg`, `main.json`, and `main.pro` all 
go into creating the main menu.  The different file extensions work like so:


* ANS - Displayed for users; traditionally using ANSI escape codes
* MSG - Displayed for users; traditionally using heart or pipe codes (or plain ASCII)
* MNU.JSON - Stores the actions for the menu and what keys they correspond to
* PRO - (prompt) Shown at the bottom of the menu and when a user chooses expert mode

If a user has ANSI enabled, and an ANS file exists, it will be shown. If the ANS 
file does not exist, the MSG file will be displayed instead.  These files are 
for visual purposes entirely, and can be laid out however you like.  

WWIV can also generate menus on the fly for you, with your own color theming. 
See *Generated Menus* below for more on this.  

The simplest way to get started with editing the menu *behavior* is using the 
menu editor in `wwivconfig`.  You can also directly edit the JSON file to change 
the behavior of the menus.  
 
## Using WWIVconfig to edit a menu

Before you begin editing menus, *make a backup of your current setup*.  

To get to the menu editing, enter `wwivconfig` and select the menu editor. Then 
select the menu set you wish to edit, and finally, the specific menu *in* that set. 

```
    ┌───────────────────────────────────────────────────────────── Menu: main ┐                                   
    │         Title: WWIV Main Menu                                           │                                   
    │           ACS:                                                          │                                   
    │   Number Keys: Set Sub Number                                           │                                   
    │  Logging Type: Key                                                      │                                   
    │  Display Help: User Choice                                              │                                   
    │ Enter Actions: [Edit] 0 actions.                                        │                                   
    │  Exit Actions: [Edit] 0 actions.                                        │                                   
    │      Password:                                                          │                                   
    │  Clear Screen: No                                                       │                                   
    │ Menu Settings: [Edit]                                                   │                                   
    │   Edit Prompt: [Edit]                                                   │                                   
    │    Menu Items: [Edit]                                                   │                                   
    │     View Menu: [View]                                                   │                                   
    └─────────────────────────────────────────────────────────────────────────┘   
```

There are a lot of things you can alter about the menus at this screen. 

### Toggled Options

There are several entries with toggleable options:

* Number keys: `set sub number`, `set dir number`, and `nothing`  
* Logging type: `command`, `key`, `description`, and `nothing`  
* Display Help: `always`, `on entrance`, `user choice`, and `never`  
* Clear Screen: `no` and `yes`  

* The `ACS` prompt allows you to define who gets to see the menu. For example, 
the sysop menu has `user.sysop == true` as the access control. The expression 
is free text, and whether or not it's valid is shown in the status bar at the 
bottom of the screen.  Similarly, `Password` allows you to password protect a 
menu. The [ACS reference](http://docs.wwivbbs.org/en/latest/cfg/acs/) explains 
this in detail.

### Generated Menus

* `Menu Settings` allows you to configure the generated menu, and `View Menu` allows 
you to preview it.  The generated menu settings are pretty straightforward, and 
are an easy way to put your own "flavor" on WWIV without fussing with ANSI art. 
The menu looks like so (these are the defaults):

```
    ┌── Generated Menu Setting ┐                                                           
    │  Num Columns: 3          │                                                           
    │  Title Color: |#5        │                                                           
    │  Brace Color: |#1        │                                                           
    │    Key Color: |#2        │                                                           
    │   Text Color: |#0        │                                                           
    │   Show Empty: No         │                                                           
    │ Num Newlines: 1          │                                                           
    └──────────────────────────┘   
```

### Editing the Prompt

* `Edit Prompt` allows you to configure the prompt (including pipe codes) within 
the standard message editor. This information is saved in the `.PRO` file. When 
editing, you will see a live preview for all lines *except* the line your cursor 
is on.  More details on [pipe codes](http://docs.wwivbbs.org/en/latest/cfg/displaying_text/#pipe-codes), [pipe colors](http://docs.wwivbbs.org/en/latest/cfg/displaying_text/#pipe-colors), and [pipe code macros](http://docs.wwivbbs.org/en/latest/cfg/displaying_text/#pipe-code-macros) are in the docs.  

If you are editing the prompt file outside of `wwivconfig`, you may have to 
manually enter an escape code before the pipe code **macros** if they do not 
work out of the box.

### Editing Actions

* `Enter Actions` and `Exit Actions` allow you to choose actions to occur when 
someone enters or leaves the menu.  Currently there are none configured in our 
example. Adding an action is similar to the way we are going to add an action below.

* `Menu Items` is where you can define what any key does on that particular menu. 
There are a *lot* of possibilities - here's what a partial list looks like:
```
         ┌────────────────────────────────────────── [Edit Menu Items] ┐                                         
         │ #1 (IE)         'InstanceEdit' [instanceedit]               │                                         
         │ #2 (JE)         '' [conferenceedit]                         │                                         
         │ #3 (BE)         '' [subedit]                                │                                         
         │ #4 (CE)         '' [chainedit]                              │                                         
         │ #5 (CHAT)       '' [toggleavailable]                        │                                         
   ┌─────│ #6 (CU)         '' [changeuser]                             │main ┐                                   
   │     │ #7 (DE)         '' [diredit]                                │     │                                   
   │     │ #8 (TEDIT)      'TextEdit' [textedit]                       │     │                                   
   │   Nu│ #9 (GE)         '' [bulletinedit]                           │     │                                   
   │  Log│ #10 (LOAD)       '' [loadtext]                              │     │                                   
   │  Dis│ #11 (MAILR)      '' [readallmail]                           │     │                                   
   │ Ente│ #12 (RELOAD)     'ReloadMenus' [reloadmenus]                │     │                                   
   │  Exi│ #13 (RESETQSCAN) '' [resetqscan]                            │     │                                   
   │     │ #14 (IVOTES)     'VoteEdit' [voteedit]                      │     │                                   
   │  Cle│ #15 (LOG)        '' [log]                                   │     │                                   
   │ Menu│ #16 (NLOG)       '' [netlog]                                │     │                                   
   │   Ed│ #17 (PENDING)    'Pending NetData' [pending]                │     │                                   
   │    M│ #18 (STATUS)     '' [status]                                │     │                                   
   │     │ #19 (VOTEPRINT)  '' [voteprint]                             │     │                                   
   └─────│ #20 (YLOG)       '' [ylog]                                  │─────┘                                   
         │ #21 (ZLOG)       '' [zlog]                                  │                                         
         │ #22 (UPLOAD)     'Upload Post' [uploadpost]                 │                                         
         │ #23 (QWK)        'QWK Mail' [MENU]                          │                                         
         │ #24 (CLS)        'Clear Screen' [cls]                       │                                         
         └─────────────────────────────────────────────────────────────┘                                         
```         
         
A full list of commands is in the [menu commands](http://docs.wwivbbs.org/en/latest/menus/commands/) 
section of the documentation. 

## Example of Editing Menu Actions 

The process for editing or adding actions is essentially the same for all actions. 
To illustrate the process, here's a step-by-step guide for adding an ANSI file 
before the door menu is displayed.

First, **back up your menu files before editing**.  
                                                                                                          
In this example, we are going into the main menu, and will edit
 `#46 (.)          'Doors' [doors]`. Move the cursor down to that entry and press `Enter`.


```
  ┌───────────────────────────────────────────────────────────────── Menu: . ┐                                   
  │  Menu Key: .                                                             │                                   
  │ Menu Text: Doors                                                         │                                   
  │ Help Text: Chains Menu                                                   │                                   
  │ Sysop Log: .                                                             │                                   
  │  Instance: Doors                                                         │                                   
  │       ACS:                                                               │                                   
  │  Password:                                                               │                                   
  │   Visible: Yes                                                           │                                   
  │   Actions: [Edit] 1 action.                                              │                                   
  └──────────────────────────────────────────────────────────────────────────┘  
```

The configuration options are pretty self-explanatory (and can be left as the 
defaults for our example). Press `Enter` again, and you will see this pop up:


```
  │ Sysop Log: .             ┌──── [Edit Actions] ┐  
  │  Instance: Doors         │ doors:             │  
  │       ACS:               └────────────────────┘                                     
```
    
You can use *D*elete, *I*nsert, and *M*ove here to change the actions.  I've 
had issues moving entries, but that's okay, we can easily rebuild it if we mess 
up. (Also, you have a backup, **right**?) 

When you press `I`, it adds an entry *after* the currently selected 
entry. I did that twice, and it looked like this:


```
  ┌──── [Edit Actions] ┐  
  │ doors:             │  
  │ :                  │  
  │ :                  │    
  └────────────────────┘  
```

I selected the first entry, and pressed `Enter` to modify the entry. Here's what 
a blank entry looks like.


```
    ┌────────────────────────────────────────────────────────────────── Edit Action ┐                                
    │  Cmd: [Edit] ''                                                               │                                
    │ Data:                                                                         │                                
    │  ACS:                                                                         │                                
    └───────────────────────────────────────────────────────────────────────────────┘   
```

When you press `Enter` on the CMD line, you get a dialog box to select what you 
want to have happen first.  

Because I was having issues moving the actions, I decided to just recreate them. 
Our first action is going to be `PrintFile`; it's near the end of the list.


```
   ┌───────────────────────────────────────────────────────────────── Select Command ┐                               
   │ Log                  [System]      Syosp command to view the log file           │                               
   │ Pause                [System]      Pauses the screen, like 'pausescr()' in C co │                               
   │ PrintDevices         [System]      Show the 'devices'.  I have no idea why.     │                               
   │ PrintFile            [System]      <filename>  Prints a file, first checking to │                               
   │ PrintFileNA          [System]      <filename>  Just like PrintFile, but the use │                               
   │ RequestChat          [System]      Request chat from the sysop                  │                               
   │ RunBasic             [System]      <script name>Runs a WWIVbasic Script         │                               
   │ SystemInfo           [System]      View the system info                         │                               
   │ TextEdit             [System]      Edit a text file                             │                               
   │ TimeBank             [System]      Enter the time bank                          │                               
   │ ToggleExpert         [System]      Turn 'X'pert mode on or off (toggle)         │                               
   │ TurnMCIOff           [System]      Disable MCI codes                            │                               
   │ TurnMCIOn            [System]      Enable MCI codes                             │                               
   │ WHO                  [System]      Show who else is online                      │                               
   │ WWIVVer              [System]      Get the wwiv version                         │                               
   │ YLog                 [System]      View yesterdays log                          │                               
   │ YourInfo             [System]      Display the yourinfo screen                  │                               
   │ YourInfoDL           [System]      Prints user info for downloads               │                               
   │ ZLog                 [System]      View the ZLog                                │                               
   │ cls                  [System]      Clear the screen                             │                               
   │ ConfigUserMenuSet    [User]        Takes the user into the user menu config so  │                               
   │ InitVotes            [Vote]                                                     │                               
   │ Vote                 [Vote]        Enter the voting both                        │                               
   │ VotePrint            [Vote]        Show the voting statistics                   │                               
   └─────────────────────────────────────────────────────────────────────────────────┘   
```


Under `Data`, we're going to put the full path to the file. On Linux, that will 
end up looking something like this:


```
    ┌────────────────────────────────────────────────────────────────── Edit Action ┐                                
    │  Cmd: [Edit] 'PrintFile'                                                      │                                
    │ Data: /home/wwiv/wwiv/gfiles/chains.ans                                       │                                
    │  ACS:                                                                         │                                
    └───────────────────────────────────────────────────────────────────────────────┘    
```


and on Windows/DOS it will looks something like this:


```
    ┌────────────────────────────────────────────────────────────────── Edit Action ┐                                
    │  Cmd: [Edit] 'PrintFile'                                                      │                                
    │ Data: C:\wwiv\gfiles\chains.ans                                               │                                
    │  ACS:                                                                         │                                
    └───────────────────────────────────────────────────────────────────────────────┘    
```


As above, you can configure ACS for *each action separately*.  Since we want all 
users to see this, we're leaving that blank. I found out that the doors menu 
clears the screen before displaying, so I added a pause after the file is shown. 
You can add `Pause` in the same way that we added `PrintFile`. No information 
is needed other than what's shown below.


```
    ┌────────────────────────────────────────────────────────────────── Edit Action ┐                                
    │  Cmd: [Edit] 'Pause'                                                          │                                
    │ Data:                                                                         │                                
    │  ACS:                                                                         │                                
    └───────────────────────────────────────────────────────────────────────────────┘  
```


Finally, for the last action, we will re-add `Doors` in the same way. 


```
    ┌────────────────────────────────────────────────────────────────── Edit Action ┐                                
    │  Cmd: [Edit] 'Doors'                                                          │                                
    │ Data:                                                                         │                                
    │  ACS:                                                                         │                                
    └───────────────────────────────────────────────────────────────────────────────┘  
```


Now that we have defined all three, we back out and see that `Actions: [Edit] 1 action.` 
has changed to `Actions: [Edit] 3 actions.`  Back all the way out and quit 
`wwivconfig`.  Now, when a user using *that menuset* goes into the doors menu, 
that file will be displayed (if it exists), pause for the user, then continue on 
to the doors menu.


### JSON Storing of Menu Settings


All this is written to `main.mnu.json`.  The original part of the file looked 
like this:


```
            {
                "item_key": ".",
                "item_text": "Doors",
                "visible": true,
                "help_text": "Chains Menu",
                "log_text": ".",
                "instance_message": "Doors",
                "acs": "",
                "password": "",
                "actions": [
                    {
                        "cmd": "Doors",
                        "data": "",
                        "acs": ""
                    }
                ]
            },
```


and now looks like this with our additional entries:


```
            {
                "item_key": ".",
                "item_text": "Doors",
                "visible": true,
                "help_text": "Chains Menu",
                "log_text": ".",
                "instance_message": "Doors",
                "acs": "",
                "password": "",
                "actions": [
                    {
                        "cmd": "PrintFile",
                        "data": "/home/steven/wwiv/gfiles/menus/wombat3/chains.ans",
                        "acs": ""
                    },
                    {
                        "cmd": "Pause",
                        "data": "",
                        "acs": ""
                    },
                    {
                        "cmd": "Doors",
                        "data": "",
                        "acs": ""
                    }
                ]
            },
```            


It is completely possible to edit the JSON file with the text editor of your 
choice as well instead of using `wwivconfig`, but you then have to be careful to 
maintain the correct format yourself.
