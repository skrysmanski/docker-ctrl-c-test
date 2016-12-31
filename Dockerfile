FROM krys/ubuntu-base

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping

ENTRYPOINT [ "ping", "127.0.0.1" ]
