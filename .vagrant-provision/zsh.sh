#!/usr/bin/env bash

echo "======================================================================= Install ZSH"
sudo apt-get install zsh -y

echo "================================================================== Install Git Core"
sudo apt-get install git-core -y

echo "========================================================================== Wget ZSH"
sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

echo "==================================================================================="
echo ""
echo "====== OH MY ZSH √"
echo ""
echo "==================================================================================="

sudo shutdown -r 0