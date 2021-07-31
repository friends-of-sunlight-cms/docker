FROM php:8.0-apache

RUN a2dissite 000-default && a2enmod rewrite \
    && apt-get update -y \
        && apt-get install -y \
            libpng-dev \
            libwebp-dev \
            libfreetype6-dev \
            libjpeg62-turbo-dev \
            libzip-dev  \
            zlib1g-dev \
            libicu-dev \
            iputils-ping \
            nano \
            jq \
            git \
            rsync \
    && docker-php-ext-configure gd --with-freetype --with-jpeg -with-webp \
    && docker-php-ext-configure intl \
    && docker-php-ext-install \
        opcache \
        gd \
        mysqli \
        intl \
    && curl https://pear.php.net/go-pear.phar --output /tmp/go-pear.phar \
        && php /tmp/go-pear.phar \
    && pecl install \
        xdebug \
        zip \
        && echo "extension=zip.so" > /usr/local/etc/php/conf.d/php-zip.ini

# Download Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY files /