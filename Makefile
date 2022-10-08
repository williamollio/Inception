up :
	sudo docker-compose -f ./srcs/docker-compose.yml up

build :
	sudo docker-compose -f ./srcs/docker-compose.yml build

down :
	sudo docker-compose -f ./srcs/docker-compose.yml down

clean :
	sudo docker system prune -a -f

fclean :
	sudo docker system prune -a -f --volumes
	sudo docker volume rm srcs_mariadb-data && sudo docker volume rm srcs_wordpress-data

ps :
	sudo docker-compose -f ./srcs/docker-compose.yml ps

mariadb :
	sudo docker-compose -f ./srcs/docker-compose.yml up mariadb

wordpress :
	sudo docker-compose -f ./srcs/docker-compose.yml up wordpress

nginx :
	sudo docker-compose -f ./srcs/docker-compose.yml up nginx
