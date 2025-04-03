# start with the official Composer image and name it
FROM composer:2.6.5 AS composer

# Use the official PHP 8.2 image as the base image
FROM php:8.2-fpm

# copy the Composer PHAR from the Composer image into the PHP image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Install extensions and system dependencies
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    zip \
    unzip \
    nano \
    default-mysql-client \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_mysql zip

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Add php user with specified UID to ensure matching file ownership between the WSL user
ARG UID=1000
RUN useradd -m -u $UID -s /bin/bash php
USER php
