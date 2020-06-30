# Replacable parameters
***

When executing doors (chains), transfer protocols, or any other external program 
from WWIV you often need to specify information about the BBS, such as paths or
instance information. In addition to the ```%1-%5``` parameters specific
to each invocation, there are parameters available when executing any
external program.

Here's the list of all replacable parameters:


| Param  | Description                          | Example
|--------|--------------------------------------|----------------------------------|
| %%     | A single '%'                         | "%"
| %1-%5  | Specified passed-in parameter        |
| %A     | callinfo full pathname               | "c:\wwiv\e\1\temp\callinfo.bbs"
| %B     | Full path to BATCH directory         | "c:\wwiv\e\1\batch"
| %C     | chain.txt full pathname              | "c:\wwiv\e\1\temp\chain.txt"
| %D     | doorinfo full pathname               | "c:\wwiv\e\1\temp\dorinfo1.def"
| %E     | door32.sys full pathname             | "C:\wwiv\e\1\temp\door32.sys"
| %H     | Socket Handle                        | "1234"
| %I     | Full Path to TEMP instance directory | "C:\wwiv\e\1\temp"
| %K     | gfiles comment file for archives     | "c:\wwiv\gfiles\comment.txt"
| %M     | Modem BPS rate                       | "38400"
| %N     | Instance number                      | "1"
| %O     | pcboard full pathname                | "c:\wwiv\e\1\temp\pcboard.sys"
| %P     | Com port number                      | "1"
| %R     | door full pathname                   | "c:\wwiv\e\1\temp\door.sys"
| %S     | Com port BPS rate                    | "38400"
| %T     | Time remaining (min)                 | "30"
| %U     | Username                             | "Rushfan #1"

