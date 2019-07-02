Third patch done (It was actually the fourth, the third was too ambitious so I
never finished it). It's bass heavy so apologies to pretty much everyone
listening on a phone who's only going to hear a snare drum.

Some new stuff to me on this one, I've learnt of a better way of firing events
off using `select~` as opposed to weird `t` hacks with `*~`.

There's also some subtle LFO's going on for the bass and the kick drum.
The kick and bass both get fired simultaneously so they're always in sync.

The kick is a sine wave with fast attack/decay and some white noise
on top to give it some click.

The melodies are based off of a mM7 (minor major 7) chord (I like the dissonance
between the root and major7, tasty.) with a perfect fifth drone based around C in the background and
we also have a snare hitting off at random points with a slightly delayed one
being sent to the right channel.

Next time maybe some arpeggiators, panning and reusable instruments instead of
recreating things with every patch, it's getting tedious.

Output was normalized manually with ffmpeg (life changing program) using the
command below:

ffmpeg -i patch_3.mkv -af "volume=24dB" output.mkv
