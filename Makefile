up:
	docker-compose build && docker-compose up

up-no-cache:
	docker-compose rm --all && \
	docker-compose pull && \
	docker-compose build --no-cache && \
	docker-compose up -d --force-recreate

stop:
	docker-compose stop
