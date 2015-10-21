#!/usr/bin/env bash

sudo apt-get -y install postgresql postgresql-contrib libpq-dev

sudo sudo -u postgres psql -1 -c "CREATE USER julia WITH PASSWORD 'julia';"
sudo sudo -u postgres psql -1 -c "ALTER USER julia WITH SUPERUSER;"

