
FIG=docker-compose
RUN_WEB=$(FIG) run --rm web
EXEC_WEB=$(FIG) exec web

.DEFAULT_GOAL := help
.PHONY: help build install start stop boot debug debug-root db db-migrate test

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##
## Project setup
##---------------------------------------------------------------------------

build:          ## Build the Docker image
build:
	$(FIG) build



start:          ## Install the full project (build install db db-migrate up)
start: build up

stop:           ## Stop containers
stop:
	$(FIG) kill
	$(FIG) rm -v --force

up:             ## Run images
up:
	docker-compose up -d

##
## Tests
##---------------------------------------------------------------------------

debug:          ## Debug container
debug:
	$(EXEC_WEB) gosu docker bash

debug-root:     ## Debug container as Root user
debug-root:
	$(EXEC_WEB) bash

##