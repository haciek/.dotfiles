# .dotfiles

My general Linux dotfiles

### Setup:
```console
$ git clone 'https://www.github.com/haciek/.dotfiles.git'
$ cd system-files/stow_home/
$ stow -vt ~ *
$ cat ../packages | yay -S --needed -
```
### Important:

'hardware_settings' contains files specific to my old-ass GPU and Monitor setup.
