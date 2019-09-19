# Werf simple image
> for run jobs Docker-in-Docker

### Build
see [Makefile](./Makefile)

### How to use
```bash
$ docker run --entrypoint bash --rm -it -v /var/run/docker.sock:/var/run/docker.sock docker.pkg.github.com/zhilyaev/werf-dind/werf:latest
Unable to find image 'docker.pkg.github.com/zhilyaev/werf-dind/werf:latest' locally
latest: Pulling from zhilyaev/werf-dind/werf
9d48c3bd43c5: Already exists 
1eb76a41ffef: Pull complete 
fc7475c0d6c9: Pull complete 
Digest: sha256:ca87fdc2f7e6c7ef00edc5437b5fb0eebfba670dc75fb327bb4c8c2a6ca06e66
Status: Downloaded newer image for docker.pkg.github.com/zhilyaev/werf-dind/werf:latest
bash-5.0# docker ps
CONTAINER ID        IMAGE                                                  COMMAND             CREATED             STATUS              PORTS               NAMES
bec3f0cb34b5        docker.pkg.github.com/zhilyaev/werf-dind/werf:latest   "bash"              4 seconds ago       Up 3 seconds                            adoring_pasteur

```
