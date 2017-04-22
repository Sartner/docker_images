FROM node:7-alpine

MAINTAINER Sartner <sartner@foxmail.com>

ADD ./resources/* /srv/gitbook/

RUN npm install --global gitbook-cli &&\
	gitbook fetch 3.2.2 &&\
	npm install gitbook-plugin-prism &&\
	npm install gitbook-plugin-navigator &&\
	npm install gitbook-plugin-simple-page-toc &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

VOLUME /srv/gitbook /srv/html

EXPOSE 4000 35729

CMD ["/usr/local/bin/gitbook","serve"]