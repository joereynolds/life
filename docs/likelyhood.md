# Likelyhood

## Finding similar (or identical) selectors

Given these rules
```
#login-box
{
	width:340px;
	margin: 15% auto auto;
	font-size:14px;
}

#reset-box
{
	width:300px;
	height:100px;
	margin: 15% auto auto;
	font-size:12px;
}

etc...
````

We can find similarities by...

- Grabbing the name of the selector (for reference later on)
- Getting the rules for that selector (everything inside {)
- Compute an hash (or something similar) for that selector  
- Move onto the next selector and do the same

Any hashes that have an exact match are duplicate selectors.
We'll need an algorithm to calculate similar strings.

This would probably take a very long time to compute, maybe just do identical matches for now.
