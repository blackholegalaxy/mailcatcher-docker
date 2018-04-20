# Mailcatcher Docker version

[![Build Status](https://travis-ci.org/blackholegalaxy/mailcatcher-docker.svg?branch=master)](https://travis-ci.org/blackholegalaxy/mailcatcher-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/blackholegalaxy/mailcatcher.svg?maxAge=8600)][hub]

[hub]: https://hub.docker.com/r/blackholegalaxy/mailcatcher/

[MailCatcher](https://github.com/sj26/mailcatcher) docker image with CLI commands support.

## MailCatcher usage

```
mailcatcher [options]
        --ip IP                      Set the ip address of both servers
        --smtp-ip IP                 Set the ip address of the smtp server
        --smtp-port PORT             Set the port of the smtp server
        --http-ip IP                 Set the ip address of the http server
        --http-port PORT             Set the port address of the http server
        --no-quit                    Don't allow quitting the process
        -f, --foreground             Run in the foreground
        -v, --verbose                Be more verbose
        -h, --help                   Display this help information
```

## Default Docker usage

The following command will run mailcatcher with SMTP port set to `1025` and HTTP port set to `1080`:
```
$ docker run -p 1080:1080 -p 1025:1025 --name mailcatcher blackholegalaxy/mailcatcher
```

## Use CLI in docker

By default, mailcatcher docker will run with the following arguments:
```
-f --ip 0.0.0.0
```

You can use any supported argument using the following syntax:

```
$ docker run -p 1080:8888 -p 1025:1025 --name mailcatcher blackholegalaxy/mailcatcher --http-port 8888
```

This example changes the http port to `8888`
