# Inspectee

At the moment it's PHP only as I use it a lot.

For example if we have the text

`self::NEW_RESULT_ID`

and our cursor is on ANY of those letters, a completion box should pop up above it showing the value of it.

It should be able to work across multiple files where it can. For instance, if we're on a variable and me <C-]> for it and there's only one result, then it's (mostly) safe to assume we can use that value.

(Maybe if there are multiple matches, display them all?)

## Rambles

- We need an array of words to not match on, i.e. if the word is "array", "class", "function" etc... we don't want to bother trying to look up their value
- It should automatically pop up with the value but there also be an option to have it triggered by a keypress instead, the key should be configurable.


