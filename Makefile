DOCKER_COMMAND := sudo docker-compose

all: setup up

up: setup
	$(DOCKER_COMMAND) -f srcs/docker-compose.yml up -d

setup:
	@sudo mkdir -p /home/hde-oliv/data/mariadb && sudo chmod 777 /home/hde-oliv/data/mariadb
	@sudo mkdir -p /home/hde-oliv/data/wordpress && sudo chmod 777 /home/hde-oliv/data/wordpress
	@sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep hde-oliv.42.fr || sudo echo "127.0.0.1 hde-oliv.42.fr" >> /etc/hosts

down:
	@$(DOCKER_COMMAND) -f srcs/docker-compose.yml down

build:
	@$(DOCKER_COMMAND) -f srcs/docker-compose.yml build --no-cache

clean:
	@$(DOCKER_COMMAND) -f srcs/docker-compose.yml down -v --rmi all --remove-orphans
	@sudo -n sed '/127.0.0.1 hde-oliv.42.fr/d' /etc/hosts -n
	@sudo rm -rf /home/hde-oliv

fclean: clean
	@sudo docker system prune --volumes --all --force

re: fclean all

.PHONY: all
