FROM debian:stretch

RUN set -ex; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            python \
            dirmngr \
            g++ \
            gnupg \
            make \
            curl \
        ; \
        rm -rf /var/lib/apt/lists/*