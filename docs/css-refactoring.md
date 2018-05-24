# TOC

1. Move up hierarchy
2. Extract to class
3. Reduce specificity
4. Extract inline style
5. Remove element from selector
6. Convert inline-block to flex


## Some best practices

## Tools

mort - helps find dead css, written by yours truly

## Patterns

### Move up hierarchy

Quite a few (link to properties) CSS properties cascade down.
You should place these as high up the tree as you can.

From this:
```
.content p {
  color: #000;
}

.content div {
  color: #000;
}

```

To this
```
.content {
  color: #000
}
```

Why?
- If you utilise the cascade you will find yourself having to override styles less.
- Reduces the amount of code duplication
- Encourages modularity and portability

### Extract to class

If a rule is repeated all over the place, extract it to a class and use that instead

Refactor this to a class and use the class. The id can be kept (if we have to) and just specify
a different background image.

From
```
#system-admin-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/admin_export.png' );
}

#system-thor-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/thor_export.png' );
}

#system-toms-icon
{
	display:block;
	width:160px;
	height:160px;
	background-image:url( '/static/images/toms_export.png' );
}
```

To
```
.system-icon {
	display:block;
	width:160px;
	height:160px;
}

#system-admin-icon {
	background-image:url( '/static/images/admin_export.png' );
}

#system-thor-icon {
	background-image:url( '/static/images/thor_export.png' );
}

#system-toms-icon {
	background-image:url( '/static/images/toms_export.png' );
}
```

Why?

Classes encourage reusability and modularity.

### Reduce specificity

If you are targeting an element, try and do it in as few selectors as possible.

From
```
.content ul li a {
  padding: 5px;
  color: #eee
}
```

To
```
.content a{
  padding: 5px;
  color: #eee;
}
```

Why?

- Very specific selectors are slow as they have to parse the DOM more granularly.
- specific selectors are harder to override and decrease modularity.

### Extract inline style

Inline styles are generally discouraged. Put these in a stylesheet.

From

```
<table class="content" style="padding: 10px; background-color: #ccc">
...
</table>

```

To

```
.content {
  padding: 10px;
  background-color: #ccc;
}
```

Why?

Inline styling removes any reusability and also tricks devs. Most people
assume styles are in stylesheets.

### Remove element from selector

A selector like a.nav-link is almost always useless. Just do `.nav-link`. I have never once seen this benefit anything.

From
```
a.nav-link {
  color: red;
}
```

To
```
.nav-link {
  color: red
}
```

Why?

You are doing two things here.
  1. increasing specificity therefore making it harder to override
  2. restricting your style only to `<a>` tags. If that is intentional, I would create a separate class instead.

### Convert inline-block to flex

If you're using inline-block to layout some columns, use something better suited, like flex!

From
```

```

To
```

```

Why?

Flex auto adjusts to the correct width, this is really great for column layouts.

