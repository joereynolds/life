


## Lexer

```
// Returns a tokenised string
analyse(statement string)
```

### Tokens

```
SELECT * FROM mydatabase.people
[(keyword, SELECT), (operator, *), (keyword FROM), (table_references mydatabase.people)]

SHOW TABLE FROM mydatabase.people # this table should probably be removed
[(keyword, SHOW), (keyword, TABLE), (keyword FROM), (table_references mydatabase.people), (comment, #), (comment_string, "this table should ...")]
```

```
keyword: [SELECT, FROM, WHERE, LIMIT, LEFT, RIGHT, OUTER, INNER, JOIN]
operator: [*, +, -, /]
comment: [#, --]
separator: [ ]
```

## Misc

- Write it in go?
- Maybe rename `table_references` to `literal`?
- We can use regex for most of the tokenizing.
- Split on whitespace (spaces, tabs, newlines) for the tokenizer

### Interface

- Should be able to read from a file, or stdin (or a string?)

**file**
mysql-go myfile.sql

**stdin**
echo "SELECT * FROM 5 WHERE l" | mysql-go

**string(?)**
mysql-go "SELECT * FROM 5 WHERE l"

### Structure

Lexer.go    
Parser.go
