# Plaintext automation

Got an idea for another project to automate various things.

Let's say we want to hit the browser and then call mysql to look at some stuff
afterwards, the file could look like this

```
url: https://google.com
sql: SELECT * FROM web_responses;
```

# Ideas

It could have the following keys

`url` - This visits a URL
`sql` - Runs and displays results to the console
`raw` - Runs a raw shell command
`wait`- Wait n seconds


# Examples

```
url: https://enterprise.local.sykes.io/cmdline/testThirdParty
sql: SELECT * FROM web_responses;
```

