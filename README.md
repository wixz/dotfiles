## Why? ##

This is a collection of dotfiles and scripts I use for customizing OS X to my liking and setting up all the configuration and software tools I use on a day-to-day basis.

*note* FYI. This is a work in progress, say "beta" if you will :)

### The install script will: ###

* back up any existing dotfiles in your home directory to `~/dotfiles_old/`
* Install X-Code Comman Line Tools (needed for brew)
* clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`) # Only applicable if iterm2 is used, not warp. controlled via setup.sh
* check to see if `zsh` is installed, if it isn't, try to install it # Only applicable if iterm2 is used, not warp. controlled via setup.sh
* if zsh is installed, run a `chsh -s` to set it as the default shell # Only applicable if iterm2 is used, not warp. controlled via setup.sh
* Install brew, brew cli apps and brew cask apps # Installed via /install/brew.sh and brew-cask.sh
* Set Mac OS defaults # Is set via /osx/macos-system-defaults.sh
* Create symlinks to the dotfiles in your home directory # Created via symlink.sh

### Features ###

* git/ attributes, aliases and ignore
* install/ brew/brew-cask install scripts
* iterm/ The complete iterm2 config, font, theme and color.
* osx/ The setup scripts regarding defaults for OS X
* symlink/ Symlinks for config, mutt, irssi, newsboat, rainbow, tmux, spacevim, zsh/bash, warp nad vscode.
* symlink/config/ The config for bpytop, htop, iterm2, micro, neofetch, ranger, ticker and wireshark.

### Installation ###

```sh
$ git clone git@github.com:wixz/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ chmod +x setup-new-machine.sh
$ ./setup-new-machine.sh
```

## OS X Defaults ##

My favorite part of this repo is the [set-defaults](osx/macos-system-defaults.sh) script for OS X, developed by "Nick Plekhanov" (see his dotfiles repo in the resource section) and updated by me for my needs.

## Resources ##

I actively watch the following repositories and add the changes i like to this repository:

- [Cătălin’s dotfiles](https://github.com/alrra/dotfiles)
- [Paul's dotfiles](https://github.com/paulirish/dotfiles)
- [Jacob Gillespie’s dotfiles](https://github.com/jacobwg/dotfiles)

## License ##

The code is available under the [MIT license](LICENSE).
