project=$(shell basename $(shell pwd))

in:
	@docker exec --user=php -it "$(project)-php-fpm-1" /bin/bash

up:
	@docker-compose up -d

down:
	@docker-compose down

rebuild:
	@docker-compose down
	@docker-compose build
	@docker-compose up -d

tail:
	@docker compose logs --follow


