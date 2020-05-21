# Configuration Files used by WWIV


### Restricting Users

Only ```trashcan.txt``` is used to restrict user names.

### gfiles/trashcan.txt

```gfiles/trashcan.txt``` is used to disallow names from login. 
If a name or pattern of a name is entered, the session will immediately end.

The format of the file is plan text, one pattern per line. A ```*``` may be
used at the beginning or the end of a string as a wildcard, otherwise lines
entered are counted as an exact case-insensitive match.