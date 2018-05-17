default: build

SHELL:=/bin/bash -eux

VERSION = 1.0.0
IMAGE = crazybus/dtk:${VERSION}

build:
	docker build -t ${IMAGE} .

run: build
	docker run --rm -ti ${IMAGE} sh

deploy: build
	docker push ${IMAGE}
