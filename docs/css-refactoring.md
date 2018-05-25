## Some best practices

## Tools

mort

## Patterns

### Move up hierarchy

Quite a few (link to properties) CSS properties cascade down.
You should place these as high up the tree as you can.

### Extract to class

If a rule is repeated all over the place, extract it to a class and use that instead

### Reduce specificity

### Extract inline style

Inline styles are generally discouraged. Put these in a stylesheet.

### Remove element from selector

A selector like a.nav-link is almost always useless. Just do `.nav-link`. I have never once seen this benefit anything.

### Generalise the id selector

A selector like `.my-column div #item` is probably okay to
refactor down to `#item`. The reason being an id should only be
used once...

### Inline-block to Flex
If you're using inline-block to display a bunch of things in a row,
use flex, it's much more suited to the task.

### Dead code

#### Duplicate declarations

#### Overwritten styles


