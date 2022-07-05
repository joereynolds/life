# Navigating files with (Neo)Vim

I use these to navigate huge codebases (1m+ lines)

Examples are using The Neovim source code.
This is a whirlwind tour intended to whet your whistle, not teach you.
Any questions, just ask!

## Tools

### Universal Ctags

A maintained and improved fork of ctags/exhuberant-ctags.
Contains more than 20+ new languages supported and **heavily** improved parsers
for PHP and a few others.

You can navigate code

<script type="text/javascript" src="https://asciinema.org/a/9hz7wesimrql87b7i2a4tjfue.js" id="asciicast-9hz7wesimrql87b7i2a4tjfue" async></script>


### GNU-global

You can find where a function has been called (ER MA GAWD)

<script type="text/javascript" src="https://asciinema.org/a/1tlpchduyxjd7fa6ldw8sj5bm.js" id="asciicast-1tlpchduyxjd7fa6ldw8sj5bm" async></script>

You can find where a constant is used.

<script type="text/javascript" src="https://asciinema.org/a/9cp0zc2gcc1oi9jgcbfub3e7b.js" id="asciicast-9cp0zc2gcc1oi9jgcbfub3e7b" async></script>

You can find where a constant is defined

<script type="text/javascript" src="https://asciinema.org/a/311ip7hykg29efia8ynoe36bm.js" id="asciicast-311ip7hykg29efia8ynoe36bm" async></script>

You can probably do other stuff that I don't know about.

Download [gnu-global](https://www.gnu.org/software/global/).

I've mirrored their vim plugins onto github and put them
in a format that plugin managers will understand.

```
Plug 'joereynolds/gtags-scope'
```

To make life better, do this:

```
set cscopetag "search both cscopes db and the tags file
```

Vim has built-in support for cscope and GNU-global provides a cscope interface under
that plugin I linked to.

### FZF

You can navigate files

<script type="text/javascript" src="https://asciinema.org/a/7p51dkdxy2o40264mgdd9w4d9.js" id="asciicast-7p51dkdxy2o40264mgdd9w4d9" async></script>

You can navigate symbols

<script type="text/javascript" src="https://asciinema.org/a/7jo6w7nx8u51uvng66api16aw.js" id="asciicast-7jo6w7nx8u51uvng66api16aw" async></script>

You can make your own **custom** searches, fuzzy [makefile completion](https://github.com/joereynolds/fzf-makefile) anyone?

<script type="text/javascript" src="https://asciinema.org/a/cchzypsfktikz91ikyjzjcnzf.js" id="asciicast-cchzypsfktikz91ikyjzjcnzf" async></script>

You can do a plain ol' Grep

<script type="text/javascript" src="https://asciinema.org/a/cydb2wwdppa2pc22lvskewd9h.js" id="asciicast-cydb2wwdppa2pc22lvskewd9h" async></script>
