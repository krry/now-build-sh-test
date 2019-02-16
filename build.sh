#!/bin/bash

echo "hostnamectl, aka Linux distro"
hostnamectl
echo "Linux kerner version"
uname -r

# if package manager
sudo dnf install hugo

# else if no package managers
# yum install -y wget
# HUGO_VERSION=0.54
# HUGO_TAR=hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
# HUGO_DL=https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TAR}

# wget ${HUGO_DL}
# tar -xvzf -C /usr/local/bin
# if no access to /usr/local/bin
# tar -xvzf -C ~/bin

# Move into the site
cd now-build-sh

# Install the theme
git submodule update

# Build with hugo-cli
hugo -d public
