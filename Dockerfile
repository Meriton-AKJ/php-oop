# Image PHP 8.2 Apache, embeds mod_php and works as is. For low traffic applications.
FROM php:8.2-apache

# Install PHP extensions
RUN apt-get update -qq && apt-get install -y \
    libzip-dev \
    zip \
    libonig-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring zip

WORKDIR /var/www/html

USER www-data