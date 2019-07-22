# Meteor

Meteor is a song in Pure Data constructed from the coordinates of meteorite
landings in the 1980's.

After normalising and cleaning the data, there were 50 entries for 1980. Each
meteorite landing had a coordinate associated with it. This coordinate is
converted to a frequency and played over a period of time.

There are 5 voices going off at any one time. Since there are 50 entries, each
voice can have an entry and repeat 10 times before the song is over.

Underneath the voices is a constant 75hz drone being LFO'd to the BPM of the
song.

The focus for this wasn't to learn Pure Data (like the other patches), even so,
things were learnt.

1) A few abstractions were made:

`panner` is responsible for panning and uses simple linear panning.

`blip` is the glockenspiel-like chime that you can hear. This is the fundamental
frequency coupled with the 9th and 25th partials (just like how a triangle wave
starts to form). It has a quick attack and a slow decay.

2) The use of `expr` and `spigot`

`expr` did the bulk of the logic before I simplified it down to ==, an equality
check.

`spigot` allows a value through if a condition is met. This is used to determine
which oscillator should play what frequency and when.

3) Reading data from files

Reading a text file is surprisingly easy in Pure Data. All of the audio for this
song is coming from text files, decoupling the logic from the data.

Visuals for this were done with projectM and the rogue-wave preset. It matched
what was in my head.

For a full write-up, see
[here](https://github.com/joereynolds/life/docs/pure-data/meteors/docs/meteor.md)

Possible visuals (Projectm)
- rogue wave
