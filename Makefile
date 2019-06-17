.PHONY: build, docker

build:
	go build -o micro main.go plugins.go

docker:
	docker build . -t saaskit/micro:latest && docker push saaskit/micro:latest
