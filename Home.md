
Welcome to the WWIV BBS Software wiki,


WWIV BBS SOFTWARE has a long [History](history), this project is to give WWIV a strong future.
Were working hard to bring you the best bbs software we can. This wiki is to support
the users of WWIV from install to customization. Below is an index of topics 


Thanks 
The WWIV Dev Team 

Download WWIV 5.0 Binaries
    WWIV 5.0 binaries for x86 Windows and Linux can be downloaded from
    the [WWIV build server](http://build.wwiv.us/job/wwiv/)
    [Building WWIV 5.0](buildwwiv5)
New Installations
The following steps will get you up and running quickly, but I would not say
you're ready to go live and open up to users. After you complete these installation 
steps, see the full details on related INIT settings, WWIV.INI and other Advanced 
configuration topics.

    [Windows](windowsinstall)
    PreRequisits
        32bit x86 Windows
        WWIV BBS will start and run on Windows 10 x64 (I did it), but none 
        of the supporting programs and utilities you use with WWIV
        will work on anything but 32bit x86 systems. We do not have code for 
        all these other programs (yet?). Maybe down the road. So, for now 
        use a 32bit x86 version of Windows.
        
        Microsoft Visual Studio C++ Runtime
        WWIV 5 is compiled with MSVC 2015. Install the 
        [Visual C++ Redistributable for Visual Studio 2015]
        (https://www.microsoft.com/en-us/download/details.aspx?id=48145)
        
    Installation Steps
        How to install WWIV 5.0 on Windows
        Take the build of WWIV you downloaded and extract all the  files 
        into c:\wwiv (or c:\bbs). To make it easy on the author(s) we'll 
        just say c:\wwiv from now on.
       
        
        From a command prompt run INIT.EXE
        You will see this:
        WWIV v5.00 (Build 479) Initialization/Configuration Program.
        Copyright (c) 1998-2014, WWIV Software Services
        CONFIG.DAT NOT FOUND.
        Perform initial installation?
        Type Y & init will install all the files need & create all the directories
        You will then be prompted for the SysOp password. The default password is SYSOP.
        You will then see the main INIT screen.
        ┌────────────────────────────────── Main Menu ┐
        │ G. General System Configuration             │
        │ P. System Paths                             │
        │ T. External Transfer Protocol Configuration │
        │ E. External Editor Configuration            │
        │ S. Security Level Configuration             │
        │ V. Auto-Validation Level Configuration      │
        │ A. Archiver Configuration                   │
        │ I. Instance Configuration                   │
        │ L. Language Configuration                   │
        │ N. Network Configuration                    │
        │ R. Registration Information                 │
        │ U. User Editor                              │
        │ X. Update Sub/Directory Maximums            │
        │ Q. Quit                                     │
        └─────────────────────────────────────────────┘
        
        You can navigate this menu with the arrow keys and hit Enter,
        or type the letter of the menu option to go to the next screen.

        Select G. General System Configuration
        
        ┌─────────────────────────────────── System Configuration ┐
        │ System PW        : SYSOP                                │
        │ System name      : My WWIV BBS                          │
        │ System phone     :    -   -                             │
        │ Closed system    : No                                   │
        │ Newuser PW       :                                      │
        │ Newuser restrict :   M                                  │
        │ Newuser SL       : 10                                   │
        │ Newuser DSL      : 0                                    │
        │ Newuser gold     : 0                                    │
        │ Sysop name       : The New Sysop                        │
        │ Sysop time: from : 00:00     00:00                      │
        │ Net time  : from : 00:00 to: 00:00                      │
        │ Ratios    :  U/D : 0.000  Post/Call: 0.000              │
        │ Max waiting      : 50                                   │
        │ Max users        : 500                                  │
        │ Caller number    : 0                                    │
        │ Days active      : 0                                    │
        └─────────────────────────────────────────────────────────┘
        
        You navigate forms with the arrow keys and ENTER key.
        Hit ESC to Exit the forms and save your changes.
        NOTE: All the changes you make are saved when you exit. 
        But, you can always change it back later.
        
        Quick Setup Changes:
            System Password
            System Name
            Sysop Name
            Newuser Restrict
        
        Type ESC to exit back to the main menu
        On the Main Menu hit ESC or Q to exit INIT
        
        From the command prompt at c:\wwiv
        Run WWIV5TelnetServer.exe
        The WWIV5 Telnet Server application will start.
        Under the Server Menu select Preferences.
        Change WWIV Executable to: c:\wwiv\bbs.ex
        Change Home Directory to c:\wwiv
        
        Click OK to close the Preferences dialog.
        
        Create the SYSOP account
        
        Under the Server menu, select Run Local Node
        NOTE: This starts a local copy of the WWIV BBS without opening up 
        connections for outside users.
        
       This is the Waiting For Caller (WFC) Screen.
       
       Hit the SPACE bar and answer Yes to logon to your WWIV BBS.
       At the logon prompt enter NEW to create a new account.
       Fill out out all the information. Yes some of it seems odd,
       you can modify these questions later.
       
       When you are prompted to accept or change your password, stop.
       
       We are now going to use the WFC commands to edit this user and
       grant it SysOp user levels.
       
       hit F1 and the WWIV User Editor will appear over the top of the 
       screen you were just at.
       
        ┌────────────────────────────────────────────────────────────────────┐
        │ WWIV User Editor                                    [Newsysop #-1] │
        ├────────────────────────────────────────────────────────────────────┤
        │ Security Level(SL): ░░░             Message AR:                    │
        │ DL Sec. Level(DSL): 0              Download AR:                    │
        │    User Exemptions: 0             Restrictions:                    │
        ├────────────────────────────────────────────────────────────────────┤
        │          Sysop Sub: 999              Time Bank: 0                  │
        │         Ass Points: 0              Gold Points: 0.                 │
        ├────────────────────────────────────────────────────────────────────┤
        │        KB Uploaded: 0            KB Downloaded: 0                  │
        │     Files Uploaded: 0         Files Downloaded: 0                  │
        │    Messages Posted: 0         Number of Logons: 0                  │
        ├────────────────────────────────────────────────────────────────────┤
        │ Note:                                                              │
        ├────────────────────────────────────────────────────────────────────┤
        │    (ENTER) Next Field   (UP-ARROW) Previous Field    (ESC) Exit    │
        └────────────────────────────────────────────────────────────────────┘
       
       Change the Security Level (SL) to 255.
       Change the DL Sec. Level (DSL) to 255.
       ESC to save the changes to this user.
       You will be back at your normal user session screen and can complete the
       new account setup. You can change your password or use the one provided.
       It does not have to be (should not be for security) the same as your 
       System Password you setup in INIT.
        
       Congratulations! You are now the SysOp of a WWIV 5.0 BBS!

       Continue on to more advanced [WWIV5 Telnet Server](wwwiv5telnetserver) settings 
       to get on the internet. But we suggest you read through the rest of the 
       documentation before you get too excited about that just yet. But don't worry, 
       it's not hard at all!

        [Linux](linuxinstall)
        [Upgrading pre 5.0 Windows](windowsupgrade)

[Init Settings](init)
    General System Configuration
    System Paths
    External Transfer Protocol Configuration
    External Editor Configuration
    Security Level Configuration
    Auto-Validation Level Configuration
    Archiver Configuration
    Instance Configuration
    Language Configuration
    Network Configuration
    Registration Information
    User Editor
    Update Sub/Directory Maximums
[WWIV5 Telnet Server](wwwiv5telnetserver)
[Waiting for Caller (WFC) Screen](wfc)
WWIV 5 Menus
[Main Menu](menumain)
    Message Center
    Miscellaneous
    E-Mail
    System Features
        D> Change your Defaults
        G> Read General Files
        T> Transfer Section
        .> Online Programs
        $> Use Time Bank
    CTRL-T
[WWIV Slash Menu](menuslash)
    //Commands
        //SYSOP
        //VER
        //Net
        //Who
        //Upload
        //Qscan
        //CLS
        //CM
        //UNQSCAN
        //COLORS
    /commands
        /Z
        /O
        /E
        /N
        /C
        /A
//SYSOP
    [A] Allow Editor
    [C] Chain Editor
    [E] Events Editor
    [I] Instance Editor
    [M] Menu Editor
    [U] User Editor
    [K] Print Votes
    [?] Display Help
    [B] Sub Editor
    [D] Dir Editor
    [G] Bulletin Editor
    [J] Conference Editor
    [T] Text Editor
    [V] Voting Editor
    [Q] Quit
[Advanced Configuration](advanced)
    WWWIV.ini
    Multi Instance
    Modem Settings
    WWIVNet
    Other Nets
[History of WWIV](wwivhistory)
[Registration & License](license)