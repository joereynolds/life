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
