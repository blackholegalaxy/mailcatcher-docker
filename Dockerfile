FROM ruby:2.4-alpine3.7

LABEL maintainer="blackholegalaxy"

RUN set -xe \
    && apk add --update --no-cache \
        libstdc++ \
        sqlite-libs \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        sqlite-dev \
    && gem install mailcatcher -v 0.6.5 --no-ri --no-rdoc \
    && apk del .build-deps

EXPOSE 1025 1080

ENTRYPOINT ["mailcatcher", "-f", "--ip", "0.0.0.0"]