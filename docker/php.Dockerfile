ARG VERSION

FROM php:${VERSION}-fpm

RUN apt-get update

RUN apt-get install -y libzip-dev zip unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install bcmath pdo_mysql zip

RUN pecl install redis \
    && docker-php-ext-enable redis.so
