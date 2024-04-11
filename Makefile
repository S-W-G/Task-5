SHELL := /bin/bash
OS ?= linux
ARCH ?= amd64
IMAGE_TAG ?= your-app:$(OS)-$(ARCH)

.PHONY: all clean linux arm macos windows docker-build

all: linux arm macos windows

linux:
	docker build -t $(IMAGE_TAG) --build-arg OS=$(OS) --build-arg ARCH=$(ARCH) .
	docker push $(IMAGE_TAG)

arm:
	$(MAKE) OS=linux ARCH=arm64 docker-build

macos:
	$(MAKE) OS=darwin ARCH=amd64 docker-build

windows:
	$(MAKE) OS=windows ARCH=amd64 docker-build

docker-build:
	docker build -t $(IMAGE_TAG) --build-arg OS=$(OS) --build-arg ARCH=$(ARCH) .
	docker push $(IMAGE_TAG)

clean:
	docker images -q -f reference=$(IMAGE_TAG) | xargs -r docker rmi
