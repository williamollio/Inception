up :
	docker-compose up

build :
	docker-compose build

down :
	docker-compose down

clean :
	docker system prune -a -f

fclean :
	docker system prune -a -f --volumes

mariadb :
	docker-compose up mariadb

wordpress :
	docker-compose up wordpress

nginx :
	docker-compose up nginx
