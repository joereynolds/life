# Shell Test

Shell Test is a testing tool for functional (I think... so much jargon) tests of a program.

It closely follows the idea of doctest but instead of interactive python sessions,
they are shell sessions.

## Examples

You put the shell session as a docstring in your test.
The test will pass if the shell runs exactly as your test looks

```
def test_it_can_do_lots_of_things():
    """
    echo 45
    45
    
    pwd
    /home/joe/some/dir
    """
```

If any of that fails, it will fail the entire test. This saves you manually testing a console application.


## Idea dump

    


