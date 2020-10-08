FROM phpearth/php:7.2-nginx
COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache php7.2-pdo_mysql bash php7.2-mysqli && \
    chmod 777 /entrypoint.sh

CMD ["./entrypoint.sh"]