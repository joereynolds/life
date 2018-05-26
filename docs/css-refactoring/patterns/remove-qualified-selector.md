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
