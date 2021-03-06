#!/bin/bash

echo "Cleaning up home..."
rm -fr .git .gitconfig .linuxhome.sh .local .ssh/authorized_keys .bashrc .profile

echo "Init..."
git init

echo "Add remote..."
git remote add origin https://github.com/FlyingPie/linuxhome.git

echo "Fetch..."
git fetch

echo "Set upstream branch..."
git checkout master

echo "Reset..."
git reset origin/master --hard

echo "Installing required packages..."
sudo apt install tmux zsh -y

echo "Setting default shell..."
chsh -s /bin/zsh

echo "Done!"
