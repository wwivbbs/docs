# Using fail2ban to block unwanted IPs
***

Unfortunately, the internet is not all rainbows and puppies.  Setting up a BBS
means you are going to get hammered by script-kiddies that want to hack your
system.  One of the most annoying aspects of this is having all your BBS nodes
getting sucked up by repeated hammering from the same IP.  Thankfully, there's
a tool available to pretty much any linux distribution that will help mitigate
a lot of this;  It's called fail2ban.

Fail2ban works with iptables to dynamically block access to unwanted IP
addresses by monitoring logs and looking for patterns of abuse.  This is
a basic overview of how to set it up and use it to make your BBS happy.


## How to install fail2ban

The two packages that you will need to install are iptables and
fail2ban.  On a debian system, you can use the following to accomplish
that:  ```sudo apt-get install fail2ban iptables```

You should be able to use the equivalent for whatever linux distro you
are running.  

That's pretty much all you need to do to install it.  Configuring it is
a little more involved, but not hard.


## Configuring fail2ban

After you have installed fail2ban, then next thing is to configure it.
You will want to be root for all of this, as the config files and the
tools for testing are all root-owned (for obvious reasons).

### How it works

fail2ban uses a combination of jails, filters and actions to detemine
what to ban and how to ban it.

1. jail - defines what filter to use, logfile to monitor and parameters
   to decide when to apply the filter
2. filter - defines what regex (regular expression) to use to decide if
   there is a match against an IP ban
3. action - defines what kind of iptables rule to create

Of the three, only jail and filter need to be set up.  The default
actions will work just fine for us.  

### How to set it up

#### Setting up the jail

The jail file is in /etc/fail2ban.  What we want to edit is the
jail.conf file, but we don't want to edit it directly.  It's better to
create a jail.local file and put our changes there.  In general,
fail2ban will use *.local files first, then system files.  This way, we
can make whatever changes we need to, and not have to worry about
anything getting overwritten by system updates.  We don't need
everything, just the bits for our jail:  

```ini
#
# /etc/fail2ban/jail.local
#

[DEFAULT]

# "ignoreip" can be an IP address, a CIDR mask or a DNS host. Fail2ban will not
# ban a host which matches an address in this list. Several addresses can be
# defined using space separator.
ignoreip = 127.0.0.1/8 

[wwivd-telnet]
enabled   = true
filter    = wwivd
port      = 23
logpath   = /var/log/syslog
findtime = 600
maxretry  = 3
bantime  = 86400

[wwivd-ssh]
enabled   = true
filter    = wwivd
port      = 2222
logpath   = /var/log/syslog
findtime = 600
maxretry  = 3
bantime  = 86400
```

We have two sections, one for our telnet port and one for our ssh port.
They are both set up the same way: monitor syslog and if the wwivd
filter matches 3 times in 10 minutes (600 seconds), ban the IP for 1
day. The only changes you need to make to jail.local are the port,
findtime, maxretry and bantime variables to suit your needs.

I would also suggest adding your IP to the end of the list for the
ignoreip variable in the DEFAULT section so you can log in multiple times
without having to worry about banning yourself. :-)


#### Setting up the filter

The wwivd filter is pretty simplistic.  Create the file: ```/etc/fail2ban/filter.d/wwivd.conf``` with the following contents:


```ini
# Fail2Ban filter for wwivd
#
# Cfr.: /var/log/(daemon\.|sys)log
#

[INCLUDES]

# Read common prefixes. If any customizations available -- 
# read them from common.local
before = common.conf

[Definition]

failregex = wwivd.*INFO\s+Accepted connection.*from:\s+<HOST>
            wwivd.*INFO\s+Trashcan.*:\s+<HOST>

# Older formats of the log files.  Uncomment this one if using 
# an older wwivd
#failregex = wwivd.*INFO\s+Connection from:\s+<HOST>$
#            wwivd.*INFO\s+Accepted connection.*from:\s+<HOST>$
#            wwivd.*INFO\s+Trashcan.*:\s+<HOST>

ignoreregex =

```

The important part is the failregex line.  What this is meant to do is
look for our connections.  Here is a sample of the syslog with lines
that it would match against:

```syslog
Mar  3 20:11:46 vps118272 wwivd[4395]: 2017-03-03 19:11:46,347 INFO  Accepted connection on port: 23; from: 112.197.249.137; coutry code: 0
Mar  3 20:11:46 vps118272 wwivd[4395]: 2017-03-03 19:11:46,347 INFO  [4395] Invoking Command Line (posix_spawn):./bbs -XT -H8 -N2
Mar  3 20:11:50 vps118272 wwivd[4395]: 2017-03-03 19:11:50,146 INFO  Trashcan name entered from IP: 112.197.249.137; name: ADMIN
```

Note the ```INFO  Accepted connection on port: 23; from: 112.197.249.137``` on the first line;
that's what our filter is monitoring.  If that same IP address shows up
3 times in 10 minutes, it will get banned.  We also include the Trashcan entry as an extra
match to fail them faster, since they are obviously not interested in being friendly.


#### Start Blocking

Now that we have our jails defined, and our filter set up, it's time to
turn it on and see what's happening.  Before we enable it, do a quick
check of iptables and see what it looks like before.  It should look
something like this:

