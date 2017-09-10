FROM php:7.1

# The main goal of this image is to be able to rum composer under specific PHP versions.

ARG CONTAINER_USER='composer'

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        git \
        inotify-tools \
        zip \
        unzip && \

    # creates composer user
    useradd -m -u 1000 -s /usr/bin/zsh "${CONTAINER_USER}" && \

    # installs composer
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    composer

# Any file copied after USER directive will belong always to root... WTF Docker still have this bug after so many years!!!
# So need to handle this manually....
COPY ./bash/entrypoint.sh "/home/${CONTAINER_USER}/.entrypoint.sh"
RUN chown "${CONTAINER_USER}:${CONTAINER_USER}" "/home/${CONTAINER_USER}/.entrypoint.sh"

USER "${CONTAINER_USER}"

# If we don't create manually the WORKDIR Docker will create it for us but will belong to root...
# One more example where the USER directive is not respected!!!
RUN  mkdir "${HOME}/app"
WORKDIR "/home/${CONTAINER_USER}/app"

# The entrypoint borrowed from the official composer image
ENTRYPOINT ["/home/composer/.entrypoint.sh"]

CMD ["composer"]
