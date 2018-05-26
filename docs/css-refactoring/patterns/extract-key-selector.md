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

