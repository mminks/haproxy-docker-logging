FROM haproxy:alpine

LABEL maintainer="Meik Minks <mminks@inox.io>"

COPY docker-entrypoint.sh /
