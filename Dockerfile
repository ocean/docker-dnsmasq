FROM alpine:3.13
RUN apk -U upgrade \
  && apk --no-cache add dnsmasq-dnssec \
  && rm -rf /var/cache/apk/*
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
