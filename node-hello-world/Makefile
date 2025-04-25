IMAGE_NAME=hello-web
CONTAINER_NAME=hello-web-container
PORT=3000

.PHONY: build run stop clean

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -d -p $(PORT):$(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)

clean: stop
	-docker rm $(CONTAINER_NAME)
	-docker rmi $(IMAGE_NAME)
