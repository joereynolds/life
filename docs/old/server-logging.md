# Overview

A monitoring script for all of my services.
Each health check has a separate script and they are all bundled together in the index.

Layout looks like this

healthcheck.sh
    - check/php.sh
    - check/apache2.sh
    - check/postfix.sh
    - check/bogans.sh
    - check/jra.sh
    - check/mysql.sh

This will then all be available at 46.101.63.91/health.php (or something like that)
This will display a box for each service, colored green if all is good, otherwise, red.

It should ping every minute. Email alerts will be sent if anything is bad.

## Why shell scripts and not a language?

Because we want to be as far away from anything that can die. php can do down,
the mysql driver for php can die etc...

## What to log

### Status of bogans
Grep for a static string on the page (maybe something in the footer)

Run the unit tests too

### Status of joereynoldsaudio.com
Grep for a static string on the page (maybe something in the footer)

### MySQL
Run a basic query and see if you get a response, if you do, it works

### Apache
Do a `sudo service apache2 status`, if it's up, then it's fine

### PHP
Do a `sudo service php status`, if it's up, then it's fine


### Email
Do a `sudo service postfix status`, if its up, then it's fine



