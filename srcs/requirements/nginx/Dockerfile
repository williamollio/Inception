FROM debian:buster

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install -y nginx

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/.

RUN mkdir template

COPY ./tools/index.html /template/index.html
COPY ./tools/index.html /etc/nginx/sites-available/.

CMD ["nginx", "-g", "daemon off;"]

#https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10