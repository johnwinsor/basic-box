#!/usr/bin/env bash

#### install ruby developer packages
sudo apt-get -y install make build-essential libssl-dev libreadline6-dev zlib1g-dev libyaml-dev libsqlite3-dev libssl-dev libc6-dev libpq-dev libcurl4-openssl-dev libksba8 libksba-dev libqtwebkit-dev > /dev/null
#### nokogiri requirements
sudo apt-get -y install libxslt-dev libxml2-dev > /dev/null

#### install rbenv and ruby-build
echo 'Installing rbenv'
git clone git://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.zshrc
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.zshrc
git clone git://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

#### no rdoc for installed gems
echo 'gem: --no-ri --no-rdoc' >> /home/vagrant/.gemrc

#### Install Ruby vi rbenv
export RBENV_ROOT="${HOME}/.rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
export PATH="${RBENV_ROOT}/shims:${PATH}"
/home/vagrant/.rbenv/bin/rbenv install 2.2.3
/home/vagrant/.rbenv/bin/rbenv global 2.2.3
gem install bundler --no-ri --no-rdoc
/home/vagrant/.rbenv/bin/rbenv rehash

#### Install Rails
echo 'Installing Rails'
sudo add-apt-repository -y ppa:chris-lea/node.js > /dev/null
sudo apt-get -y update > /dev/null
sudo apt-get -y install nodejs > /dev/null
gem install rails -v 4.2.4
/home/vagrant/.rbenv/bin/rbenv rehash

sudo apt-get clean
