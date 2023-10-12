#!/bin/bash

# Installs all the CTF/Hacking tools used for work and playtime

apps=(

    # -----------------------
    # Install some CTF tools; see https://github.com/ctfs/write-ups.
    aircrack-ng
    bfg
    binutils
    binwalk
    cifer
    dex2jar
    dns2tcp
    fcrackzip
    foremost
    hashpump
    hydra
    john
    knock
    netpbm
    nmap
    pngcheck
    socat
    sqlmap
    tcpflow
    tcpreplay
    tcptrace
    xpdf
    xz
    metasploit
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
