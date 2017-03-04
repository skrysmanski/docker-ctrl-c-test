FROM krys/ubuntu-base

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "127.0.0.1" ]

# Add some debuggability
COPY Dockerfile /
