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
# Run on the Mirror
include: https://gitlab.com/g-ci/build/-/raw/master/werf.yml

variables:
  WERF_VERSION: 1.1.14
  WERF_IMAGES_REPO: hub.docker.com/<user>/<repo>

```