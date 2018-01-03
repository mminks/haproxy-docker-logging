HAProxy with stdout logging (syslogd)
=====

This image uses the latest Alpine-based HAProxy, adds [tini](https://github.com/krallin/tini), starts syslogd and provides stdout logging.

### Configuration

To use stdout logging with your Docker container, please use this snippet in your HAProxy config: 

```
defaults
    log global
    log /dev/log local0
```

### Usage

Please visit [official HAProxy repository](https://hub.docker.com/_/haproxy/) for information on how to use this image. It is pretty the same.

### Example

```
docker run -d --rm --name haproxy-docker-logging --rm \
           -p <host port>:<container port> \
           -v /path/to/haproxy/config:/usr/local/etc/haproxy:ro \
           mminks/haproxy-docker-logging
```
