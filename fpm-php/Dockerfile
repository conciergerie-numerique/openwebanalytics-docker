FROM php:7.4.13-fpm-alpine3.12 AS runner

RUN apk update \
    && apk --progress add tzdata \
    && apk --progress add shadow \
    && usermod -u 1000 www-data \
    && groupmod -g 1000 www-data \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli
