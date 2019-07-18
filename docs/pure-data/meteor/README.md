# Meteor

Meteor is a song in Pure Data constructed from the coordinates of meteorite
landings in the 1980's.

After normalising and cleaning the data, there were 50 entries for 1980. Each
meteorite landing had a coordinate associated with it. This coordinate is
converted to a frequency and played over a period of time.

There are 5 voices going off at any one time. Since there are 50 entries, each
voice can have an entry.

Oscillator 1 plays every entry that is divisble by 1.
Oscillator 2 plays every entry that is divisble by 2.
Oscillator 3 plays every entry that is divisble by 3.
Oscillator 4 plays every entry that is divisble by 4.
Oscillator 5 plays every entry that is divisble by 5.

Even though the focus for this wasn't to learn pure data (like the other patches), a few things were still learnt.

1) A few abstractions were made:

`panner` is responsible for panning and uses simple linear panning.

`blip` is the glockenspiel-like chime that you can hear. This is the fundamental
frequency and the 9th and 25th partials (just like how a triangle wave starts to
form). It has a quick attack and a slow decay.

2) The use of `expr` and `spigot`

Conditional logic was used to determine which oscillator gets to play what.

`expr` does the bulk of the work while `spigot` opens and closes the gates.

For a full write-up, see
[here](https://github.com/joereynolds/life/docs/pure-data/meteors/docs/meteor.md)
