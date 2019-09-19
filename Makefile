VERSION=1.0.4-beta.5


.PHONY: build run
build:
	docker build --build-arg VERSION=$(VERSION) -t werf .
	docker tag werf werf:$(VERSION)

run:
	docker run --entrypoint bash --rm -it -v /var/run/docker.sock:/var/run/docker.sock werf:$(VERSION)