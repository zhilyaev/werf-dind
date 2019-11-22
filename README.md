# Werf simple image
> for run jobs Docker-in-Docker

### Build
see [Makefile](./Makefile)

### How to use
```bash
$ docker run --entrypoint ash --rm -it -v /var/run/docker.sock:/var/run/docker.sock diamon/werf-dind
```
