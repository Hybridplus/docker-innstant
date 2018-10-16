FROM php:7.0.32-apache

RUN docker-php-ext-install \
	pdo_mysql \
	&& a2enmod rewrite \
	&& echo "ServerName localhost" >> /etc/apache2/apache2.conf \
	&& usermod -u 1000 www-data \
	&& usermod -G staff www-data \
	&& echo "deb http://ftp.de.debian.org/debian stretch main " > /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y libyaml-dev \
	&& apt-get install -y nano unzip curl --allow-downgrades g++ \
	&& apt-get -y update \
    && apt-get install -y libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
	&& pecl install xdebug-2.6.0 \
	&& pecl install yaml-2.0.0 \
	&& docker-php-ext-enable xdebug yaml \
    && apt-get install -y libfontconfig1 libxrender1 libssl1.0-dev wkhtmltopdf\
	&& apt-get clean