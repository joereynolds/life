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

