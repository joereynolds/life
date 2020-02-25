# Note taking thoughts

These are my findings on what has worked well for me so far. I always come back
to this format.

- Notes should live under a single directory (`~/notes` is my preference) with
  as many child directories as is neccesary ₁

- Notes should be in markdown format. This allows them to be readable in the
  terminal but also rendered after the fact if desired. I've used pandoc for
  this in the past

- Notes should be as agnostic possible. There should be no reliance on a
  certain file format or program to view your notes

- Notes should have descriptive file names. `help.md` is not descriptive.
  `debugging-twig-templates.md` is

- Notes should please the eye. In my case I follow these rules:
    - Text width of 80 (formatting in vim with `gq` where neccesary)
    - One blank line after any heading
    - One blank line after a section (paragraph, codeblock etc...)
    - Indentation of 4 spaces where indentation is required

- Notes should be archived when no longer relevant to avoid them cluttering up
  your searches. I usually have an `old` directory that gets added to every now
  and then

- If you want to describe a directory, add a `README.md` to that directory
  detailing anything you find relevant


## Vim

My notes are quite tightly tied to vim. Here's what I do.

Integrating with vim allows me a smoother workflow. I haven't really got much
but here it is.

### Creating a new note

```
command! -nargs=1 CreateNote :call NewNote("<args>")

function! NewNote(notename)
    let l:notes_dir = "/home/joe/notes/"
    let l:filename = l:notes_dir . strftime("%Y-%m-%d") . "-" . a:notename . ".md"

    let l:choice = confirm("Create " . l:filename . " ?", "&Yes\n&No")

    if choice == 1 
        execute 'edit' . l:filename
    endif
endfunction
```


### Listing all files with ]n

This relies on vim-picker but fzf or anything else will work just as well.  I
like to think of the `n` in the mapping as standing for notes.

```
nmap ]n :call picker#File('fd . ~/notes', 'tabe')<cr>
```

### Searching for some text

```
set grepprg=rg\ --vimgrep\ --ignore-case
command! -nargs=+ F execute 'silent grep!' <q-args> | cw | redraw!
command! -nargs=1 NoteGrep :F "<args>" ~/notes
nnoremap ]g :NoteGrep 
```

### Creating an index file for your notes

This is a simple case of (in insert mode)

```
<c-r>=glob("*")
```

## References and footnotes


₁ (sample output)
```
    .
    ├── 1223-populate-cards-for-instance.md
    ├── registering-a-twig-extension.md
    ├── tickets
    │   ├── 1169-add-name-to-the-data-displayed-in-the-table.md
    │   └── 1170-add-search-by-policy-id.md
    └── twig.md
```
