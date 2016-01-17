# WWIV ANSI Support
***

###Editor Color Codes
These are the color codes you can use when posting messages, sending feedback and email on WWIV BBS. To use
a particular color type CTRL-P + the letter or number that represents the color you want. You can then use 
CTRL-P+0 to return to the default color.

![WWIVBBSColors](/screenshots/wwivbbs/COLORS.png)

###WWIV Pipe Colors
These are the default 0-9 Pipe colors used in the menu system and other UI pages. You uses them by specifying
```|#5``` when you want to start GREEN and then ```|#0``` to switch back to GRAY. Look in some of the .MSG files
in \wwiv\gfiles for more samples.

**Note:** that the ```+``` sign should not be used when you add the code to a file, I merely used that so the text would show up. So you would use ```|#0``` NOT ```|+#0```.

![defPipeColors](/screenshots/wwivbbs/defaultPipeColors.png)

####WWIV.INI Colors

```INI
;=============================================================================
;                               COLOR OPTIONS
;=============================================================================
;
; NOTE:  Although the BBS is capable of using over 90 color combinations,
; only the first ten may be set here.  The remaining colors are set from
; inside the BBS.
;
; Colors are selected numerically. To determine the value for a color, use the
; following chart:
;
;    0 = Black             8  = Dark Gray
;    1 = Blue              9  = Light Blue
;    2 = Green             10 = Light Green
;    3 = Cyan              11 = Light Cyan
;    4 = Red               12 = Light Red
;    5 = Magenta           13 = Light Magenta
;    6 = Brown             14 = Yellow
;    7 = Light Gray        15 = White
;
; Now, to calculate a color, you take the value for the background color and
; multiply by 16, then add it to the foreground color you wish. This will
; provide the value you should use for that color combination. Note that
: color values greater than 127 will result in blinking. In other words,
; you should probably restrict background colors to colors 0-7 above.
;
; An example: if you want to find the value for, say, bright yellow on magenta,
; it would be (5*16) + 14. This equates to (magenta * 16) + white.
;
; -----------------------------------------------------------------------------
NUCOLOR[0]     = 7
NUCOLOR[1]     = 11
NUCOLOR[2]     = 14
NUCOLOR[3]     = 13
NUCOLOR[4]     = 31
NUCOLOR[5]     = 10
NUCOLOR[6]     = 12
NUCOLOR[7]     = 9
NUCOLOR[8]     = 5
NUCOLOR[9]     = 3
NUCOLORBW[0]   = 7
NUCOLORBW[1]   = 15
NUCOLORBW[2]   = 15
NUCOLORBW[3]   = 15
NUCOLORBW[4]   = 112
NUCOLORBW[5]   = 15
NUCOLORBW[6]   = 15
NUCOLORBW[7]   = 7
NUCOLORBW[8]   = 7
NUCOLORBW[9]   = 7
;
; System Colors
;
TOPCOLOR               = 27                 ; for topscreen info
F1COLOR                = 9                  ; for F1 user editor
EDITLINECOLOR          = 31                 ; current field in F1
CHATSELCOLOR           = 11                 ; for selecting sysop
MSG_COLOR              = 2                  ; for color msgs
;
```

###User Custom Colors
By using the //COLORS menu option, users can customize how color codes are displayed to them and only
them. For example, by default |#5 is GREEN on BLACK. A User can change to MAGENTA on WHITE and anywhere |#5 or CTROL-P5 have been used .MSG files or SUB messages it will display the users chosen color instead. Here is a screen shot of //COLORS. The character in the cell is the one you press to customize that color.

![ColorEditor](/screenshots/wwivbbs/ColorEditor.png)

###Art Tools
[ASCII Art Studio](http://www.torchsoft.com/en/aas_information.html) is a great tool for making the B&W versions of your .TAG lines, Welcomes, Logons, etc. Then you can add the color codes in notepad.  
[Pablo Draw](http://picoe.ca/products/pablodraw/) is a great tool for doing full color ANSI artwork, used by many of the top artists.  

###Known Issues
* Microsoft stopped including [ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS) in Windows around the VISTA time frame. Because there's no ANSI support on some OSes you won't see well rendered ANSI on the local system. You'll see all those square brackets and extended ASCII characters.

### Notes
Just some notes to use when working on this page

* Tracking this work in [Issue #160](https://github.com/wwivbbs/wwiv/issues/160)

From What's New
```
* Added 2 new pipe codes:
  * |#<wwiv color code 0-9> as an alternative to the "heart" codes
  * |@<macro character> as an alternative to ^O^O<macro char>
  * Existing pipe codes are: |B<background char>, and |<2 digit code>
    for foreground colors. (Build36) 
```
