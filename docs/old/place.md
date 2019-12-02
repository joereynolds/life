# What is it (to become)?

vim place will append your input where you tell it to.

The default key is `ga` followed by a motion followed by your input.

Examples:

`|` denotes cursor position

```
function(na|me, $age)
gab$
function($name, $age)

$thi|s->doSomeStuff = 5
ga$;
$this->doSomeStuff = 5;

x = 5
ga^var
var x = 5
```

# Specs

- Prefix key should be configurable. `ga` is quite verbose when actually used i.e. `gab$this->`.
  This should be a global option exposed for the user to change
- Should be repeatable with the dot command
- Cursor shouldn't move
- It'd be nice to highlight the area you're about to affect
- It should support all motions (or at least the majority)
- Tests with Vader

# Questions

- Should it be single characters use?
  i.e. instead of letting a user enter anything after the motion, just be one character?
  The benefits of this are we can perform the operation as soon as the key after the motion
  has been pressed. Otherwise we have to wait for them to hit `<cr>` since we don't know
  how long the input is.
  - It probably shouldn't be single character. There are many times where I'd like to do
    `ga^var` or `gab$this->` for example. We could add a configurable option in to make
    it single character for those that want it to be extra lightweight.

- There are a few small problems that are apparent.
  Doing `ga$;`. `$` is the end of the line but if we go into `i`nsert we'll be appending
  not at the end. We should probably use `a`. However this won't work on everything.
  If we do `gab$` we probably want to do `i` not `a`. Figure this out.
