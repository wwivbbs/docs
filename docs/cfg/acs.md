# ACS System
***

## About

WWIV now supports a simple expression language for supporting 
a basic Access Control System (ACS) to allow more fine grained
access primitives for users on the BBS.

WWIV's ACS suppors the following objects:

| Name    | Description |
| ------- | ----------- |
| User    | Provides attributes about the current user
| System  | Provides attributes about the bbs


## Syntax

The ACS language allows conditional attribute-based access control for WWIV BBS system
resources, such as message areas, conferences, file areas, chains, and menu items.  
This allows the system to specify the conditions in a free-form DSL language that
determines if access is granted.

### Language Elements

WWIV's ACS grammar is comprised of:

* Comparison Operators
* Logical Operators
* Object Attributes
* Expressions 

<br/>

### Data Types

ACS support the following datatypes:


| Name    | Description |
| ------- | ----------- |
| Number  | An integer value of 32 bits in size |
| String  | A variable length set of CP437 characters |
| Boolean | Support either true of false. Convertible to Numbers as 0 and 1 |
| Ar      | Contains the set of Ar values, supports equality checks against single Ar value specified as a string or character. |

<br/>

### Operators
    OP ::= COMPARE_OP | LOGICAL_OP

Only Binary Operators are supported in ACS.  The operators may be either a comparison
operator or a logical operator.

<br/>

#### Comparison Operators
		LHS COMPARE_OP RHS


Comparison Operators are binary operators that compare the values of both operands and
return a true or false boolean value.

WWIV ACS supports the following Comparison Operators with ```LHS``` as the Left
Hand Side operand and ```RHS``` as the right hand side operand:

| Name                  | Symbol   | Description
| --------------------- | -------- | -----------
| Greater Than          | ```>```  | True if LHS > RHS
| Greater Than or Equal | ```>=``` | True if LHS >= RHS
| Less Than             | ```<```  | True if LHS < RHS
| Less Than or Equal    | ```<=``` | True if LHS <= RHS
| Equal                 | ```==``` | True if LHS == RHS
| Not Equal             | ```!=``` | True if LHS != RHS
 
 <br/>

Example:

      user.sl > 100

<br/>


#### Logical Operators
		LHS LOGICAL_OP RHS

The name logical comes from boolean logic, although the operands on either side of
the operator may be an expression or type that evaluates independently to a boolean.

WWIV ACS supports the following Logical Operators:

| Name | Symbol | Description
| ---- | ------ | -----------
|  AND | ```&&``` | Both operands must evaluate to true for the result to be true.
|  OR  | ```||``` | At least one operand must evaluate to true for the result to be true.

<br/>

Example:

      user.sl > 100 || user.ar == 'A'

<br/>

### Expression
    OP ::= COMPARE_OP | LOGICAL_OP
		EXPRESSION ::= EXPRESSION (OP EXPRESSION)?

The language is designed to evaluate a single expression.  An expression may be
a compound expression with multiple expressions combined using logical 
AND ```&&``` or OR ```||``` operators.

<br/>

### Object Attributes
WWIV ACS supports attributes in the form 
Object.Attribute. For example "user.sl" is the current user's security level.<br>
*Note:* Object and attribute names are case-insensitive, so 
both ```user.name``` and ```USER.NAME``` are equivalent.


