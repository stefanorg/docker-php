FROM php:cli

ENV HOME /root

RUN apt-get update -qq && \
	apt-get install -y -qq sudo \
		curl && \
	apt-get -y clean

RUN echo "date.timezone = Europe/Rome" >> /usr/local/etc/php/php.ini

WORKDIR /srv
