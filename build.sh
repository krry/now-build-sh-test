#!/bin/bash

yum install -y wget

HUGO_VERSION=0.54.0
HUGO_TAR=hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
HUGO_DL=https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TAR}

wget ${HUGO_DL}
tar -xvzf hugo*.tar.gz -C /usr/local/bin
mkdir themes
git submodule init
git submodule update --remote
# Build with hugo-cli
hugo -d public
