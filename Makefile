.PHONY: help build docker config status api-deploy api-down web-deploy web-down

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build micro
	go build -o micro main.go plugins.go

docker: ## Build docker image and push to docker hub
	docker build . -t saaskit/micro:latest && docker push saaskit/micro:latest

config: ## Upload configs from file to the k8s configmap
	kubectl delete configmap micro
	kubectl create configmap micro --namespace default --from-file=./config
	# kubectl apply -f config/dev.yml

status: ## Show status of the cluster
	kubectl get all

api-deploy: ## Deployment of the API proxy
	kubectl apply -f api-deploy.yml -f api-service.yml

api-down: ## Shut down of the API proxy
	kubectl delete -f api-deploy.yml -f api-service.yml

web-deploy: ## Deployment of the web proxy
	kubectl apply -f web-deploy.yml -f web-service.yml

web-down: ## Shut down of the web proxy
	kubectl delete -f web-deploy.yml -f web-service.yml


%:
	@:
