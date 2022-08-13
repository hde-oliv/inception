
folder:
	sudo mkdir -p /home/hde-oliv/data

up: folder
	cd srcs && docker-compose up -d

up_build: build_broker
	docker-compose down
	docker-compose up --build -d

down:
	docker-compose down

build_broker:
	cd broker-service && env GOOS=linux CGO_ENABLED=0 go build -o ${BROKER_BINARY} ./cmd/api

build_front:
	cd front-end && env CGO_ENABLED=0 go build -o ${FRONT_END_BINARY} ./cmd/web

start: build_front
	cd front-end && ./${FRONT_END_BINARY} &

stop:
	pkill -SIGTERM -f "./${FRONT_END_BINARY}"

kill: stop down
