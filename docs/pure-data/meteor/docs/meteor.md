# Meteor

## How does it work?

### Data

#### 1.Data cleaning

Meteorite landings were obtained from [here](https://datarepository.wolframcloud.com/resources/Meteorite-Landings).

Once downloaded, The coordinate data for all meteorite landings in the 1980's were pruned out (other data wasn't relevant).

Pruning was done manually via vim using `:%s` and `:g/search-term/d`.

#### 2.Normalisation

Once cleaned, the data was good to go, but the numbers were not. Here's a small sampling of
what we've got to work with (You can see the complete list in
[here](./meteors-1980-notes.csv)).

```
37.1
15.
24.8
34.8
31.25
```

As you can see, there's not much variation here and we're interested in numbers
spanning from 20 all the way up to 20,000 so we normalise it with [this normalisation script](../code/normalise.py) and arrive at:

```

```

Once normalised, we have a fair amount of duplicates, so we remove them too (I
used vim for this but you could just as easily do `sort -u`).

This gives us 50 unique frequencies to play around with.

### Pure Data

#### Abstractions

`blip` - 

`panner` - A simple linear panner

### Visualisation

Visuals are made using projectM. Nothing special here, it uses a preset called
rogue-wave which visually, matched what I had in my head.

# Ideas

- Make the notes 


