VERSION=1.0.4-beta.20


.PHONY: build run publish
build:
	docker build --build-arg VERSION=$(VERSION) -t werf:$(VERSION) .

run:
	docker run --entrypoint bash --rm -it -v /var/run/docker.sock:/var/run/docker.sock werf:$(VERSION)

publish:
	docker tag werf:$(VERSION) dcr.living-team.ru/werf:latest
	docker push dcr.living-team.ru/werf:latest
