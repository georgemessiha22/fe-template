#!/usr/bin/env make

include ./dev/makefiles/help.mk

### fe-template
## Build docker dev image
build:
	echo "Building"
	docker compose build
.PHONY: build

## Create the local setup
init: build
	echo "Setuping"

