Like salutem but meant for localhosts and better thought out.


## Overview

Written in Typescript (maybe something else? (maybe even bash for now))

### Tree

```

src/ 
  notifiers/
    notifySend
    mail
    console
```

## Commands

```
# lists all checks present in checker/checks directory
checkhealth list

# Opens up a check (tab completed) in $EDITOR
checkhealth edit <tab>

# Manually run a check (tab completion supported again)
checkhealth run <tab>



```

## Checks

Checks can be written in any language, they just need to return 0 for success
and 1 for an error. 

Structure for checks (live in `.config`)

```
~/.config/
  program
    checks
      low-battery
        check
        message
      is-joereynolds-audio-alive
        check
        message

```


## Features

- Multiple notifiers (notify-send, email, console etc...)
- Built-in daemon/cron. No need to `crontab -e`


## Notifiers

- notify-send: If used, will use notify-send for popping up info
- mail: Emails the notification to you
- console: outputs it to the terminal running it. (probably won't work with a
  deamon this way)


