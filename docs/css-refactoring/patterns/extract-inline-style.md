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

