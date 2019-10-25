Linux training notes.

(If in vim, press `K` to see man page for the program)

# Tools

## tc   

Show or manipulate [t]raffic [c]ontrol settings.

## ss

Investigate sockets

## netstat

Print network connections, routing tables and more.

## man

Man has multiple pages depending on what you need.
You can use `man -k` to get a list of all the relevant
things for a program. i.e. `man -k vim`.

## tcpdump

Captures packets

## telnet 

Not built with security in mind, is sent over in plain text.

## rsh

Basically the unencrypted version of `ssh`.

# Filesystem

## /proc/sys/net/ipv4/ip_forward

Allows traffic to be forward from one interface to another

## /proc/net/arp

Contains the current arp table (see `man arp`).

Changes to the above files are **not** persistent. To persist them, you need to
edit the /etc/sysctl.conf file. Or a `.conf` file in `/etc/sysctl.d`

# Stuff

## Host access

The syntax for the below files is quite big, so man `hosts_access`

### /etc/hosts.deny

This file contains all the rules to deny a host to access your machine.
A simple rule to deny everyone access is    

```
ALL: ALL
```

### /etc/hosts.allow

This file is the opposite of `/etc/hosts.deny`. You can explicitly
allow hosts.

## ssh  

In your local config (~/.ssh/config) you can create hosts as a shorthand method
of connecting to various machines. For example the following:

```
Host droplet
    Hostname 46.101.63.91
    User joe
```

Will allow you to just do `ssh droplet`.

See `man ssh` and `man ssh_config` for more.

## syslog

- Usually go to `/var/log`
- Config files lie in `/etc/syslog` and `/etc/rsyslog.d`
- You can enable other log modules which gives support for more formats and
  journals.

There are multiple methods (TCP, UDP and RELP) for sending messages to a remote
host. RELP is the most reliable, it saves messages on shutdown and utilises a
queue.

`rsyslog` accepts input from pretty much any application (including user
applications).

See `man syslog`, `man rsyslog.conf`

## Package management

- Avoids having to compile from source using `tar`, `make` and friends.
(Building from source should only really be done if there is no reasonable
alternative)

- `.deb` and `.rpm` are the most common packaging formats.

### Building .deb packages

There are tools such as `debuild` and `cdbs` which can automate a few of the
tasks to make it easier.

Installing a .deb package is as easy (usually) as `dpkg -i package`

## File sharing

vsftpd stands for [v]ery [s]ecure [f]ile [t]ransfer [d]aemon.

## Apache

- Stores most config files in `/etc/apache2/*` (on Ubuntu)
- Logs to `/var/log/apache2` by default (on Ubuntu)


# Read about this stuff later

- active and passive ftp
- getent
- arp tables    
- egress route
- reverse DNS
- inbound vs outbound ports
- qdisc / queueing discipline
- VNC protocol
- X11 protocol
- TCP wrappers
- pssh (also knows as parallel-ssh) (parallel ssh, sounds slick.)

































