SHELL := /bin/bash

all: sales-api

up:
		docker-compose up -d

stop:
		docker-compose stop

down:
		docker-compose down -v

clean:
		docker system prune -f


stop-all:
		docker stop $(docker ps -aq)

remove-all:
		docker rm $(docker ps -aq)