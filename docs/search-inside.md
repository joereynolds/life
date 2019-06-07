#

It's a vim plugin it should allow `/` to work on a motion.
(Don't overwrite / though, use something else, `gs` is a safe bet to map to but
just expose <plug> mappings for now)

# Examples

`gsi}Hello` - Searches inside the `}`s for the word 'Hello'

# How could it work?

One way would be to clobber the visual selection. So under the hood the
following: `gsi}Test` would do `vi}` followed by `/\%Vtest`.

Another way would be to ditch that entirely and use operator pending stuff. I
don't really know much about that though.


# Configuration options

# Read about

- operatorfunc
- g@
- operator pending stuff


# README.md

# motion-search.vim

## What is it

motion-search.vim allows you to search within a motion, it's a slicker
alternative to searching through a visual selection.

## Mappings

Add a mapping of your choice to get started, I recommend `g/`.

```
nmap g/ <Plug>(some-thing)
```

