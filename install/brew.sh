#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for spacevim and install it if missing
if test ! $(which spacevim)
then
  echo "Installing Spacevim..."
  ruby -e "curl -sLf https://spacevim.org/install.sh | bash"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

apps=(
    ansible
    bash
    git
    git-extras
    grep
    vim
    openssh
    gnupg
    mtr
    autojump
    python
    python3
    yara # yara rules
    tree
    bpytop # beautiful performance monitor
    wget
    pass
    pass-otp
    wifi-password
    htop # enhanced version of top
    cheat # allows you to create and view interactive cheatsheets on the command-line
    jrnl # Makes journaling from cli easy. Connects with DayOne.
    neofetch
    watch
    irssi # The best IRC client out there, terminal based
    tmux # terminal multiplexer
    nmap
<<<<<<< HEAD
=======
    ncdu
>>>>>>> 6d0c2c2 (dotfiles remake first publish)
    perl
    speedtest-cli # check internet speed
    ncdu # index and see filesize of all files and folders locally
    bitlbee # Extension for irssi
    ranger # Terminal based file explorer
    newsboat # rss fedd reader for the terminal
    osx-cpu-temp # to check the cpu temp in pyhon applications
    # Uncomment the following applications/modules if mutt is going to be used
    #
    # gpgme # mutt: while there are not many people using encryption in emails, I do when applicable
    # isync # mutt: sync function
    # khard # mutt: makes the synchronized contacts from vdirsyncer available for use in mutt
    # msmtp # mutt: send mail
    # mu
    # ncurses
    # neomutt/homebrew-neomutt/neomutt --with-gpgme --with-s-lang
    # ripmime # mutt: save attachments from emails
    # w3m # mutt: convert stupid ugly HTML-emails into something readable in mutt
    # vdirsyncer # mutt: synchronizes CardDAV-Contacts from your address book
    # -----------------------
    # Install some CTF tools; see https://github.com/ctfs/write-ups.
    # aircrack-ng
    # bfg
    # binutils
    # binwalk
    # cifer
    # dex2jar
    # dns2tcp
    # fcrackzip
    # foremost
    # hashpump
    # hydra
    # john
    # knock
    # netpbm
    # nmap
    # pngcheck
    # socat
    # sqlmap
    # tcpflow
    # tcpreplay
    # tcptrace
    # xpdf
    # xz
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
