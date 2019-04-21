FROM ruby:2.6-alpine3.8

LABEL maintainer="blackholegalaxy"

RUN set -xe \
    && apk add --update --no-cache \
        libstdc++ \
        sqlite-libs \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        sqlite-dev \
    && gem install mailcatcher -v 0.7.1 --no-ri --no-rdoc \
    && apk del .build-deps

EXPOSE 1025 1080

ENTRYPOINT ["mailcatcher", "-f", "--ip", "0.0.0.0"]
