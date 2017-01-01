# WWIVbasic
***

## About

WWIV 5.3 supports extending the BBS using WWIVbasic.  WWIVbasic
is a modern implementation of the classical WWIV basic 
interpreter MOD from the early 1990s.

WWIVbasic is implemented using [MY-BASIC](https://github.com/paladin-t/my_basic).  MY-BASIC is an open source project under the MIT license, written by Wang Renxin. 

## MY-BASIC

WWIVbasic supports the entire syntax of MY-BASIC.  The MY-BASIC
documentation can be found in the 
[MY-BASIC Quick Reference](https://github.com/paladin-t/my_basic/blob/master/MY-BASIC%20Quick%20Reference.pdf) document.  In addition to the core language, WWIVbasic includes several package to interact with the WWIV BBS.

## DataTypes supported

| Name    | Description |
| ------- | ----------- |
| Integer | A standard integer (whole number) datatype. The range of this is that of an ```int32_t``` |
| Real    | Floating point number, same as C++ ```float``` |
| String  | A standard string, a list of characters |


## Invoking Functions

Functions may exist in the global namespace (like PRINT), or may
belong to a module.  All of the WWIV BBS functions will belong to
a module starting with ```wwiv```.  

You may always invoke a function using it's fully-qualified
name (such as ``wwiv.version```) or you may import the package
and then invoke it using it's name without the package prefix.

For example: the two calls to puts are the same:
```basic

IMPORT "@wwiv.io"

wwiv.io.puts("Hello |@N, How are you?")
puts("Hello |@N, How are you?")

``` 

## Importing Packages

Packages are imported using the ```IMPORT``` statement in WWIVbasic.  
Starting the name of a package with a ```@``` character means that
a package is being imported, instead of a file (such as foo.bas).

Import Package Example 
```basic

IMPORT "@wwiv.io"

wwiv.io.puts("Hello |@N, How are you?")
puts("Hello |@N, How are you?")

``` 

You may also use import to include the contents of 
anohter WWIVbasic script, ending in ```.bas``` into
your current script.

Import File Example 
```basic

IMPORT "helper.bas"

``` 


## WWIV Packages

## package wwiv

The ```wwiv``` package is the core package of interacting with WWIV. 
Most functionality is available in one of the subpackages.

### wwiv.version()

Returns the version number of the WWIV BBS
system as a String

Example:
```
ver = wwiv.version()
wwiv.io.puts("You are running version: " + ver)
```


### wwiv.command(string command)

Invokes ```command``` as a menu command.
For example this would run the BBS list command.

Example:
```basic

wwiv.command("BBSList")

```


### wwiv.printfile(string filename)

Displays the content of ```filename``` using the same logic
as the ```printfile``` C++ function. It'll automatically
choose the best suffix for a file matching the name
```filename``` from the ```GFILES``` directory of the BBS.

*Note: This method will move to wwiv.io shortly*

Example:
```basic

wwiv.printfile("oneliners")

```


### wwiv.interpret(string code)

Returns a string for the interpreted macro code ```code```.
The ```|@``` is not needed, just the single character
for the macro code should be provided.

Example:
```basic
name = wwiv.interpret("N")
print "Hello " + name
```


## package wwiv.io

This package contains all of the input/output for interacting with the
user connected to the BBS.

### wwiv.printfile(string filename)

Displays the content of ```filename``` using the same logic
as the ```printfile``` C++ function. It'll automatically
choose the best suffix for a file matching the name
```filename``` from the ```GFILES``` directory of the BBS.

*Note: This method will move to wwiv.io shortly*

Example:
```basic

wwiv.printfile("oneliners")

```

### wwiv.io.puts(string s, ...)

Displays a string ```s```.  More than one string may
be specified, separated by commas and they will be
concatenated together.

Example:
```basic

bbsname = "My BBS"
wwiv.io.puts("Welcome to ", bbsname, ".")
wwiv.io.puts("Thank you for calling")

```


### wwiv.io.pl(string s, ...)

Displays a string ```s```, followed by a newline
and carriage return.  More than one string may
be specified, separated by commas and they will be
concatenated together.

Note: This is the same as calling ```wwiv.puts(...)```
followed by ```wwiv.nl()```.

Example:
```basic

bbsname = "My BBS"
wwiv.io.pl("Welcome to ", bbsname, ".")
wwiv.io.pl("Thank you for calling")

```


### wwiv.io.gets(integer maxlen)

Prompts the user for a string and returns it.  The string
may be up to ```maxlen``` characters in length.  A 
colorized input field (mpl) will be displayed to the user.

Example:
```basic

wwiv.io.puts("What is your favorite color? ")
c = wwiv.io.gets(20)
wwiv.io.puts("Wow! " + c + " is my favorite too!!!")

```


### wwiv.io.getkey()

Prompts the user for a single character and returns it
as a string of of only the character.

Example:
```basic

wwiv.io.puts("Are you (a) cool, (b) almost cool? ")
c = wwiv.io.getkey()
If (c = "b") Then
  wwiv.io.pl("Try Harder!");
EndIf

```


### wwiv.io.cls()

Clears the screen.


Example:
```basic

wwiv.io.cls()

```


### wwiv.io.nl([integer newlines])

Displays a newline (aka carriage return + line feed). 
Optionally accepts the number of newlines to display as the
integer ```newlines```, if not specified the default is 1.


Example:
```basic

wwiv.io.nl()
wwiv.io.nl(2)

```


### wwiv.io.yn(string s, ...)

Prompts the user for a yes/no question, the prompt will be the
repeated string ```s```. More than one string may be specified,
separated by commas and they will be concatenated together.

The default answer is ```yes``` if the enter key is pressed.

Example:
```basic

wwiv.io.yn("Are you ? ")
c = wwiv.io.yn()
If NOT c Then
  wwiv.io.pl("Try Harder!");
EndIf

```


### wwiv.io.ny(string s, ...)

Prompts the user for a yes/no question, the prompt will be the
repeated string ```s```. More than one string may be specified,
separated by commas and they will be concatenated together.

The default answer is ```NO``` if the ENTER key is pressed.

(this is the same as ```wwiv.io.yn``` except for the default
value if the ENTER key is pressed.)

Example:
```basic

wwiv.io.yn("Are you ? ")
c = wwiv.io.yn()
If Not c Then
  wwiv.io.pl("Try Harder!");
EndIf

```


### wwiv.io.pause()

Displays the [PAUSE] indicator.

Example:
```basic

wwiv.io.pause()

```

## Package wwiv.io.data

The ```wwiv.io.data``` package is responsible for loading and saving data to
the datastore for WWIV.  Currently only GLOBAL data is supported.

### wwiv.data.load("GLOBAL", list l)

Loads a ```list l``` of data for this script.  The list should be empty
and initialized as a list before calling this function.

Example:
```basic

l = list()
wwiv.data.load("GLOBAL", l)

```


### wwiv.data.save("GLOBAL", list l)

Saves the ```list l``` of data for this script to the datastore for
WWIV.  Currently only GLOBAL data is supported.

Example:
```basic

l = list("a", "b", "c")
wwiv.data.save("GLOBAL", l)

```


## Samples

WWIV includes several sample scripts bundled in ```sample.zip``` or in the
```samples/``` directory in your WWIV install. You may also find these
scripts in [GitHub](https://github.com/wwivbbs/wwiv/tree/master/bbs/admin/scripts).
