# SQHell

## Rambles

A lightweight alternative to the dbext plugin. It would be able to use mysql, postgres etc... but also able to set up a connection through a docker container (or any other thing really). Features in mind

- Should be able to support multiple database types
  - Use adapters for this
- Should be able to do `docker exec blabla...` if we're not running locally
- You'll probably need a command such as MarkAsPk that will do the <cword> or a given word and mark that column as the pk.
  I'm not sure how you would do buffer deletions otherwise.
- SQL results should re-use the same buffer

## Commands

`ExecuteCommand`
Run an arbitrary SQL command

`ExecuteLine`
Run current line as SQL statement

`ExecuteFile`
Run the current file as SQL statement. 
If there is a file supplied i.e. ExecuteFile('myfile.sql'), it will run that instead.

## Ideas

Autocompletion should NOT be baked in. It should be a separate source for the completion manager of choice.
### Buffer sensitive mappings

Mapping Generality
e - This should function like edit does. So it will open/view things
dd - This will delete the thing

#### Select Buffer
SELECTing should bring back the results in a buffer which can then have buffer local remappings such as

`dd` -Delete the record you're under
- Changing any records (apart from pk) and then :wqing would update the records.  There should be a config option to prompt for confirmation beforehand (default is on)

#### Database Buffer

When we do SHOW DATABASES, the following would be good:

`e` - Show the tables in this database
`dd` - Drop the database

#### Table Buffer
When we do SHOW TABLES, it'd be good to have some more shortcuts in the buffer such as

`e` - Pressing this over the table in the result would select * from it (default limit of 100)
`dd` - Drop the table
`D` - Pressing this over the table in the result would Describe it

## User Flow

If the file is

`SELECT * FROM users LIMIT 5`

A user executes either `ExecuteFile` or `ExecuteLine` (assuming their cursor is on that line)
(Note that a user can also call `ExecuteCommand` with 'SELECT * FROM users limit 5')

- A new buffer would open up with `filetype` of `SQH_SELECT` or something along those lines.
- There would be a configuration option on whether it should jump you automatically to the results buffer or not
- The buffer contains one result per line with headers at the top, it's basically the raw output from
  a table view of the query.
- Jumping to that window, they're then able to `dd` records, or update them by directly writing to them.

