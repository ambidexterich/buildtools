FROM debian:stretch

RUN set -ex; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            python \
            g++ \
            make \
            curl \
        ; \
        rm -rf /var/lib/apt/lists/*

RUN set -ex; \
        if ! command -v gpg > /dev/null; then \
            apt-get update; \
            apt-get install -y --no-install-recommends \
                gnupg \
                dirmngr \
            ; \
            rm -rf /var/lib/apt/lists/*; \
        fi