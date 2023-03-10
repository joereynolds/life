# Loginless todo

Similar to simplenote or zim or onenote but looser in how you login.

On creation of a notebook, you are given a random UUID (`uuidgen` works on terminal) 
and that is the URL/login for your notebook.

There's a web version. To see your notebook you'd do go to the URL:

    http://todo.com/{uuid}

On the native desktop version, you'd enter your UUID in a dialogue and it'd show the same thing

## Pros

- Privacy
- Super easy login
- Shareable (just send someone the link and they can view your notes)

## Cons

- Lost the uuid, you've lost your notes
    - If using the browser version, you could recover it from your history
    - If it's the desktop version, we should save the hash in `~/.config/todo`
- Possible hash collisions means you can see other people's notes
    - Super low risk. Would never happen
