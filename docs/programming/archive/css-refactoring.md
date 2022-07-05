# TOC

- Move up hierarchy
- Extract to class
- Reduce specificity
- Extract inline style
- Remove qualified selector
- Convert inline-block to flex
- Reuse color
- Extract Key Selector
- Reduce DOM dependency
- Generalise id selector

## Patterns

### Move up hierarchy

Place cascading CSS properties further up the tree.

From:
```
.content p {
  color: #000;
}

.content div {
  color: #000;
}
```

To:
```
.content {
  color: #000
}
```

Why?

- If you utilise the cascade you will find yourself having to override fewer styles.
- Reduces the amount of code duplication
- Encourages modularity and portability

### Extract to class

If a rule is repeated, extract it to a class and use that instead.

From:
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

If you are targeting an element, do it in as few selectors as possible.

From:
```
.content ul li a {
  padding: 5px;
  color: #eee
}
```

To
```
.content a {
  padding: 5px;
  color: #eee;
}
```

Why?

- Very specific selectors are slow as they have to parse the DOM more granularly.
- specific selectors are harder to override and decrease modularity.

### Extract inline style

Inline styles are generally discouraged. Put these in a stylesheet.

From:
```
<table class="content" style="padding: 10px; background-color: #ccc">
...
</table>
```

To:
```
.content {
  padding: 10px;
  background-color: #ccc;
}
```

Why?

- Inline styling removes any reusability and also trick developers. Most people assume styles are in stylesheets.

### Remove qualified selector

A selector like a.nav-link is useless (unless intentional).

From:
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

- Decreases specificity therefore making it easier to override.
- The selector is now applicable to more than just `<a>` tags.

### Convert inline-block to flex

If you're using inline-block to layout some columns, use something better suited, like flex!

From:
```
.columns {}

.column {
  width: 33.3%;
  display: inline-block;
}
```

To:
```
.columns {
  display: flex;
}

.column {
  flex: 1;
}
```

Why?

- Flex auto adjusts to any amount of columns.
- Flex is more (flex)ible, verticle layouts, rows, columns etc...

### Reuse color

The `currentColor` properties refers to the specified `color` in that style.

From:
```
p {
  color: green;
  border: 1px solid green;
  padding: 5px;
}
```

To:
```
p {
  color: green;
  border: 1px solid currentColor;
  padding: 5px;
}
```

Why?

currentColor enables easier refactoring.
If borders/box shadows etc... are meant to be tied to the `color`, use `currentColor`.

### Extract Key Selector
(NOTE: A key selector is the element being styled in the css, usually it is the last element in the chain of a selector)

Extract each repeated use of a key selector into its own class.

From:
```
.footer .btn,
.header .btn {
  padding: 5px;
}

.content .btn {
  padding: 10px;
}
```

To:
```
.btn {
  padding: 5px;
}

.btn--large {
  padding: 10px;
}
```

Why?

Extracting a key selector's style to its own class encourages modularity.
`.btn--large` can be used anywhere, whereas `.content .btn` had to be inside `.content`.

### Reduce DOM dependency

Remove descendant selectors where they are unneccesary.

From:

```
ul > li > a {
  color: blue;
}
```

To:
```
ul a {
  color: blue
}
```

Why?

If the HTML changes, your CSS is now broken, you probably didn't want that to happen.

### Generalise id selector

Remove any selectors before the id.

From:
```
.my-column #my-item {
  padding: 5px;
}
```

To:
```
#my-item {
  padding: 5px;
}
```

Why?

An id is unique and does not need extra specificity.

## Dead CSS 

### Vim 

#### Regex patterns 

##### Find empty selectors  

##### Find duplicated rules

##### Find 0px|em units

##### Find comments
