#!/usr/bin/env bash

#### install sufia dependencies
sudo apt-get -y install git-core curl libxml2-dev libxslt1-dev python-software-properties libffi-dev zip zsh imagemagick > /dev/null
sudo apt-get -y install postgresql postgresql-contrib libpq-dev > /dev/null

sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get -y update > /dev/null
sudo apt-get -y install openjdk-8-jdk > /dev/null

sudo add-apt-repository -y ppa:chris-lea/redis-server
sudo apt-get -y update > /dev/null
sudo apt-get -y install redis-server > /dev/null
sudo service redis-server restart

sudo apt-get clean
