FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nginx \
	apt-get install -y openssl

RUN openssl req -x509 \
	-nodes \
	-days 365 \
	-newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=example.com"

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/.

RUN mkdir template

COPY ./tools/index.html /template/index.html
COPY ./tools/index.html /etc/nginx/sites-available/.

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]

# https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10
# https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-on-debian-10