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

