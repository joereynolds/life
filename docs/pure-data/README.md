Rambles about my patches and my journey of pure data.

## Resources

- [pure data floss](http://write.flossmanuals.net/pure-data/introduction2/)
- [pd-tutorial](http://www.pd-tutorial.com/english/index.html)

## Recording the videos

I use `simplescreenrecorder` for recording the videos. Set its output to JACK
(to match puredata's). It works fine with i3wm.  On top of this, I have to
upload the video to google drive so I can download it to my phone (not joking).

The video is recorded by opening up `simplescreenrecorder` going through all of
the menus, and then there's a recording hotkey (ctrl-r) you can press to start
recording. I fullscreen the visualiser and then press this when ready.

## Directory structure

Each patch has its own directory. Within that are the following:

- `ideas.md` - Brainstorming the patch
- `README.md` - The write-up of the patch once the patch has been created
- 'nth-patch.pd' - Where n is first, second, third etc... This is the patch
  itself.

