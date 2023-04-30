all: folder host up

folder:
	sudo mkdir -p /home/hde-oliv/data/mariadb && sudo chmod 777 /home/hde-oliv/data/mariadb
	sudo mkdir -p /home/hde-oliv/data/wordpress && sudo chmod 777 /home/hde-oliv/data/wordpress

host:
	sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep hde-oliv.42.fr || \
	sudo echo "127.0.0.1 hde-oliv.42.fr" >> /etc/hosts

up:
	sudo docker-compose -f srcs/docker-compose.yml up -d

down:
	sudo docker-compose -f srcs/docker-compose.yml down

build:
	sudo docker-compose -f srcs/docker-compose.yml build --no-cache

clean:
	sudo docker-compose -f srcs/docker-compose.yml down -v --rmi all --remove-orphans
	sudo -n sed '/127.0.0.1 hde-oliv.42.fr/d' /etc/hosts -n
	sudo rm -rf /home/hde-oliv

fclean: clean
	sudo docker system prune --volumes --all --force

re: fclean all

.PHONY: all
