# Docker

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
* volumes - docker volumes
  * app_data
    * mysql - mysql data files
    * nginx - nginx data files
  * app_logs
    * nginx - nginx and nginx app logs file

## Services

### mysql

### php-fpm

### nginx
