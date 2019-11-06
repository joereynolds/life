# Code review on the CLI

Some things I do when reviewing code. Mostly assumes use of PHP.

Ask yourself:

- Is the build okay? (lint, style, tests)
    - Run the build script locally to verify


## Git

### Getting all the changed files in a PR

```
# Might not always be master branch
git diff --name-only origin/master 
```
You can then open this in Vim and cycle through it with `:bnext` and `:bprevious`

```
vim $(git diff --name-only origin/develop)
```

## Filenames

In the main `src` directory there should never be lowercase filenames.

### List any lowercase filenames
```
fd -t f --full-path 'src/' | xargs -L1 basename | grep ^[a-z]
```

## Exceptions

Exceptions should have decent messages so we can correctly hunt things down.

Don't do this
```
User not found
```

Do this
```
User $user not found
```

### Places where they're thrown
```
rg 'throw new'
```

### Places where they're handled
```
rg 'catch.*\(' -C 5
```

## Tests

A file should have a test associated with it. This is usually the filename with
Test at the end.

I.e.

```
fd  '(^Comparison.php|^ComparisonTest.php)'
```
Should bring back two results - One for the file itself, the other for the test
file.

Here is a script to show files without tests written against them

```
#!/usr/bin/env bash

# Don't test Interface or Exception files
files=$(\
    fd -t f . src/ \
    --exclude '*Interface*.php' \
    --exclude '*Exception*.php' \
)

for file in $files
do
    filename=$(basename -s .php $file)
    testFile=$(fd ^"$filename"Test.php);

    [ "$testFile" == "" ] && echo "$file has no test associated with it"
done
```

Or a version using `find`

```
#!/usr/bin/env bash

files=$(\
    find  $1 -type f \
    ! -name '*Interface*.php' \
    ! -name '*Exception*.php' \
)

for file in $files
do
    filename=$(basename -s .php $file)
    testFile=$(find -type f -iname "$filename"Test.php);

    [ "$testFile" == "" ] && echo "$file has no test associated with it"
done
```


