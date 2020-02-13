# The Werf in image
> for run jobs Docker-in-Docker

### Build
see [Makefile](./Makefile)

### How to use

#### Bash
```bash
$ docker run --entrypoint ash --rm -it -v /var/run/docker.sock:/var/run/docker.sock diamon/werf-dind
```

#### Gitlab-CI
```yaml
variables:
  WERF_STAGES_STORAGE: ":local"
  WERF_IMAGES_REPO: $CI_REGISTRY/$CI_PROJECT_NAME
  WERF_TAG_GIT_COMMIT: $CI_COMMIT_TAG
  WERF_INSECURE_REGISTRY: "false"
  WERF_LOG_COLOR_MODE: "on"

werf build-and-publish:
  stage: build
  image:
    name: diamon/werf-dind
    entrypoint: [""]
  script:
    - echo $WERF_IMAGES_REPO
    - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
    - werf build-and-publish --tag-custom=latest
  only: 
    - master
```