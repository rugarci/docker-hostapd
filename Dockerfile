ARG ALPINE_BASE=3.12.9

FROM alpine:$ALPINE_BASE

ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="docker-hostapd" \
    org.label-schema.version=$VERSION \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/rugarci/docker-hostapd" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.schema-version="1.0"

RUN apk add --no-cache bash hostapd iptables dhcp docker iproute2 iw
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

RUN chmod +x /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
