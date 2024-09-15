FROM php:8.3-fpm

RUN apt-get update

RUN apt-get install -y libzip-dev zip unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install bcmath pdo_mysql zip