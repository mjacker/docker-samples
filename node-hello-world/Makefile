IMAGE_NAME=hello-node-web
CONTAINER_NAME=hello-node-web-ctr
PORT=3000

.PHONY: build run test stop clean

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -d -p $(PORT):$(PORT) --name $(CONTAINER_NAME) $(IMAGE_NAME)

test:
	curl localhost:$(PORT)

stop:
	docker stop $(CONTAINER_NAME)

clean: stop
	-docker container rm $(CONTAINER_NAME)
	-docker rmi $(IMAGE_NAME)