```
root@mybbs# iptables -S
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
```
Basically accepting all connections.  

To enable fail2ban (using systemd) do the following:

```bash
systemctl enable fail2ban
systemctl start fail2ban
```

We can check that it's running with ```systemctl status fail2ban``` You
should see something similar to:

```bash
* fail2ban.service - LSB: Start/stop fail2ban
   Loaded: loaded (/etc/init.d/fail2ban)
   Active: active (running) since Sat 2016-10-15 14:57:50 CDT; 14min ago
  Process: 13256 ExecStop=/etc/init.d/fail2ban stop (code=exited, status=0/SUCCESS)
  Process: 13377 ExecStart=/etc/init.d/fail2ban start (code=exited, status=0/SUCCESS)
   CGroup: /system.slice/fail2ban.service
           `-13387 /usr/bin/python /usr/bin/fail2ban-server -b -s /var/run/fail2ban/fail2ban.sock -p /var/run/fail2ban/fail2ban.pid
```

Now, with fail2ban enabled, we will see some changes in iptables:

```
root@mybbs# iptables -S
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-N fail2ban-wwivd-ssh
-N fail2ban-wwivd-telnet
-A INPUT -p tcp -m multiport --dports 2222 -j fail2ban-wwivd-ssh
-A INPUT -p tcp -m multiport --dports 23 -j fail2ban-wwivd-telnet
-A fail2ban-wwivd-ssh -j RETURN
-A fail2ban-wwivd-telnet -j RETURN
```

Note that we have some new lines based on the jails we created.  These
are where our dynamic rules will get added as things get banned.  If you
see output like this, then everything should be working.  It shouldn't
be long before we can tell.


## Verifying it's working

Now that we have everything running, we can verify things are working by
looking in a couple places.  The first place to check is the fail2ban
logs themselves.  A quick tail of the log should show some ban activity.

```root@mybbs# tail /var/log/fail2ban.log```

```syslog
2016-10-15 14:57:56,554 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 134.249.89.171
2016-10-15 14:57:56,574 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 176.8.222.179
2016-10-15 14:57:56,593 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 183.54.242.204
2016-10-15 14:57:56,617 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 179.208.110.140
2016-10-15 14:57:56,637 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 37.229.111.13
2016-10-15 15:00:59,300 fail2ban.actions[13387]: WARNING [wwivd-ssh] Ban 176.8.222.179
2016-10-15 15:00:59,324 fail2ban.actions[13387]: WARNING [wwivd-ssh] Ban 179.208.110.140
2016-10-15 15:04:08,085 fail2ban.actions[13387]: WARNING [wwivd-telnet] Ban 116.231.176.2
2016-10-15 15:04:08,090 fail2ban.actions[13387]: WARNING [wwivd-ssh] Ban 116.231.176.2
```

and we can also see entries in iptables getting rejected

```
root@mybbs# iptables -S
-P INPUT ACCEPT
-P FORWARD ACCEPT
-P OUTPUT ACCEPT
-N fail2ban-wwivd-ssh
-N fail2ban-wwivd-telnet
-A INPUT -p tcp -m multiport --dports 2222 -j fail2ban-wwivd-ssh
-A INPUT -p tcp -m multiport --dports 23 -j fail2ban-wwivd-telnet
-A INPUT -p tcp -m multiport --dports 22 -j fail2ban-ssh
-A fail2ban-wwivd-ssh -s 175.207.58.71/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-ssh -s 116.231.176.2/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-ssh -s 179.208.110.140/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-ssh -s 176.8.222.179/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-ssh -j RETURN
-A fail2ban-wwivd-telnet -s 175.207.58.71/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 116.231.176.2/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 37.229.111.13/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 179.208.110.140/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 183.54.242.204/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 176.8.222.179/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -s 134.249.89.171/32 -j REJECT --reject-with icmp-port-unreachable
-A fail2ban-wwivd-telnet -j RETURN
```

## Using iptables to limit concurrent connections

While not strictly a fail2ban setting, it's possible to use iptables to
limit the number of connections coming from a single IP.  This will also
help slow down spammers.  To do this on debian, do the following:

1. disable fail2ban ``systemctl stop fail2ban`` (so you don't save the current fail2ban rules)
2. apply new filters for your telnet and ssh sessions
```
iptables -A INPUT -p tcp --syn --dport 23 -m connlimit --connlimit-above 1 --connlimit-mask 32 -j REJECT --reject-with tcp-reset
iptables -A INPUT -p tcp --syn --dport 2222 -m connlimit --connlimit-above 1 --connlimit-mask 32 -j REJECT --reject-with tcp-reset
```
3. install iptables-persistent ``apt-get install iptables-persistent`` This will also save your current rules at install time.  If you want to make further changes and resave them use ``dpkg-reconfigure iptables-persistent``
4. enable fail2ban ``systemctl start fail2ban``


## Potential Issues and Further reading

### My Filter isn't filtering

1. Since wwivd is still a very new feature, it's possible that the log
output may change over time.  If that happens, the regex in the filter
may not match anymore.

2. Is the correct log file configured in the jail section?  If the file
you are monitoring is not the one that has the connection info, the
filter won't match.


### Fail2ban

For further reading on fail2ban, check out the project site at
fail2ban.org


