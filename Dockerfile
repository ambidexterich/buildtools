FROM debian:stretch-slim

RUN set -ex; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            ca-certificates \
            python \
            dirmngr \
            g++ \
            gnupg \
            make \
            curl \
        ; \
        rm -rf /var/lib/apt/lists/*