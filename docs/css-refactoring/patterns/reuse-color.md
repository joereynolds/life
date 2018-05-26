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
