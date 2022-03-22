# Container dnsmasq

A container image for running dnsmasq, a lightweight, easy to configure, DNS forwarder and
DHCP server. Use it in your docker environments.

## Configuration

There is a `dnsmasq.conf` in this repo. That file is copied to the container at `/etc/dnsmasq/dnsmasq.conf`. You can
override configurations by mounting your own file at the same location.

## Running

```bash
docker run -it \
    -v $PWD/dnsmasq.conf:/etc/dnsmasq/dnsmasq.conf \
    -p 53:53 -p 53:53/udp
    registry.gitlab.com/shouptech/container-dnsmasq
```
