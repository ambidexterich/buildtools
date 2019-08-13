FROM debian:stretch

RUN set -ex; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            python \
            g++ \
            make \
            curl \
        rm -rf /var/lib/apt/lists/*