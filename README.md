HAProxy with stdout logging
=====

### About this image

This image uses latest Alpine-based HAProxy image, starts rsyslog and provides stdout logging.

### Configuration

To use stdout logging with your Docker container, please use this snippet in your HAProxy config:

```
global
    log 127.0.0.1 local0 debug

defaults
    log global
```

### Usage

Please visit [official HAProxy repository](https://hub.docker.com/_/haproxy/) for information on how to use this image. It is pretty the same.

### Example

Mounting a HAProxy configuration file is mandatory. This image doesn't include any configuration itself. See the `-v` section below.

```
docker run -d \
           -p <host port>:<container port> \
           -p <host port>:<container port> \
           -v /path/to/haproxy/config:/usr/local/etc/haproxy/haproxy.cfg:ro \
           --name haproxy \
           mminks/haproxy-docker-logging
```

#### Reload HAProxy

Reload your HAProxy in case of config changes without restarting the complete container. Send a SIGHUP signal to the container an the HAProxy process will reload gracefully.

```
docker kill -s SIGHUP haproxy
```

### Contribution

I welcome any kind of contribution. Fork it or contact me. I appreciate any kind of help.


