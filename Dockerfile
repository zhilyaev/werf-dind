FROM alpine
RUN apk update && \
    apk add --no-cache openrc curl docker git && \
    rc-update add docker boot

ARG VERSION=1.0.10
RUN curl -L https://dl.bintray.com/flant/werf/v$VERSION/werf-linux-amd64-v$VERSION -o /usr/local/bin/werf && \
    chmod +x /usr/local/bin/werf
