# Docker

## Services

### mysql

### php-fpm

### nginx

### composer

## Structure

* services - docker-compose services
  * mysql
    * etc
      * mysql
        * conf.d - custom mysql configuration files
  * nginx
    * etc
      * nginx
        * conf.d - nginx custom servers
  * php
    * etc
      * php
        * php-fpm.d - override php-fpm www.conf file
  * composer
* volumes - docker volumes
  * app_data
    * mysql - mysql data files
    * nginx - nginx data files
    * composer - composer data files
  * app_logs
    * nginx - nginx and nginx app logs file
