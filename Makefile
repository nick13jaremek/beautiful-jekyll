CURRENT_DIR = $(shell pwd)
DOCKER_IMAGE = "beautiful-jekyll"

start:
	bundle exec jekyll serve

docker-build:
	docker build -t $(DOCKER_IMAGE) "$(CURRENT_DIR)"

docker-start:
	docker start $(DOCKER_IMAGE)

docker-stop:
	docker stop $(DOCKER_IMAGE)