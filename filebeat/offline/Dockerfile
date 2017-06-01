FROM alpine:3.5

MAINTAINER Sartner <sartner@foxmail.com>

ADD filebeat*.tar.gz /usr/local

RUN set -ex \
    && mv /usr/local/filebeat*/filebeat /bin \
    && rm -rf /usr/local/filebeat*

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

