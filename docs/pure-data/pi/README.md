# Pi

Pi is based on pitch classes, musical set theory, and the first 400~ digits of
pi.

The 400 digits are split into 8 parts, 0-49, 50-100 etc...

Each 'part' contains 50 pieces of pi (lol). For example, the first 'part'
contains the first 50 (0-49) digits of pi.

For every part there is an oscillator. The oscillator takes the numbers in its
part (if it were the first oscillator the numbers would be 3141592...) and
outputs each one as a semitone distance from our chosen root note of C. So if
it's currently playing 1, it's playing Db (Because Db is 1 semitone from C). If
it were 3, it'd be Eb (3 semitones). If I'm explaining it badly, look up pitch
classes because that's what this is.

Each note is 'slid' up to ('glissando' if you want to be fancy) and then once it's
been sliding to that note for 60 seconds, it goes to the next one. Since each
oscillator will be playing 50 notes, this means the song will run for 50
minutes. You're welcome.

Some things to note:

- The numbers in pi can only really go up to 9. If you were given this 3141592,
  you have no idea where the next number is, so I opted to clamp it down to <
  10. That means that 3141592 becomes 7 separate numbers - {3, 1, 4, 1, 5, 9, 2}

- The numbers going up to 9 means our note range is restricted from C to A (9
  semitones above C). With some other data we could get a greater range if we
  wanted.

- The numbers themselves are useless without conversion so we add 60 (60 is
  middle C in MIDI) to them so that we can use them as MIDI notes. From there,
  they're converted from MIDI into audible frequencies. So altogether the
  conversion is: 
      pi digit > MIDI > frequency

I didn't actually learn much Pure Data on this one, apart from when it clicked
with how to make notes slide into each other (hint, `line`). Still, the
self-indulgence is real and there are some bits which sound nice on my ear. This
came out of boredom and I guess in my subconscious I probably stole inspiration
from Acreil.

Full write-up coming at some point. It'll be on my site with the others
(joereynoldsaudio.com)
