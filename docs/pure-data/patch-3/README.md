Third patch done (It was actually the fourth, the third was too bad to show).

Some new stuff to me on this one, I've learnt of a better way of firing events
off using `select~` as opposed to weird `t` hacks with `*~`.

We've also got some subtle LFO's going on for the bass and the 'kick drum'.
The kick and bass both get fired simultaneously so they're always in sync.

The melodies are based off of a mM7 (minor major 7) chord (I like the dissonance
between the root and major7, tasty.) With a p5 droning on in the background, and
we also have a snare hitting off at random points with a slightly delayed one
being sent to the right channel.

Next time maybe some arpeggiators, panning and reusable instruments instead of
recreating things with every patch, it's getting tedious.


Some stuff so far:

- Finding out how to have multiple signals go to the output without affecting/distorting one another?
- For the first time I got bitten by the ordering of inlets, it was a pain. I
  would've though 1 * n and n * 1 are exactly the same but not in puredata land.
  CHEERS LA.

- Worked a bit on some subpatches too. I've seen a few places where they've made
  a subpatch and parameterised the entire thing which is pretty neat. It
  definitely helps clear up the main pure-data patch. Much Cleaner

Next time I might work on a subpatch/instrument (Not sure of the difference) to
do arpeggiation, I'm thinking it's quite simple but I'm probably being naive.
