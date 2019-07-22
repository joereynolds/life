# Audio

# Table of Contents

- Formulas
    - Calculating overtones
    - Midi to frequency conversion
- Envelopes
- Filters
- Panning
- Waves
- Noise
- Software
    - Visualisation

- Questions

## Formulas

### Calculating overtones

To calculate the nth harmonic, you multiply the fundamental frequency by n.
i.e.

```
1st = 440
2nd = 880 (440 * 2)
3rd = 1320 (440 *3)
etc...
```

### Midi to frequency conversion

Python implementation:
```
def midi_to_frequency(midi_note):
    frequency = math.pow(2, (midi_note - 69) / 12) * 440
    return frequency
```


## Envelopes

(A)ttack - 
(D)ecay - 
(S)ustain - 
(R)elease - 

## Filters

Acts on a signal and returns a new signal.

Amplitude response:

Impulse response:

Different types

### 1. Low Pass Filter

Leaves low frequencies untouched but rejects high frequencies.

## Panning

There are 3 popular ways to address panning

### 1. Linear panning

This is the most simple in implementation, both sides are always in proportion.
An increase in one side will require a decrease in another.

This method also has a flaw in the way it handles loudness. For example, with
this method, if we send 0.5 to both left and right, the result is quieter than
one speaker with an amplitude of 1. This seems obvious, but you do not expect a
decrease in volume when you pan something.

### 2. Square root panning

This method resolves the issues around the linear method of panning but with
added complexity.

### 3. Cosine panning


## Waves

### Sine

The most pure, only has a fundamental frequency, no extra harmonics.

## Noise

### White 

A random signal where all frequencies are equal intensity.

### Pink

Similar to white noise but power density falls off at 3db per octave leaving it
bass-heavy.

## Software

### Visualisation

- Sonic Visualiser - Great for analysis of audio
- ProjectM - An Audio visualiser (I had to install from source using `./configure  --enable-jack --enable-qt --enable-gles `)

## Questions?

- What's the difference between a partial and a harmonic?
    - A partial includes the fundamental and all subsequent harmonics, a
      harmonic is the specific overtone.
      [ref](https://en.wikipedia.org/wiki/Overtone)
