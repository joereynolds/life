## Lexer

```
// Returns a tokenised string
analyse(statement string)
```

### Tokens

```
SELECT * FROM mydatabase.people
[(keyword, SELECT), (operator, *), (keyword FROM), (table_reference mydatabase.people)]

SHOW TABLE FROM mydatabase.people # this table should probably be removed
[(keyword, SHOW), (keyword, TABLE), (keyword FROM), (table_reference mydatabase.people), (comment, #), (comment_string, "this table should ...")]
```

```
keyword: [SELECT, FROM, WHERE, LIMIT, LEFT, RIGHT, OUTER, INNER, JOIN]
operator: [*, +, -, /]
comment: [#, --]
separator: [ ]
```

## Ramblings & Ideas

- Write it in go?
- Maybe rename `table_reference` to `literal`?
- We can use regex for most of the tokenizing.
- Split on whitespace (spaces, tabs, newlines) for the tokenizer

### Interface

- Should be able to read from a file, or stdin (or a string?)

**file**

```
mysql-go myfile.sql
```

**stdin**

```
echo "SELECT * FROM 5 WHERE l" | mysql-go
```

**string(?)**

```
mysql-go "SELECT * FROM 5 WHERE l"
```

### Warnings & Messages

- All of them should have line number and column number

**Missing semicolon**

```
SELECT * FROM address WHERE
6:14 Missing semicolon
```

**No condition in a where clause**

```
SELECT * FROM address WHERE
6:14 No condition in where clause
```

**No where clause in DELETE/UPDATE (destructive operation)**

```
DELETE FROM address
8:13 DELETE/UPDATE has no WHERE, is that what you want?
```

**Database doesn't exist**

Works on SELECT, INSERT, UPDATE etc...

```
SELECT `address_line_1` FROM `some_database`.address
9:15 database `some_database` does not exist
```

**Table doesn't exist**

Works on SELECT, INSERT, UPDATE etc..

```
SELECT `address_line_1` FROM some_table
9:15 table `some_table` does not exist
```

**Column doesn't exist**

Works on SELECT, INSERT, UPDATE etc...

```
SELECT `non_existent_column` FROM address
9:15 column `non_existent_column` does not exist in table `address`
```

```
INSERT INTO address (`non_existent_column`) VALUES (3)
9:15 column `non_existent_column` does not exist in table `address`
```

etc...

### Formatter?

Maybe create a formatter too.

Should accept, file, string or stdin.

`mysql-go format file.sql`


### Structure

main.go
Lexer.go    
Parser.go
warnings/
  interface.go
  non-existent-table.go
  non-existent-column.go 
  etc...

Parser should contain an array of checks to go through, all checks should follow an interface
