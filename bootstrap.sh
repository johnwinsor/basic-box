#!/usr/bin/env bash

sudo apt-get -y update > /dev/null
sudo apt-get -y install zsh git-core > /dev/null


git clone --recursive https://github.com/johnwinsor/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

shopt -s extglob

for rcfile in $HOME/.zprezto/runcoms/!(README.md); do
  ln -s "$rcfile" "$HOME/.$(basename $rcfile)"
done

git config --global color.ui true
git config --global user.name "John Winsor"
git config --global user.email "johnwinsor@gmail.com"

# Change shell
sudo usermod -s /bin/zsh "$(whoami)"

cp /vagrant/.tmux.conf /home/vagrant/
