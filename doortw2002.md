# TradeWars 2002
***

[Download TradeWares 2002 from ClassicTW](http://wiki.classictw.com/index.php?title=Application:TradeWars_2002_v3). 
These instructions are based on the installation of [2002V309.ZIP](http://wiki.classictw.com/filearchive/apps/2002V309.ZIP).

**NOTE:** You do NOT want the "GS" version of TW2002. The GS version is not a door
version it is a standalone game server.

Known Issue | Workaround  or Description
--- | ---
NTVDM.EXE Crashes when launching TW2002 on Windows7 | No known workaround 
Unregistered versions will only work locally with WWIV5TelnetServer & Default TW2002 Configuration | Unregistered versions of TW2002 only let you use 1 Node. WWIV5TelnetServer reserves Instance 1 of WWIV for the Local Node. To workaround this: Go into the Preferences and change the value of "Use Nodes" from 2 through 4 to 1 through 4.

## Installation Steps

* Extract Tradewars into a directory ex: ```c:\wwiv\doors\tw```
* In chainedit //ce from the main menu or c from the Waiting For Caller (WFC)  
* Insert a new chain aka door & make your chain look like this:
```
Editing Chain # 2
A) Description : TradeWars 2002
B) Filename : c:\wwiv\doors\tw\tw.bat %N
C) SL : 10
D) AR : None.
E) ANSI : Optional
F) DOS Interrupt: NOT Used
G) Win32 FOSSIL : Yes
J) Local only : No
K) Multi user : Yes
Which (A-K,R,[,],Q) ? 
```

* In ```c:\wwiv\door\tw``` create ```tw.bat``` and add the following:  

```batch 
@echo off
c:
cd c:\wwiv\doors\tw
TW2002 TWNODE=%1
exit
```
* From the command line at ```c:\wwiv\doors\tw``` run ```INSTALL.BAT``` This will  expand all the files, put them in the right place in your folder and run the "BigBang" which creates your game. If you want to know about all those game creation options, read the TW2002 docs. When it completes you wil be presented the following at the command line.

```
Okay! You're almost done.  You have to now run TEDIT and configure your
systems node info. (Select (O)- BBS node setup)

If you're running a single line, just configure Node 0 for local use and
Node 1 for your Modem.  After you've done this, put

SET TWNODE=1

in the Autoexec.bat file for your BBS node and then reboot the machine
so this new Dos Environment variable takes effect.  If you're running
under Desqview and cannot use Dos Environment variables, you can optionally
call TW2002 with a command line variable that looks the same as the
above environment variable.  Example:    TW2002 TWNODE=1
```

* Now run ```TEDIT.EXE``` to setup your NODES. At the first prompt hit "?" to bring up the full menu.
```
<Unregistered Copy>
Trade Wars 2002 Editor (?=Help) [?] :
```
```
           T r a d e   W a r s   2 0 0 2   S y s o p   E d i t o r

                Standard Editors                        Gold Editors

<A> - Aliens Editor                              <1> Ship Editor
<D> - Remove derelict spacecraft                 <2> Planet Editor
<F> - Ferrengi editor                            <3> Alien Race Editor
<G> - General information and setup, screen one
<H> - General information and setup, screen two
<L> - List current users
<N> - Planet editor
<O> - BBS node editor
<P> - Port editor
<S> - Sector editor
<T> - Corporation editor
<U> - User editor
<V> - Ship editor
<C> - Add player to closed game

<Q> - Quit editor

<Unregistered Copy>
Trade Wars 2002 Editor (?=Help) [?] :

         Welcome to Trade Wars 2002 ver 3.09.  Game now in Local Mode.
```
* Type "O" to bring up the BBS Node Editor
* At the next prompt type "1" and <ENTER>
```
Edit which node: "#####"
Node ID: (-1=Abort)  (-1 to 32,000) [-1] :
```
```
One moment, adding node records...
Node number: 1
<A> Path to Data files  : <Default Directory>
<B> Path to Drop file   : <Current Directory>
<C> BBS Drop file type  : LOCL

Node editor: (?) (<>) (X=Exit) [X] :
```
* You need to edit B the Path to the Drop File and C the Type of drop file. Set the path to ```c:\wwiv\temp1\``` and select WWIV for the Type. After you edit the Type you will see new options to edit.
```
Node number: 1
<A> Path to Data files  : <Default Directory>
<B> Path to Drop file   : c:\wwiv\temp1\
<C> BBS Drop file type  : WWIV
<D> Hardware Handshaking: Yes
<E> Active Node         : Yes
<F> Comport 1 to 16     : 1
<G> Override port Addr  : 03F8
<H> Override port IRQ   : 4
<I> I/O Type            : Standard

Node editor: (?) (<>) (X=Exit) [X] :
```
* Select "I" and change the I/O Type to Fossil

Your configuration for Node 1 should now look like this:
```
Node number: 1
<A> Path to Data files  : <Default Directory>
<B> Path to Drop file   : c:\wwiv\temp1\
<C> BBS Drop file type  : WWIV
<D> Hardware Handshaking: Yes
<E> Active Node         : Yes
<F> Fossil port 1 to 254: 1
<I> I/O Type            : Fossil

Node editor: (?) (<>) (X=Exit) [X] :

         Welcome to Trade Wars 2002 ver 3.09.  Game now in Local Mode.
```

* **NOTE:** At ths point, if you've followed other door installation guids, you would configure the other nodes. You cannot do this with TW2002 unless you have the registered version. If you have a registered copy of TW2002 go ahead and configure the other nodes. The only difference is the path to the drop file will be ```\wwiv\temp#``` where # is equal to the Node Number.
* Exit the BBS Node Editor using "X" and then Exit TEDIT using "Q"