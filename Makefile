.PHONY: build, docker

build: 
	go build -o micro main.go plugins.go

docker:
	docker build . -t micro:custom