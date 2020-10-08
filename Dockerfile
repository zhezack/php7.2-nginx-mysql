FROM phpearth/php:7.2-nginx
COPY default.conf /etc/nginx/conf.d/default.conf
RUN apk add --no-cache php7.2-pdo_mysql bash php7.2-mysqli composer && \
    chmod 777 /entrypoint.sh