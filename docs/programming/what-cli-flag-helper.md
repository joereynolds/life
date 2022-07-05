# what

`what` is a program that you pipe to to get information on a flag you don't
understand.

 A real world example of this is when I did `rg credentials -g '!public'`. I
 didn't know what the `-g` flag did (though could make an educated guess). This
 meant I had to `man rg` and grep/scroll through it to find my answer.
 
 I think it'd be a lot easier just to pipe the command to a program and that
 program will tell you about the flag specified.

 i.e.

 ```
 rg something -g '!tests' | what
 ```

 would spit out

 ```
 -g, --glob <GLOB>...                         
        Include or exclude files and directories for searching that match the given
        glob. This always overrides any other ignore logic. Multiple glob flags may be
        ... (outnot not actually truncated, just here for example's sake)
 ```

## flow

- User types `rg -g | what`
- `what` then does `man rg` and searches and brings back `-g` flag docs

## considerations

- First we look for `--help`, then if not found, `man`, and finally `info`
- If we pass a `--verbose|-v` flag in, it will go straight to looking in `man`
  and falling back to `--help` if not found
- It should ignore any extra things in the comma. I.e. `rg -g -i 'some stuff' more`
  will still only be parsed for `-g` and `-i`
- Do as shell script for now. Change to lua/python in future
- Would be good if it could support multiple flags. I.e. `rg -g -i | what`
  would bring back help for both the `-g` and the `-i` flag
- Should also work for `--long-options`
- Needs to be case sensitive (`-v` and `-V` are not the same)
- Suppress output from the command itself. i.e. `rg -g | what`. We only care
  about `what`'s output, not `rg`s. Send it to `/dev/null` or wherever
- No subcommand support for now
