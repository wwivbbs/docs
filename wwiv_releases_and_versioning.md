# WWIV Releases and Versioning 
_Draft Proposal_  
_2015-11-30_  
Rushfan (wwiv@)  
***

### WWIV Version Number Components
__MAJOR.MINOR.PATCH.BUILD__

Component | Description 
----------|-------------
MAJOR | Major release (i.e. 5 for the foreseeable future)
MINOR | Minor release (i.e. 0, 1, these will be incremented every milestone release)
PATCH | Normally 0 unless a new patch release needs to be made off-cycle
BUILD | Build number from Jenkins

### Platform Support

WWIV supports the following platforms on a tiered system.  
The tiers are:

Tier | Description
-----|-------------
__Tier1__ | Fully supported, bugs may block a release.
__Tier2__ | Supported but lacking a maintainer, bugs may __NOT__ block a release.
__Tier3__ | Best effort support, bugs will __NOT__ block a release.

Platforms:

Platform | Tier
---------|------
Windows 32-bit (Windows7 or later) | Tier1
Linux {Debian8 like} (x86/X64)| Tier2
Others (ARM) | Tier3

### Release Cadence
Every quarter (or so) a new Minor release will be released.  Bugs targeted to this release will use the GitHub milestone functionality.
