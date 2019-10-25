- Should be able to hook into vim (not sure how that's done)
- Follow these
    - http://community.schemewiki.org/?scheme-style
    - http://community.schemewiki.org/?variable-naming-convention
    - https://google.github.io/styleguide/lispguide.xml
    - https://github.com/bbatsov/emacs-lisp-style-guide
    - http://people.ace.ed.ac.uk/staff/medward2/class/moz/cm/doc/contrib/lispstyle.html


### Ideas

- Sassy mode
    - Enabling this (in some config?) will turn all errors into snarky errors.

- config file
    - Call it sclint.rc
    - The format should be the following
```
enable-sassy-mode=false
ignore-whitespace-rule=false
ignore-indentation-rule=false
ignore-parentheses-rule=false
...etc
```

### Possible things to lint

- Parentheses are on their own line
    - You have parentheses are on their own line. They should be together.
- Incorrect variable/function naming
    - You've used (camelCase|snake_case|etc...) where dash separated variables are preferred i.e. (my-string)
- Line is longer than 100 characters
    - Your line exceeds the recommended 100 column limit.
- Spacing
    - Don't use whitespace to 'line up' code
    - Don't surround brackets with whitespace for readability
    - Lines should be indented +2 spaces after a function definition
    - There should be one blank line between top level definitions (procedures)
- Predicate naming
    - Predicates must end with ?
- Side effects (This one might be a bit too annoying)
    - Displaying output is a side effect
    - Writing to a file is a side effect
    - set!'ing a global variable is a side effect
- Indentation
    - Use spaces for indentation
