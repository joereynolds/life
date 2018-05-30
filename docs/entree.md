# Entree    

To help wrap watchers from `entr`, inspired slightly by funzzy.
This also makes it easy to version.

## Example

**Start all watchers**
```
entree watch
```

**Start a specific watcher**
```
entree watch watcher-name-here
```

**List watchers**
```
entree list
```

**Show what a watcher does**
```
entree show watcher-name-here
```

**Kill a watcher?**
(Not sure about this one, could be hard to do)
```
entree kill watcher-name
```

### How does it work?

The .entreerc (or whatever we call it) will be in the following format

```
[build-npm]
ls src/** | entr npm run build  

[detect-dead-css]
ls static/css/* | entr mort -v
```
