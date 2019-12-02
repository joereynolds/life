I'll explain the setup I have to use PHP effectively and not be (secretly) envious of PHPStorm users.

# Code Navigation

This is single handledly the most important thing to me. As such I have quite a few things to faciliate PHP pwnage.
I have mentioned the majority of these things before in my article [navigating code with (neo)vim]().

## Ctags

## GNU-Global

## Padawan

# Docs

## Documentation generation
I don't use any documentation generation.
Mainly because I don't much past a lines of
why we're doing it this way.

I find the @param syntax vebose and mostly
pointless now that we have typehinting.

But for those of you that do want these kind of things,
you can try SOMETHING.
# Completion

## Deoplete

## Deoplete Padawan

# Linting

## Ale

# Version Control

[vim-fugitive](LINK) provides an excellent wrapper around Git providing all you need
to navigate code and point your finger at people.

## Writing some code and pushing it
(Demo this on bogans.uk)

# Commenting stuff out

## vim-commentary

# Unit Testing

There is a plugin for this called [vim-test]() which has support for multiple languages including PHP.
I personally don't use this as all my codebase are in Docker meaning the commands don't work.

There are a few ways to Unit Test with Vim

## Using Vim-test

`:TestFile your_file_name`
(Vim-test has support for other very useful options, check them out.)

## Using Vim

The simplest way would be to just test the current file you're in.
`:!phpunit %`

## Through Docker (Probably applies to very few people)

If like me, your codebases are containerised, I just do

`:!docker exec your_container_name phpunit`

This will run the suite for that container.
Map it to a key if need be.

# Questions?

If you've got any questions, ask them on the [reddit thread](). I'd love for you
to make me jealous of IDE features. I'm always looking at ways to improve the Vim experience.
