FROM alpine/git
RUN apk update && \
    apk add --no-cache openrc curl docker bash && \
    rc-update add docker boot

SHELL ["/bin/bash", "-c"]
ARG VERSION="1.2.0+fix9"
RUN curl -L "https://dl.bintray.com/flant/werf/v$VERSION/werf-linux-amd64-v$VERSION" -o /usr/local/bin/werf && \
    chmod +x /usr/local/bin/werf

ENTRYPOINT ["/usr/local/bin/werf"]
