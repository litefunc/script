#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"