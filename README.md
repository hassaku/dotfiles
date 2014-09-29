# Setup

## Install Applications

```
$ git clone https://github.com/hassaku/dotfiles.git
$ cd dotfiles
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew bundle
```

## Set dotfiles

```
$ gem i homesick
$ homesick clone hassaku/dotfiles
$ cd ~
$ homesick symlink dotfiles
```
