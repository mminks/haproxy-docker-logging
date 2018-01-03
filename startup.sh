#!/bin/sh

/sbin/syslogd -O /proc/1/fd/1
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
