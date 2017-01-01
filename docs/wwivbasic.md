# WWIVbasic
***

# About

WWIV 5.3 supports extending the BBS using WWIVbasic.  WWIVbasic
is a modern implementation of the classical WWIV basic 
interpreter MOD from the early 1990s.

WWIVbasic is implemented using [MY-BASIC](https://github.com/paladin-t/my_basic).  MY-BASIC is an open source project under the MIT license, written by Wang Renxin. 

# MY-BASIC

WWIVbasic supports the entire syntax of MY-BASIC.  The MY-BASIC
documentation can be found in the 
[MY-BASIC Quick Reference](https://github.com/paladin-t/my_basic/blob/master/MY-BASIC%20Quick%20Reference.pdf) document.  In addition to the core language, WWIVbasic includes several package to interact with the WWIV BBS.


## Importing Packages

Packages are imported using the ```IMPORT``` statement in WWIVbasic.  
Starting the name of a package with a ```@``` character means that
a package is being imported, instead of a file (such as foo.bas).

Once a package is imported, the functions
defined in the package may be invoked
without fully-qualifying the name.

For example: the two calls to puts are the same:
```bas

IMPORT "@wwiv.io"

wwiv.io.puts("Hello |@N, How are you?")
puts("Hello |@N, How are you?")


``` 

# WWIVbasic Package Reference

## package wwiv

### wwiv.version()

Returns the version number of the WWIV BBS
system as a String

### wwiv.command(string command)

Invokes ```command``` as a menu command.
For example this would run the BBS list command.
```
wwiv.command("BBSList")
```

### wwiv.printfile(string filename)

Displays the content of ```filename``` using the same logic
as the ```printfile``` C++ function. It'll automatically
choose the best suffix for a file matching the name
```filename``` from the ```GFILES``` directory of the BBS.

Example:
```
wwiv.printfile("oneliners");
```

### wwiv.interpret(string code)

Returns a string for the interpreted macro code ```code```.
The ```|@``` is not needed, just the single character
for the macro code should be provided.

Example:
```
name = wwiv.interpret("N")
print "Hello " + name
```

## package wwiv.io

...


