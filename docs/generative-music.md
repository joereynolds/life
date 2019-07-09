# Generative + Algorithmic Music

Recently I've been interested in it. Here are some ramblings.

## Software

- [Orca](https://github.com/hundredrabbits/Orca) paired with [Pilot](https://github.com/hundredrabbits/pilot) provides a lightweight environment to create.
- [Overtone]() a live coding environment built on lisp. I found it a bit heavy and convoluted (though I can see its power).
- [Reaktor]() I haven't used this in about 6 years but last time I did, it was pretty mind blowing. The only issue is the price.
- [Puredata](), I've yet to try this but it's on my radar.
- [Audulus](), this looks to be Mac only but it's worth listing anyway.
- [Tone.js](), Looks like the JS equivalent of overtone
- [SoX](), A command line audio manipulation tool
- [Supercollider](), A high level programming interface, similar to overtone I
  think?
- [vcvrack](), An open source software based modular synthesiser

## Hardware

- Organelle - Works directly with pure data
- Monome norms
- Monome grid
- Axoloti core

## Artists

 - [acreil](https://acreil.bandcamp.com/album/aleatoric-aubades) - Write some generative music in Puredata
 - Autechre - Use max/msp in a lot of their music

## Problems and Troubleshooting

- Make sure your user is in the `audio` group if you're using `Jack` for the
  audio. (`cat /etc/group`)

- For vcvrack you'll need to manually connect vcv to the system through the
  connections menu in qjackctl

- If you want to use a screen recorder, `simplescreenrecorder` is a good bet. It
  works with JACK audio and with `i3wm`. Remember to select JACK as the audio
  output though otherwise nothing will come through.
