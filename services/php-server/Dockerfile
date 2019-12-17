FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    apache2 apache2-dev \
    && apt-get install -y nano mc htop curl unzip php-xml php7.0-mbstring php7.0-zip php-dev \
       libyaml-dev php-curl libfontconfig libxext6 libxrender-dev php-memcached memcached php-intl \
       libapache2-mod-php supervisor\
    && pecl install yaml-2.0.0 && pecl install xdebug-2.6.0 \
    && pecl install ev -q \
    && a2enmod rewrite \
    && a2enmod proxy \
    && a2enmod proxy_wstunnel \
    && echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && usermod -u 1000 www-data \
    && usermod -G staff www-data

COPY apache2-foreground /usr/local/bin

EXPOSE 80
CMD ["apache2-foreground"]