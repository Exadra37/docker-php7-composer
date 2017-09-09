#!/bin/bash

PHP_VERSION=latest

if [ "--php" == "${1}" ]
    then
        PHP_VERSION="php-${2}"
        shift 2

elif [ "--dev-php" == "${1}" ]
    then
        PHP_VERSION="dev-php-${2}"
        shift 2
fi

sudo docker run --rm -it -v "${PWD}":/home/composer/app exadra37/php7-composer:"${PHP_VERSION}" "${@}"
