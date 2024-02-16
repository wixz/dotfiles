# Copy paste this file in bit by bit.
# Don't run it.

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

###############################################################################
# Backup old machine's dotfiles                                               #
###############################################################################

mkdir -p ~/dotfiles_old/home
cd ~/dotfiles_old

# then compare brew-list to what's in `brew.sh`
#   comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# let's hold on to these

cp ~/.extra ~/dotfiles_old/home
cp ~/.z ~/dotfiles_old/home
cp -R ~/.ssh ~/dotfiles_old/home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/dotfiles_old  # wifi
cp ~/Library/Preferences/net.limechat.LimeChat.plist ~/dotfiles_old
cp ~/Library/Preferences/com.tinyspeck.slackmacgap.plist ~/dotfiles_old
cp -R ~/Library/Services ~/dotfiles_old # automator stuff
cp -R ~/Documents ~/dotfiles_old
cp ~/.bash_history ~/dotfiles_old # back it up for fun?
cp ~/.gitconfig.local ~/dotfiles_old
cp ~/.z ~/dotfiles_old # z history file.


# iTerm settings.
  # Prefs, General, Use settings from Folder

# Finder settings


###############################################################################
# XCode Command Line Tools                                                    #
###############################################################################

if ! xcode-select --print-path &> /dev/null; then

  # Prompt user to install the XCode Command Line Tools
  xcode-select --install &> /dev/null

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Wait until the XCode Command Line Tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles/issues/13

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Prompt user to agree to the terms of the Xcode license
  # https://github.com/alrra/dotfiles/issues/10

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi


###############################################################################
# Homebrew                                                                    #
###############################################################################

sh install/brew.sh
sh install/brew-cask.sh

# If you want to install tools useful for CTF, uncomment the next line
# sh install/ctf-tools.sh


###############################################################################
# OSX defaults                                                                #
###############################################################################

sh osx/macos-system-defaults.sh

###############################################################################
# Install RVM                                                              #
###############################################################################

curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby

###############################################################################
# Symlinks to link dotfiles into ~/                                           #
###############################################################################

sh ./symlink.sh

###############################################################################
# Setup of zsh and symlink                                                    #
###############################################################################

# With Mac OS, I'm using warp with bash and symlinks are moved to symlink.sh.
# ./setup.sh
