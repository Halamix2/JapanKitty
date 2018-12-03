#!/bin/bash
set -e

cd code
# basically what is done right after Vagrant box is up
# copy testing config
# install composer
#recreate fresh database
# create migrations 

#TODO:  load mockup data
echo "setting up fresh files"
sudo -u vagrant -H bash -c "rm -f .env;\
  rm -f database/testing.sqlite;\
  touch database/testing.sqlite;\
  cp .env.testing .env;\
  composer install -n;\
  echo \"generating keys\";\
  if [ ! -f ~/.key_generated ]; then php artisan key:generate; touch ~/.key_generated; fi;\
  echo \"migrations\";\ 
  php artisan migrate;\
  echo \"seed\"; \
  php artisan db:seed;\
  php artisan passport:client --personal --no-interaction;"
  #  echo 'this particular migration'; \ 
  # php artisan migrate --database=sqlite_testing;\
  #composer install -n; --prefer-dist; \