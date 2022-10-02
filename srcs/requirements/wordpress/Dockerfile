FROM debian:buster

ARG DATABASE_NAME=wordpress
ARG MYSQL_USER_NAME=amigo
ARG MYSQL_USER_PASSWORD=123
ARG WORDPRESS_USER_NAME=william
ARG WORDPRESS_ROOT_PASSWORD=123
ARG DOMAIN_NAME=wollio.42.fr
ARG BLOG_TITLE=mon_blog
ARG ADMIN_EMAIL=williamollio98@gmail.com

RUN apt-get -y upgrade && \
	apt-get -y update && \
	apt-get install -y curl && \
	apt-get install -y php && \
	apt-get install -y sudo && \
	apt-get install -y mariadb-client

# RUN useradd william && \
# 	usermod -aG sudo william

# USER william

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp-cli

RUN wp-cli core download --allow-root

# RUN wp-cli config create --dbname=DATABASE_NAME \
# 	--dbuser=MYSQL_USER_NAME \
# 	--dbpass=MYSQL_USER_PASSWORD \
# 	--locale=en_GER \
# 	--allow-root

# RUN wp-cli core install --url=DOMAIN_NAME \
# 	--title=BLOG_TITLE \
# 	--admin_user=WORDPRESS_USER_NAME \
# 	--admin_password=WORDPRESS_ROOT_PASSWORD \
# 	--admin_email=ADMIN_EMAIL \
# 	--allow-root

EXPOSE 3306
EXPOSE 9000