# Reponere (replace in latin)

A racket program that can perform snippet insertions.

For example

If I type:
email<tab>

It would expand to:
joereynolds952@gmail.com

## How it should work

It's basically a GUI wrapper around xdotools.

### Why?
Because I like racket 
and the current solution
is a shell script that relies on zenity which I find obtrusive.

### Dependencies
For the majority of it, it should depend upon **xdotools** for
sending input.

### GUI
The GUI will be built in racket.

The GUI lists all your snippets and what each one contains.
You can change the 'expansion hotkey' to something other than
<tab> though it is <tab> by default.

## Ideas


