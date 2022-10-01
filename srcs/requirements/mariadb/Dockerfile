FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y mariadb-server

ARG MYSQL_USER_NAME
ARG MYSQL_USER_PASSWORD
ARG DATABASE_NAME
ARG MYSQL_ROOT_PASSWORD

COPY ./conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start && \
	mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER_NAME}' IDENTIFIED BY '${MYSQL_USER_PASSWORD}'; " && \
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME}; " && \
	mysql -u root -e "GRANT ALL PRIVILEGES ON ${DATABASE_NAME}.* TO '${MYSQL_USER_NAME}'; FLUSH PRIVILEGES;" && \
	mysql -u root -e " ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"

RUN service mysql stop

EXPOSE 3306

ENTRYPOINT [ "mysqld_safe" ]




