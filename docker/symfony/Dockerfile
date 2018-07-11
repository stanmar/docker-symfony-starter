FROM alpine:3.7

RUN apk add --update \
    php7-fpm \
    php7-apcu \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-intl \
    php7-mcrypt \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-pdo_sqlite \
    php7-mysqli \
    php7-pgsql \
    php7-sqlite3 \
    php7-xml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-simplexml \
    php7-xdebug \
    make \
    curl \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* \
    && curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer \
    && chmod +x /usr/bin/composer  \
    && adduser -D -u 1000 developer \
    && mkdir /home/developer/logs  /home/developer/app \
    && chown -R developer /home/developer/logs /home/developer/app

USER developer
VOLUME /home/developer/logs
VOLUME /home/developer/app

ADD php /etc/php7
ADD env-update.sh /home/developer/env-update.sh

WORKDIR /home/developer/app
CMD ../env-update.sh && php-fpm7 -F

EXPOSE 9000