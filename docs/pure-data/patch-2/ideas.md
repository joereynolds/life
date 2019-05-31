Patch 2 should be based around drums and maybe some basic modulation

- Get two oscillators going around 440 and 441, multiply them together.
- Bass drum should be an enveloped, low passed sine way maybe with a sawtooth too.
- Snare should be filtered white noise.
- Hi hat should be high pass filtered white noise with a small bit of tail.
- Visually, it might be cool to have an array per instrument (one for osc, one
  for kick etc...) for viewers to not get bored.



  ## Rough diagram

```
  Kick Drum
  [phasor~ 220]   (300)
     |              |
     | --------------
     |/
  [lop~]

  Snare
  [noise~]    (300)
     |          |
     | ----------
     |/
  [hip~]

  hi-hat
  [noise~]    (1000)
     |          |
     | ----------
     |/
  [hip~]

  Modulating Oscillators
  [osc~ 440]  [osc~ 441]
      |         |
      | ---------
      |/
  [*~ 0.3]
  
  ```



