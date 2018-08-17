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

# Read about this stuff later

- arp tables    
- egress route
- reverse DNS
- inbound vs outbound ports
- qdisc / queueing discipline
- VNC protocol
- X11 protocol
- TCP wrappers
- pssh (also knows as parallel-ssh) (parallel ssh, sounds slick.)

































