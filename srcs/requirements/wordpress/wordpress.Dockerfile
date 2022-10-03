FROM debian:buster

RUN apt-get -y upgrade && \
	apt-get -y update && \
	apt-get install -y mariadb-client php7.3-fpm php7.3-mysql sudo curl

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp-cli

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY wordpress.script.sh ./

RUN chmod +x wordpress.script.sh

EXPOSE 9000

RUN mkdir /run/php

ENTRYPOINT [ "./wordpress.script.sh" ]