FROM php:7.2-apache
RUN apt-get update -y && apt-get install -y sendmail libpng-dev vim software-properties-common
RUN apt-add-repository ppa:ondrej/php -y
RUN apt-get update && \
     apt-get install -y \
         zlib1g-dev
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install gd
RUN docker-php-ext-install zip
RUN a2enmod rewrite
COPY php/php.ini /usr/local/etc/php/php.ini
