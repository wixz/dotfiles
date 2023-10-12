#!/bin/bash

#
# Symlink stuff
#
echo "Creating symlinks..."
ln -s "${HOME}/Documents/git/dotfiles/symlink/config/" "${HOME}/.config"
ln -s "${HOME}/Documents/git/dotfiles/symlink/mutt/" "${HOME}/.config/mutt"
ln -s "${HOME}/Documents/git/dotfiles/symlink/irssi/" "${HOME}/.irssi"
ln -s "${HOME}/Documents/git/dotfiles/symlink/newsboat/" "${HOME}/.newsboat"
ln -s "${HOME}/Documents/git/dotfiles/symlink/rainbow/.rainbow_config.json" "${HOME}/.rainbow_config.json"
ln -s "${HOME}/Documents/git/dotfiles/symlink/rainbow/.rainbow_oauth" "${HOME}/.rainbow_oauth"
ln -s "${HOME}/Documents/git/dotfiles/symlink/recon-ng/" "${HOME}/.recon-ng"
ln -s "${HOME}/Documents/git/dotfiles/symlink/tmux/" "${HOME}/.tmux"
ln -s "${HOME}/Documents/git/dotfiles/symlink/tmux/.tmux.conf" "${HOME}/.tmux.conf"
ln -s "${HOME}/Documents/git/dotfiles/symlink/atom/" "${HOME}/.atom"
ln -s "${HOME}/Documents/git/dotfiles/symlink/vim/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/Documents/git/dotfiles/symlink/config/nvim/" "${HOME}/.vim"
ln -s "${HOME}/Documents/git/dotfiles/symlink/vim/.SpaceVim.d/" "${HOME}/.SpaceVim.d"
ln -s "${HOME}/Documents/git/dotfiles/symlink/zsh/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/Documents/git/dotfiles/" "${HOME}/dotfiles"
ln -s "${HOME}/Documents/git/notable/notes" "${HOME}/notes"
ln -s "${HOME}/Documents/git/documentation" "${HOME}/documentation"
echo "done."

echo "Creating symlinks för git..."
ln -s "${HOME}/Documents/git/dotfiles/git/gitattributes" "${HOME}/.gitattributes"
ln -s "${HOME}/Documents/git/dotfiles/git/gitconfig" "${HOME}/.gitconfig"
ln -s "${HOME}/Documents/git/dotfiles/git/gitignore" "${HOME}/.gitignore"
echo "done."


install_zsh () {
  # Test to see if zshell is installed.  If it is:
  if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Install Oh My Zsh if it isn't already present
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi
    # Set the default shell to zsh if it isn't currently set to zsh
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
      chsh -s $(which zsh)
    fi
  else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
      if [[ -f /etc/redhat-release ]]; then
        sudo yum install zsh
        install_zsh
      fi
      if [[ -f /etc/debian_version ]]; then
        sudo apt-get install zsh
        install_zsh
      fi
    # If the platform is OS X, tell the user to install zsh :)
    elif [[ $platform == 'Darwin' ]]; then
      echo "We'll install zsh, then re-run this script!"
      brew install zsh
      exit
    fi
  fi
}

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Install the Wixz Keybase theme for iTerm
open "${HOME}/Documents/git/dotfiles/iterm/themes/Wixz_Keybase.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Reload zsh settings
source ~/.zshrc
