# Inspectee


Inspectee finds the value of the variable that your cursor is currently on.
Press <leader>in to see it in action.


At the moment it's PHP only as I use it a lot.

For example if we have the text

`self::NEW_RESULT_ID`

and our cursor is on ANY of those letters, a completion box should pop up above it showing the value of it.
(Note that we should strip off the 'self::' part before we try and find the value. Same with 'static::')

It should be able to work across multiple files where it can. For instance, if we're on a variable and we <C-]> for it and there's only one result, then it's (mostly) safe to assume we can use that value.


## Rambles

- The user should have to press a key to bring up the popup. This saves us having to create an array of words to ignore and will make everything much faster. Not only that, but it saves us having to detect when the most convenient place to popup is, i.e. if they're cursor is in a string do we still do it? Exactly...
- Make <leader>in bring up the popup menu 
- If there are multiple matches, display them all
- For multiple matches to work, we'll need to add the requirement of a tags file.
