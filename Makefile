CURRENT_DIR = $(shell pwd)
start:
	bundle exec jekyll serve

docker-build:
	docker build -t beautiful-jekyll "$(CURRENT_DIR)"

docker-start:
	docker start beautiful-jekyll
