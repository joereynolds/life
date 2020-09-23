A language agnostic linter. Like Assistant but better. That one is baked into
VSCode instead of being an executable

https://github.com/tomaszs/Assistant

(Note, the rest is mostly taken from Assistant with some of my own ideas thrown
in too)

## How's it work?

Rules lives in ~/.config/agnostic-linter/rules/.

In here you have a **file per file extension**. The name of the file must match the
extension of the file you are operating on. I.e. `lua.json` will lint `.lua`
files, `php.json` will lint `.php` files etc...

A special case exists where you want to apply it for all file types (trailing
whitespace would be one such lint that you'd want on most files). In these cases
the `__all.json` file will apply to everything.

If you want the same rules to be applied to multiple filetypes (maybe your
Typescript isn't that different from your Javascript) then simply include both
extensions in the filename ala `ts.js.json`.

Our structure might then look like this

```
~/.config
  /agnostic-linter
    /rules
      php.json
      js.jsx.ts.json
      sql.json
```

Within your `.json` you will have something like the following:

```
{
    "pattern": "(join)(\\s*\\w*)(\\s*\\w*\\s*)(and)",
    "message": "An ON keyword must follow a join condition",
}
```

You are free to create as many patterns as you want and they allow for regular
expressions.
