#!/bin/bash

# Install Caskroom
brew tap homebrew/cask
brew install brew-cask-completion
brew tap homebrew/cask-versions

# Install packages
apps=(
    alt-tab
    the-unarchiver
    appcleaner
    bettertouchtool
    bitwarden
    drawio
    dropzone
    istat-menus
#   brooklyn # Awesome Screensaver
    vlc
    dash
    iterm2
    visual-studio-code
    little-snitch
    micro-snitch
    istat-menus
#   tunnelblick
#   evernote
#   keybase
    telegram
    signal
#   tor-browser
    obsidian
#   torguard
#   fantastical
#   goofy
    google-chrome
#   gpg-suite
#   firefox
#   vimr # Gui editor with CLI based on neovim
#   notable # Note taking app using markdown
#   malwarebytes-anti-malware
#   glimmerblocker
    openlens
#   veracrypt
    wireshark
#   macdown
#   sublime
#   atom
#   spotify
    powershell
#   zoom
#   skype
#   slack
#   mattermost
)

brew install "${apps[@]}"

# apps that needs to be installed which are not present in Homebrew Cask
#
# alfred 3
# Office including Remote Desktop
# Airmail 3+
# Magnet
# DayOne
# Display Menu
# Iperf3
# Tweetdeck
# VMWare Fusion
# Tweetbot



# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
