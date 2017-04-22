FROM node:7-alpine

MAINTAINER Sartner <sartner@foxmail.com>

ADD ./resources/* /srv/gitbook/

WORKDIR /srv/gitbook

RUN npm install --global gitbook-cli &&\
	gitbook fetch 3.2.2 &&\
	gitbook install && \
	npm cache clear &&\
	rm -rf /tmp/*

VOLUME /srv/gitbook /srv/html

EXPOSE 4000 35729

CMD ["/usr/local/bin/gitbook","serve"]