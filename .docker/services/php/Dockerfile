FROM php:7.2-fpm

RUN apt-get update && apt-get install -y zlib1g-dev

# Install extensions
RUN docker-php-ext-install zip pcntl mysqli pdo pdo_mysql bcmath mbstring
RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN apt-get update && apt-get install -y git

COPY /etc/php/php-fpm.d/www.conf /usr/local/etc/php-fpm.d/www.conf

ADD "~/.ssh/id_rsa" "/root/.ssh/id_rsa"
ADD "~/.ssh/id_rsa.pub" "/root/.ssh/id_rsa.pub"

WORKDIR "/app"