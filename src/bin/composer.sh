#!/bin/bash

DOCKER_IMAGE=exadra37/php7-composer
PHP_VERSION=7.1

if [ "--php" == "${1}" ]
    then
        LABEL_COLOR="42m" # GREEN
        PHP_VERSION="php-${2}"
        shift 2

elif [ "--dev-php" == "${1}" ]
    then
        LABEL_COLOR="41m" # RED
        PHP_VERSION="dev-php-${2}"
        shift 2
fi

printf "\n\e[1;${LABEL_COLOR} DOCKER IMAGE: \e[30;48;5;229m ${DOCKER_IMAGE}:${PHP_VERSION} \e[0m \n\n"

sudo docker run --rm -it -v "${PWD}":/home/composer/app "${DOCKER_IMAGE}":"${PHP_VERSION}" "${@}"
