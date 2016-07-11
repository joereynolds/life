### Worth doing?

There are several testing libraries for scheme already, is this worth doing?

The best looking ones are the eggs

- test (probably just worth using this from the looks of it)
- missbehave

### Syntax examples

These functions would be ran as they are prefixed with 'test'

```
;code here
```

### Annotations

Annotations are written in a scheme comment a line above the function

#### Ignore

Skips the test
```
;[ignore]
(define test-it-does-something
  (lambda () ...
   ...))

```

