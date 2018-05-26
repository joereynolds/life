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
