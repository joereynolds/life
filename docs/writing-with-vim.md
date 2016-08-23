# Writing with ViM

Let's touch on some of the ways you can write painlessly in ViM.
There are a few plugins I use to get a more distraction-free writing environment, let's go through them.


--Put a gif here--

## ViM Plugins

### Colours

These first 2 color plugins are nice to have but are 100% optional.

#### vim-colorschemes

A massive list of colorschemes

#### vim-colorstepper

Allows you to cycle through the ViM colorschemes at the press of a key.
Usually I remove these 2 plugins once I've found a colorscheme that I enjoy using.

### Goyo

I haven't delved very far into Goyo at all, basically it strips out all the 'noise' from Vim,
centers the text, and adds a hefty margin around it all... very hipster.

That being said, it's much nicer than writing in vanilla ViM.

### VimWiki

VimWiki is an add-on that supports hyperlinking to other files,
some nice defaults when working with Markdown and/or MediaWiki formats and lots of other things that I've never touched.

One of the first things I do when I get VimWiki is to make sure that it uses the markdown syntax by default as I'm not a huge fan of the mediawiki syntax.
Just add this to your `.vimrc` and you should be good to go.
`let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]`

The other thing I like to do is to make sure that when we open a '.md' file, we also start up `Goyo` on startup.
`au VimEnter *.md :Goyo "use goyo on md files.`

Oh and let's not forget a nice colorscheme too. Ordinarily I like light themes (fight me) but I prefer dark for writing.
`au VimEnter *.md colorscheme seoul256 "Different colorscheme when writing`

## Version controlling

Once the above is done, you're pretty much ready to start writing.
I make sure that all my rambles are in a git repository somewhere for easy access from any machine.

## The Final step

Finally, if I've ever written an article that I deem good enough for actual reading,
I put it on my site which uses Kirby CMS.
Kirby CMS conveniently is based on markdown so in these cases it's just a matter of copying the file over to my server and boom,
it's on my site. I'll probably look at automating this process soon.

## Conclusion

And that's my fairly simple setup for writing. If anyone knows of any revolutionary tools that I'm missing out on, then feel free to let me know!

:wq
