ARG DEBIAN_VERSION

FROM debian:${DEBIAN_VERSION}

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    x11-apps \
    && apt-get purge -y && apt-get autoremove -y && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash", "-c"]

CMD ["xeyes"]
