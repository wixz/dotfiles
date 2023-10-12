## Why? ##

This is a collection of dotfiles and scripts I use for customizing OS X to my liking and setting up all the configuration and software tools I use on a day-to-day basis.

My dotfiles relevant to Linux are the same, but the relevant scripts for my specific environment `(Ubuntu / POP!_OS)` will be added in the close future.

*note* FYI. This is a work in progress, say "beta" if you will :)

### The install script will: ###

* back up any existing dotfiles in your home directory to `~/dotfiles_old/`
* create symlinks to the dotfiles in `~/dotfiles/` in your home directory
* clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`)
* check to see if `zsh` is installed, if it isn't, try to install it
* if zsh is installed, run a `chsh -s` to set it as the default shell

### Features ###

* git/ attributes, aliases and ignore
* install/ brew/brew-cask install scripts
* iterm/ The complete iterm2 config, font, theme and color.
* osx/ The setup scripts regarding symlinks and defaults for OS X
* symlink/ Symlinks for atom, irssi, mutt, newsboat, rainbow, rc, recon-ng, tmux, vim and zsh
* symlink/config/ The config for htop, matterhorn, mutt, ranger and wireshark

### Installation ###

```sh
$ git clone git@github.com:wixz/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup.sh
$ ./setup.sh
```

## OS X Defaults ##

My favorite part of this repo is the [set-defaults](osx/macos-system-defaults.sh) script for OS X, developed by "Nick Plekhanov" (see his dotfiles repo in the resource section) and updated by me for my needs.

## Resources ##

I actively watch the following repositories and add the changes i like to this repository:

- [GitHub ❤ ~/](http://dotfiles.github.com/)
- [Nick Plekhanov](https://github.com/nicksp/dotfiles)
- [Mathias’s dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Nicolas Gallagher’s dotfiles](https://github.com/necolas/dotfiles)
- [Cătălin’s dotfiles](https://github.com/alrra/dotfiles)
- [Paul's dotfiles](https://github.com/paulirish/dotfiles)
- [Jacob Gillespie’s dotfiles](https://github.com/jacobwg/dotfiles)

## License ##

The code is available under the [MIT license](LICENSE).
