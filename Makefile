VERSION=1.0.4-beta.5


.PHONY: build run publish
build:
	docker build --build-arg VERSION=$(VERSION) -t werf:$(VERSION) .

run:
	docker run --entrypoint bash --rm -it -v /var/run/docker.sock:/var/run/docker.sock werf:$(VERSION)

publish:
	docker tag werf:$(VERSION) docker.pkg.github.com/zhilyaev/werf-dind/werf:latest
	docker push docker.pkg.github.com/zhilyaev/werf-dind/werf:latest
