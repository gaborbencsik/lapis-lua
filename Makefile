SHELL=/bin/bash
.PHONY: up-d up down restart ssh

help: ##                 Show this help
	@echo "Targets:"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/\(.*\):.*##[ \t]*/    \1 ## /' | sort | column -t -s '##'

up-d: ## Start containers detached
	docker-compose up -d

up: ## Start containers
	docker-compose up

down: ## Stops containers
	docker-compose down

restart: down up ## Restart containers

ssh:    ## SSH into container
	docker-compose run app bash
