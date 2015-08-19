# WWIV.INI
***

# Overview

# Notes
***
**NOTE:** This a scratchpad of stuff I'm pulling together from the WhatsNew.txt 
and other documentation. I'll clean it up and merge it up the page. It is in 
reverse chronological order and older things may be conflict with newer ones,
that has to be sorted out.

Added wwiv.ini setting NO_NEWUSER_FEEDBACK. If set to Y no newuser messages
will be sent at all.

Added wwiv.ini setings to control temp/batch directories. This is no longer
configured in init.  For TEMP_DIRECTORY/BATCH_DIRECTORY the %n is replaced
by the node number of the instance. Also paths are relative to the bbs home
directory (where config.dat lives).  NUM_INSTANCES defines how many intances
you want to spawn.  Also node that directories are created on demand by the
bbs on startup and config.ovr will be created by legacy tools when you run
init. Here are the default values:

    TEMP_DIRECTORY = temp%n
    BATCH_DIRECTORY = batch%n
    NUM_INSTANCES = 4

Added new wwiv.ini setting to enable/disable internal QWK and wwivmail from
  the //QWK menu.  These currently both default to 'Y' (the wwivmail one will
  shortly default to 'N', so if you use it please add this to your INI)
  Here are the ini keys and default values:
    USE_WWIVMAIL = Y
    USE_INTERNAL_QWK = Y

* SPAWNOPT[FSED] is now unused and no longer supported.  Spawn options are now
  set on a per-editor bases in INIT (similiar to how chains work).

* EXEC_WAITFORIDLETIME and EXEC_USECWAITFORIDLE are no longer used, 
  EXEC_CHILDWAITTIME  should be used to set how long to wait for exec'ed
  processes to become runnable. It defaults to 500ms.

* FOSSIL can now be specified in WWIV.INI as a valid flag for spawn 
  options (Build37)

New WWIV.INI Parameters
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  EXEC_LOGSYNCFOSS     = [ 1 | 0 ] - If non-zero then wwivsync.log will 
                         be generated.  The default setting is 1 and this
                         is currently ignored.
  EXEC_USECWAITFORIDLE = [ 1 | 0 ] - Under WindowsNT/2K/XP when launching
                         the child process WWIV uses WaitForInputIdle to wait
                         for the child process to process all normal input 
                         before starting the Fossil handling code.  Setting
                         this to 0 will disable that (acting like Win9x where
                         we just wait for a bit (See EXEC_CHILDWAITTIME).  The
                         default value of this is 1.
  EXEC_CHILDWAITTIME   = (time to wait in milliseconds, this parameter is
                         only used on Win9X unless EXEC_USEWAITFORIDLE is
                         set to 0. The default value is 500 (1/2 second)
  EXEC_WAITFORIDLETIME = (time to wait in milliseconds, only used on 
                         Windows NT/2K/XP unless EXEC_USEWAITFORIDLE=0).  The
                         default value for this is 2000 (2 seconds)

