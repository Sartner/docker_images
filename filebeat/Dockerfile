FROM alpine:3.5

MAINTAINER Sartner <sartner@foxmail.com>

ENV FILEBEAT_VERSION=5.4.0

RUN set -ex \
    && apk add --update --no-cache wget \
    && cd /usr/local
    && wget  --no-check-certificate https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz \
    && tar -zxvf filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz
    && mv ./filebeat-5.4.0-linux-x86_64/filebeat /bin
    && apk del wget \
    && rm -rf ./filebeat* /tmp/* /var/cache/apk/* \

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

