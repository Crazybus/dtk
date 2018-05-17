FROM alpine:3.7

RUN apk update && \
    apk add \
      htop \
      mtr \
      ncdu \
      net-tools \
      nmap \
      tcptraceroute \
