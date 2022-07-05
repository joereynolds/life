# Meteor

Meteor is a song in Pure Data constructed from the coordinates of meteorite
landings in the 1980's.

After normalising and cleaning the data, there were 50 entries for 1980. Each
meteorite landing has a coordinate associated with it. This coordinate is
converted to a frequency and played over a period of time. These frequencies are
stored outside of Pure Data in text files helping decouple the logic from the
data.

There are 5 voices going off at any one time. Since there are 50 entries, each
voice can have an entry and repeat 10 times before the song is over.

Underneath the voices is a constant 75hz drone being LFO'd to the BPM of the
song. Coupled with this is a wind-like noise. The wind is a sine wave at 440hz
being modulated by low-passed noise.

The focus for this wasn't to learn Pure Data (like the other patches), but
ironically that's what happened the most.

`blip` is the glockenspiel-like chime that you can hear. This is the fundamental
frequency coupled with the 9th and 25th partials (just like how a triangle wave
starts to form). It has a quick attack and a slow decay.

`expr` did the bulk of the logic before I simplified it down to ==, an equality
check.

`panner` is responsible for panning and uses simple linear panning.

`pd wind` is the wind-like noise you can hear in the background. 

`spigot` allows a value through if a condition is met. This is used to determine
which oscillator should play what frequency and when.

The biggest godsend to this patch are learning about `send~`, `receive~`,
`throw~`, and `catch~`. LOOK HOW CLEAN THE PATCH IS.  These objects allow you to
do wireless connections by creating variables that can be read from anywhere
within the scope of a pure data patch. It feels slightly hacky but it's better
than the mess of wires that were there before.

Visuals for this were done with projectM and the rogue-wave preset. It matched
what was in my head.

For a full write-up, see
[here](https://github.com/joereynolds/life/docs/pure-data/meteors/docs/meteor.md)
