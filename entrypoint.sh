#!/bin/sh -l

#set -e at the top of your script will make the script exit with an error whenever an error occurs (and is not explicitly handled)
set -eu


composer require imanghafoori/laravel-microscope

php artisan optimize:clear

echo $2

cp .env.example .env

php artisan $2

echo 'check success'
exit 0

