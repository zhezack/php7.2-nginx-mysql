FROM phpearth/php:7.2-nginx
RUN apk add --no-cache php7.2-pdo_mysql bash php7.2-mysqli
COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh

CMD ["./entrypoint.sh"]