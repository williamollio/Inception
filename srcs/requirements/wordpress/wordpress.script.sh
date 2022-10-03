#!/bin/bash

wp-cli core download --allow-root

wp-cli config create --dbname=$DATABASE_NAME \
	--dbuser=$MYSQL_USER_NAME \
	--dbpass=$MYSQL_USER_PASSWORD \
	--dbhost=$DB_HOST \
	--locale=en_GER \
	--allow-root

wp-cli core install --url=$DOMAIN_NAME \
	--title=$BLOG_TITLE \
	--admin_user=$WORDPRESS_USER_NAME \
	--admin_password=$WORDPRESS_ROOT_PASSWORD \
	--admin_email=$ADMIN_EMAIL \
	--allow-root