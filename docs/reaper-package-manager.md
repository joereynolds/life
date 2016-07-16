
#Reaper Package manager

## Intro

Reaper package manager is a command line interface to manage the downloading/installing, updating, and deletion of plugins.
The packages are kept up to date by the community via a user repository (similar in through to the AUR).

== User repository ==

The user repository is at (some site I haven't made yet). A user can upload a package, the upload form is the following

PACKAGE NAME :
PACKAGE URL  :

These are both <input> elements.

The PACKAGE NAME is the name of the package. A user may call this whatever they want though it's more helpful if they name
it something semantic and relevant to the plugin.

The PACKAGE URL is the url source for the download of the package.

== Syntax ==

All commands support wildcards for bulk installation, updates and removals.

* Install a package : Downloads and installs the package into the users plugin directory
```
    reap-get install synth1
    reap-get install s* //Install all packages that begin with s
```
* Update a package : Checkes the user repository for any newer versions of this file (somehow???) and replaces it with it
```
    reap-get update synth1
```
* Remove a package : Removes the package from the users plugin directory
```
    reap-get remove synth1
```
* View all packages : Shows all packages available. View all supports wildcards
```
   reap-get view * //Get all packages
   reap-get view s* //All packages beginning with s
   reap-get view *ass* //All packages with the letters 'a','s', and 's' in them.
```

== Rough Thoughts ==

We'd have all plugins stored in a text fikle/json array?

Command would look like so

reap-get synth1

If you have made reap-get aware of your VST plugin directory, it will proceed otherwise it will error:

reap-get failed : Please supply your VST Plugin directory first
    try this command;
        reap-config --user.path="Your path here"


Example of package file

{'synth1' : {'url' : 'www.synth1.com/download'},
 'buzmaxi' : {'url' : 'www.bzmax.com/get.php'}
}
etc...

