FROM php:7.2-fpm

RUN apt-get update && apt-get install -y zlib1g-dev

# Install extensions
RUN docker-php-ext-install zip pcntl mysqli pdo pdo_mysql bcmath mbstring
RUN pecl install xdebug && docker-php-ext-enable xdebug

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN chown www-data:www-data /usr/local/bin/composer

RUN apt-get update && apt-get install -y git

COPY /etc/php/php-fpm.d/www.conf /usr/local/etc/php-fpm.d/www.conf

ADD $PRIVATE_KEY_PATH ~/.ssh/id_rsa
ADD $PUBLIC_KEY_PATH ~/.ssh/id_rsa.pub

WORKDIR "/app"