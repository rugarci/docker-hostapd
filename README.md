# docker-hostapd

[![Latest Github release](https://img.shields.io/github/release/rugarci/docker-hostapd.svg)](https://github.com/rugarci/docker-hostapd/releases/latest)
[![Image size](https://img.shields.io/docker/image-size/rugarci/hostapd/latest)](https://hub.docker.com/r/rugarci/hostapd)
[![Docker Pulls](https://img.shields.io/docker/pulls/rugarci/hostapd.svg)](https://hub.docker.com/r/rugarci/hostapd)


Tested on Raspberry Pi Zero 2

## Usage

```yaml 

hostapd:
    image: rugarci/hostapd
    container_name: hostapd
    network_mode: host
    privileged: true
    environment:
      - INTERFACE=wlan0
      - OUTGOINGS=wlan0
    volumes:
      - "/etc/timezone:/etc/timezone:ro"
      - "/etc/localtime:/etc/localtime:ro"
    restart: always
    
```
