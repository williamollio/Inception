up :
	docker-compose -f ./srcs/docker-compose.yml up

build :
	docker-compose -f ./srcs/docker-compose.yml build

down :
	docker-compose -f ./srcs/docker-compose.yml down

clean :
	docker system prune -a -f

fclean :
	docker system prune -a -f --volumes

ps :
	docker-compose -f ./srcs/docker-compose.yml ps

mariadb :
	docker-compose -f ./srcs/docker-compose.yml up mariadb

wordpress :
	docker-compose -f ./srcs/docker-compose.yml up wordpress

nginx :
	docker-compose -f ./srcs/docker-compose.yml up nginx
