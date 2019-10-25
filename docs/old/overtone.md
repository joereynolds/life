
- Install `lein`
- Start it with `qjackctl` otherwise you get permission errors
- Add supercollider PPA

```
sudo add-apt-repository ppa:supercollider/ppa
sudo apt-get update
sudo apt-get install supercollider
```




# Starting qjackctl
```
pulseaudio --kill
jack_control start
jack_control exit
pulseaudio --start
qjackctl
```


# Starting it

- `lein repl`
- `(use 'overtone.core)`
- `(boot-external-server)`
