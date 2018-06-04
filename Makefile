default: build

SHELL:=/bin/bash -eux

IMAGE = crazybus/dtk

build:
	docker build -t ${IMAGE} .

run: build
	docker run --rm -ti ${IMAGE} sh

deploy: build
	docker push ${IMAGE}
