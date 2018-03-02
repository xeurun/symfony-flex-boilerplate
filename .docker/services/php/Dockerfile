FROM php:7.2-fpm

ARG ENV
ARG WORKDIR

# Instal deps
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g-dev git libjpeg-dev libpng-dev

# Permission fix
RUN usermod -u 1000 www-data

# Install extensions
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr;
RUN docker-php-ext-install gd mysqli opcache zip pcntl pdo pdo_mysql bcmath

# Commit for prod env
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Update config
RUN { \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.interned_strings_buffer=8'; \
    echo 'opcache.max_accelerated_files=4000'; \
    echo 'opcache.revalidate_freq=2'; \
    echo 'opcache.fast_shutdown=1'; \
    echo 'opcache.enable_cli=1'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini
RUN { \
    echo 'file_uploads = On'; \
    echo 'memory_limit = 256M'; \
    echo 'upload_max_filesize = 20M'; \
    echo 'post_max_size = 64M'; \
    echo 'max_execution_time = 300'; \
} > /usr/local/etc/php/conf.d/uploads.ini

WORKDIR $WORKDIR