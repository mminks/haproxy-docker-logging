FROM haproxy:alpine

LABEL maintainer="Meik Minks <mminks@inox.io>"

RUN apk add --no-cache tini

COPY startup.sh /usr/local/sbin/startup.sh
RUN chmod +x /usr/local/sbin/startup.sh

CMD ["/sbin/tini", "/usr/local/sbin/startup.sh"]