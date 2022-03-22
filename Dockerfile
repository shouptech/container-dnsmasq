FROM alpine:3.14

LABEL maintainer "mike@shoup.io"

RUN apk add --no-cache dnsmasq-dnssec

VOLUME /etc/dnsmasq
COPY ./dnsmasq.conf /etc/dnsmasq/dnsmasq.conf

EXPOSE 53/tcp 53/udp

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-k", "-C", "/etc/dnsmasq/dnsmasq.conf"]
