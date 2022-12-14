# About

This repository aims to introduce you to the beautiful world of [Docker](https://docs.docker.com). In order to do that, we'll work on the [42](https://www.42heilbronn.de/en/) project named Inception.

# Inception

You can read the [subject](https://github.com/williamollio/Inception/blob/master/ressources/inception.pdf) beforehands to have an overview of the global scope. However the instruction for our session are written down on this readme.

The goal of this project is to create a small infrastructure composed of several services - resulting of using the LEMP Stack. And this by using docker-compose.

<img src="https://user-images.githubusercontent.com/54292953/147146268-a616f39a-3f16-41f8-80c9-db5494c3dfe7.png"/>

In order to do so, we have to create a network of containers accessible from the outside only through the port 443.
### Containers
- NGINX
- WordPress
- MariaDB

They must be built from the penultimate stable version of Alpine Linux, or from Debian Buster.

Warning : pulling ready made images from DockerHub  is forbidden. We have to built by yourself the images.

### Bind mounts

These are the persistent data :
- WordPress database
- WordPress files

### Docker network

Give the ability to the containers to communication between each other.

### Warning
For make it work you need to have the two following folders in the file system on your host machine : /home/wollio/data/wordpress and /home/wollio/data/mariadb
