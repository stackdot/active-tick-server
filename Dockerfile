FROM ubuntu:14.04

RUN apt-get update; apt-get install wget -y

RUN wget https://www.activetick.com/activetick/contents/binaries/atfeedapi/atfeed-httpserver-ubuntu.x86_64.tar.gz; \
	tar -zxvf atfeed-httpserver-ubuntu.x86_64.tar.gz; \
	rm -rf atfeed-httpserver-ubuntu.x86_64.tar.gz; \
	mv atfeed-httpserver/bin/* /usr/local/bin

ENV LD_LIBRARY_PATH=/usr/local/bin/

COPY start.sh /usr/local/bin/start.sh

CMD [ "start.sh" ]