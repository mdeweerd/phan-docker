FROM alpine:3.17.1

COPY ./docker-entrypoint.sh /
ADD ./rootfs.tar.gz /
ENTRYPOINT ["/sbin/tini", "-g", "--", "/docker-entrypoint.sh"]
