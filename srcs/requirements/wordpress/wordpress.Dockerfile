FROM debian:buster

ARG DATABASE_NAME
ARG MYSQL_USER_NAME
ARG MYSQL_USER_PASSWORD
ARG WORDPRESS_USER_NAME
ARG WORDPRESS_ROOT_PASSWORD
ARG DOMAIN_NAME
ARG BLOG_TITLE
ARG ADMIN_EMAIL

RUN apt-get -y upgrade && \
	apt-get -y update && \
	apt-get install -y mariadb-client php php-fpm sudo curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp-cli

RUN wp-cli core download --allow-root

RUN wp-cli config create --dbname=DATABASE_NAME \
	--dbuser=MYSQL_USER_NAME \
	--dbpass=MYSQL_USER_PASSWORD \
	--locale=en_GER \
	--allow-root

RUN wp-cli core install --url=DOMAIN_NAME \
	--title=BLOG_TITLE \
	--admin_user=WORDPRESS_USER_NAME \
	--admin_password=WORDPRESS_ROOT_PASSWORD \
	--admin_email=ADMIN_EMAIL \
	--allow-root

EXPOSE 3306