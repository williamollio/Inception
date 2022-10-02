up :
	docker-compose up

down :
	docker-compose down

clean :
	docker system prune -a -f

fclean :
	docker system prune -a -f --volumes
