How to install WWIV 5.0 on Windows  
first download WWIV 5.0 from here  
Extract wwiv-build-number-number.zip into c:\wwiv or c:\bbs    
Then Run INIT    
your should see this  
WWIV v5.00 (Build 479) Initialization/Configuration Program.  
Copyright (c) 1998-2014, WWIV Software Services  
CONFIG.DAT NOT FOUND.  
Perform initial installation?  
type Y & init will install all the files need & create all the directories  
then your asked the sysop password & at this point its the default "sysop"  
after that you should see the main init menu it should look like this  
WWIV v5.00 (Build 469) Initialization/Configuration Program.  
Copyright (c) 1998-2014, WWIV Software Services  
General System Configuration  
System Paths  
Communications Port Configuration  
Manually Select Modem Type (now LOCAL)  
External Protocol Configuration  
External Editor Configuration  
Security Level Configuration  
Auto-Validation Level Configuration  
A. Archiver Configuration  
L. Language Configuration  
N. Network Configuration  
U. Update Sub/Directory Maximums  
Q. Quit  
Instance 1: Which (1-9, A,L,N,R,U,Q) ?  
Select 1   
& you get this menu  
System PW : SYSOP  
System name : My WWIV BBS  
System phone : - -  
Closed system : N  
Newuser PW :  
Newuser restrict : M  
Newuser SL : 10  
Newuser DSL : 0  
Newuser gold : 100  
Sysop name : The New Sysop  
Sysop low time : 00:00  
Sysop high time : 00:00  
Net low time : 00:00  
Net high time : 00:00  
Up/Download ratio: 0.000  
Post/Call ratio : 0.000  
Max waiting : 50  
Max users : 500  
Caller number : 0  
Days active : 0  
<ESC> when done.  
here you need to change your system password   
& name your bbs & change the sysop name id suggest removing the M new user restriction   
then esc back to the main menu & exit init  
in your bbs directory run wwiv5telnetserver  
& under preferences setup your nodes & check your paths   
then start the server telnet to localhost & create your sysop account  
you now have a installed copy of WWIV 5.0  
  
