#Testing a CLI Application



# Tools

I do all of my CLI stuff usually in Python

## Unit testing

For unit testing, I just use the unittest module. It works well for my needs.
Some people prefer `nose` or other similar tools but any unit testing is better than none.

## Shelltest

[Shelltest]() is an acceptance testing library for the CLI.
It's extremely simple to set up and is pretty much like testing the application yourself.

It helps find bugs/regressions that you wouldn't normally pickup through unit tets alone.

### Installation

The easiest way to install shelltest is by downloading the relevant
binary from https://github.com/liquidz/shelltest/releases

`wget -O shelltest https://github.com/liquidz/shelltest/releases/download/v0.1.1/shelltest_linux_amd64`

Making it executable

`chmod +x shelltest`

And moving it somewhere globally accessible
`mv shelltest /usr/local/bin/`


