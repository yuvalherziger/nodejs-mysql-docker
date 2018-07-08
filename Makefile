up:
	docker-compose build && docker-compose up

up-no-cache:
	docker-compose rm --all && \
	docker-compose pull && \
	docker-compose build --no-cache && \
	docker-compose up -d --force-recreate

clean-untagged:
	docker images | awk '$2 == "<none>"{print($3)}'  | xargs docker rmi

stop:
	docker-compose stop