| Variable              | Type    | Meaning         |
|-----------------------|---------|-----------------|
bbs.name                | string  | Name of the BBS
bbs.sysopname           | string  | Name of the  SysOp
bbs.phone               | string  | Phone Number of the BBS
bbs.node                | string  | Node number for this BBS instance
bbs.os                  | string  | Operating System Name this node BBS is running on
bbs.version             | string  | WWIV Version #
bbs.reg                 | string  | WWIV 4.x Registration Number
bbs.compiletime         | string  | Date and time the BBS binary was compiled
user.name               | string  | User's name or handle
user.sl                 | number  | User's SL
user.dsl                | number  | User's DSL
user.age                | number  | User's Age
user.regnum             | number  | User's WWIV registration number
user.sysop              | boolean | Is the user a sysop
user.cosysop            | boolean | Is the user a co-sysop
user.guest              | boolean | Is the user logged on as a guest
user.validated          | boolean | Is the user validated
user.screenlines        | boolean | User's screen lines
user.screenwidth        | boolean | User's screen width
user.ansi               | boolean | Does the user have ansi enabled
user.ansistr            | string  | describes user's ansi and color state
user.color              | boolean | Is color enabled
user.pause              | boolean | Is pause enabled
user.mailbox_state      | string  | Describes the mailbox state (i.e. forwarded to user ...)
user.extcolors          | boolean | Are extra colors enabled
user.optional_lines     | number  | Number of optional message lines
user.conferencing       | boolean | Is conferencing enabled
user.fs_reader          | boolean | Is the full screen message reader enabled
user.email              | string  | User's internet email address
user.ignore_msgs        | boolean | Ignore inter-instance messages
user.clear_screen       | boolean | Clear screen before messages
user.auto_quote         | boolean | Use WWIV auto-quote vs. standard quoting
user.protocol           | number  | default protocol number
user.callsign           | string  | User's HAM callsign (if provided)
user.street             | string  | User's street address (if provided)
user.city               | string  | User's city (if provided)
user.state              | string  | User's state (if provided)
user.zip_code           | string  | User's zipcode (if provided)
user.last_ipaddress     | string  | Last IP addressed used
user.last_bps           | number  | Last BPS rate (if over serial)
user.laston             | string  | Date (MMDDYY) last on BBS
user.voice_phone        | string  | User's voice phone (if provided)
user.data_phone         | string  | User's data phone (if provided)
user.gender             | char    | User's gender (as character, M/F) (if provided)
user.menuset            | string  | curent menuset
user.birthday_mmddyy    | string  | User's birthday (MMDDYY)  (if provided)
user.email_waiting      | number  | Number of email waiting
user.messages_posted    | number  | number of messages posted
user.posts_today        | number  | number of messages posted today
user.posts_net          | number  | number of messages posted on a network
user.messages_read      | number  | number of messages read
user.email_today        | number  | number of email sent today
user.email_sent_local   | number  | number of email sent locally today
user.feedback_sent      | number  | number of feedback to sysop send
user.email_sent_net     | number  | number of email sent to the network
user.chains_run         | number  | number of chains execute
user.uploaded           | number  | number of files uploaded
user.uk                 | number  | KB of files uploaded
user.downloaded         | number  | number of files downloaded
user.dk                 | number  | KB of files downloaded
user.editorname         | string  | Fullscreen editor name
user.show_controlcodes  | boolean | Show message lines with WWIV control codes and FTN kludge
user.twentyfour_clock   | boolean | Show time using 24hr clock (i.e. 18:00, not 06:00 PM)


### WWIV Security Attributes

##### SL AND DSL

Security Level (SL) and Download Security Level (DSL) are the primary ways
to secure functionality in WWIV.  Historically new users will have  SL and DSL
of 10, then validated users get 20 or 50 depending on the setup. Many modern
setups grant 20-50 on the first call so people can see more of the BBS without
needing to call back.

##### AR AND DAR

AR and DAR allow access specific activities (subboards, download subboards,
chains, etc) when other attributes (like age, or security level), wouldn't
be the choice, as that may apply to many more BBS callers than needed.

For example:
Let's say you have a group of OS/2 callers on your bbs, selecting them by
age or security level (SL) would not be appropriate.  This is where 
AR works perfectely. There are 16 AR and DAR flags (A-P) that  you can add
as arestriction using the ACS language and also then grant this AR or DAR to 
the BBS callers to grant access to this area.

You use the user editor to grant AR and DAR to callers, and using ACS, add a
condition requiring it for an area in the BBS.

<br/>

## Examples

Grant access to  users with SL of 100 or more or AR of 'A':
      
      user.sl >= 100 || user.ar == 'A'

Grant access to users with SL of 20 or less, and also to Rushfan.
      
      user.sl <= 20 || user.name == "Rushfan"
