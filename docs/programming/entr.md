# Introducing Entr  

Entr is a file watcher like many others, I use it because it's 'unixy' and has a very simple interface.

Using Entr has mitigated the need for some vim plugins which I'm definitely happy about (tag generation, automatic test running etc...).

Here are a few examples of what I use it for:

## Run SQL queries when the file changes

(Note that we can't redirect the file to mysql because of entr, so we source it instead)

`ls *.sql | entr -cpr mysql -h yourhost.dev.office -u john.doe -pyourpassword -e "source yoursqlfile.sql"`

## Generate tags on write of a file

`find src/ | entr gtags`

## Run tests on write of a file

`find src/ | entr npm test`

## Detect dead css in the file you changed

`find static/css/parks.css | entr mort -vf /_`

## Do something on change of a branch

`ls ./.git/HEAD | entr echo "changed branch"`
