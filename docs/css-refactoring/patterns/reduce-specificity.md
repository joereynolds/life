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

