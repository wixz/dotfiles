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
    docker
    drawio
    dropzone
    istat-menus
    vlc
    dash
    iterm2
    warp
    visual-studio-code
    little-snitch
    micro-snitch
    istat-menus
#   tunnelblick
#   evernote
#   keybase
    telegram
    hiddenbar
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
#   slack
#   mattermost
)

brew install "${apps[@]}"

# apps that needs to be installed which are not present in Homebrew Cask
#
# alfred 5
# Office including Remote Desktop
# Magnet
# DayOne
# Display Menu
# Iperf3