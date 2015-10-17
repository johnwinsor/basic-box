#!/usr/bin/env bash

#### install ruby developer packages
sudo apt-get -y install make build-essential libssl-dev libreadline6-dev zlib1g-dev libyaml-dev libsqlite3-dev libssl-dev libc6-dev libpq-dev libcurl4-openssl-dev libksba8 libksba-dev libqtwebkit-dev > /dev/null
#### nokogiri requirements
sudo apt-get -y install libxslt-dev libxml2-dev > /dev/null

#### install rbenv and ruby-build
git clone git://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.zshrc
echo 'eval "$(rbenv init -)"' >> /home/vagrant/.zshrc
git clone git://github.com/sstephenson/ruby-build.git /home/vagrant/.rbenv/plugins/ruby-build

#### no rdoc for installed gems
echo 'gem: --no-ri --no-rdoc' >> /home/vagrant/.gemrc

/home/vagrant/.rbenv/bin/rbenv install 2.2.3
/home/vagrant/.rbenv/bin/rbenv global 2.2.3
sudo gem install bundler --no-ri --no-rdoc
