# Transform

`tf` for short.

## What is it?

An alternative to Awk, some regular expressions and some nice-to-haves when
dealing with text.

## Examples

### Switching columns in a CSV around

some-file.csv is the csv file to operate on. The output will then be $2 (second
column), ',' and then $1
```
tf some-file.csv 2,1
```

Can also use the magic names instead for readability

```
tf some-file.csv second,first
```

The replacement is literal, it doesn't have to be a comma
```
tf some-file.csv second||first
```

### Transformations

```
> echo "hello" | tf upper
HELLO

> echo "HElLo" | tf lower
hello

> echo "HElLo" | tf title
Hello

> echo "myImportantClass" | tf snake
my_important_class

> echo "my_important_class" | tf camel
myImportantClass

> echo "my_important_class" | tf dash
my-important-class

> echo "you her him" | tf join ":"
you:her:him

> echo "this is an example where every 3rd word gets replaced" | tf 3n "my"
this is my example where my 3rd word my replaced
```


## Which language?

We'll try scheme.

Go
- Small binaries
- Not terrible
- No polymorphism :(

Typescript
- Big binaries
- Polymorphic

Scheme (chicken-scheme) (Maybe racket but chicken scheme gets me off dunno why)
- Small binaries
- polymorphic? find out
