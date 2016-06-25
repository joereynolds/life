# What is K/Kona

K is an array programming language much like J, APL, A and others.
It is used in the finance sector with KDB (Its database system). 
Kona, is the open source equivalent of this, Kona strives to be a truthful representation of K rather than an extension or competitor.

From now on I'll be talking about Kona, but all the examples that work in Kona, also work in K.

On to the code!


## A whirlwind tour

Nearly everything in Kona is an array. Let's define a variable `numbers` that holds the numbers 0 through 9

`numbers: 0 1 2 3 4 5 6 7 8 9`

There is a quicker way with the monadic(takes one argument) enumerate(!) function.

`numbers: !10`

Let's reverse that list

`|numbers`
  `9 8 7 6 5 4 3 2 1 0`

Or

`|!10`
  `9 8 7 6 5 4 3 2 1 0`

Most functions change their meaning depending on the amount of arguments given.
For instance, that enumerate function above is a modulus operator when given two arguments.

`5 ! 2`
  `1`

(Most functions are monadic and dyadic, i.e. they can take 1 or 2 arguments, but some can take up to 4 different arguments. It can actually get even more complex, some functions operate differently depending on if they're arguments are atoms or lists.)

Let's take our first steps to programmerhood

`greeting: "Hello, world!"`

How long is this string?
`#greeting`
`  13`

What's the first letter?
`greeting[0]`
`  "H"`

Or the more idiomatic 'K' way, using the 'first' monadic function
`*greeting`
`  "H"`

What's the last letter?
`*|greeting`
`  "!"`

Read that as, take the first(*) letter from the reversed(|) string.

Hide dupes
`? greeting`
  `"Helo, wrd!"`

More index trickery
`greeting[7 8 7]`
  `"wow"`

That gets the 7th index of the string, then the 8th, and then the 7th again.
I can't really stress how flexible and expressive it is.

Let's generate some random numbers. How about 20 numbers in the range 0-99?
`random: 20 ? 100`
`random`
`  30 25 69 86 66 79 47 96 52 21 31 54 96 89 22 76 91 36 78 70`

Which ones are greater than 50?
`random > 50`
`  0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 1 1`

Hmm, that's not very helpful...
I need the indices of those.
`& random > 50`
  `3 4 5 7 8 11 12 13 15 16 18 19`

Nice, now I can finally get them!
`random[& random > 50]`
  `69 86 66 79 96 52 54 96 89 76 91 78 70`

Hmm, too many, I only need 5 
`5 # random[& random > 50]`
  `69 86 66 79 96`

Much better.

Let's take a step back and breathe...
Done? Okay

Dictionaries:

    
    dict[`a]: "shake"
    dict[`b]: "your"
    dict[`c]: "booty"
    


    dict[`a `a `a]
      ("shake"
      "shake"
      "shake")
    dict[`a `a `a]
      ("shake"
      "shake"
      "shake")
    dict[`a `b `c]
      ("shake"
      "your"
      "booty")
    dict[`a `b `c]
      ("shake"
      "your"
      "booty")


Functions:
`addOne: {x + 1}`
`addOne 6`
  `7`
  
With multiple arguments:
`addBoth: {[x;y] x + y}`
`addBoth[5;6]`
  `11`
  
Works on lists too
`addBoth[5 12; 2 2]`
  `7 14`
  
More addition:
`5 + 5`
  `10`

`5 + 10 20 30`
  `15 25 35`

`5 6 7 + 10 20 30`
  `15 26 37`

Let's do some Euler (spoilers ahead for problem 1)
"If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000."

Gather the numbers
`n: !1000`

Which ones are multiples of 5?
`n[& (n!5) = 0]`

How about 3?
`n[& (n!3) = 0]`

Both?
`n[& ((n!3) = 0) | ((n!5) = 0)]`

Store it
`multiples: n[& ((n!3) = 0) | ((n!5) = 0)]`

Sum it
`+/ multiples`

Voila
`multiples`
`  233168`


# Conclusion

Looking past the terse syntax of Kona, I find it to be amazingly expressive and makes me think much more about the actual problem at hand.

Everything is composable and polymorphic, it all 'just works'.

If you want to get started writing in Kona, then head over to the Github page and clone the repo.

# Reference

The best documentation I've found for K/Kona is the K User and Reference Manual.
They're very well written and thoroughly documented.

http://web.archive.org/web/20041022042401/http://www.kx.com/technical/documents/kusrlite.pdf

http://web.archive.org/web/20050504070651/http://www.kx.com/technical/documents/kreflite.pdf

There's also Kona's wiki for a more casual read

https://github.com/kevinlawler/kona/wiki
