FROM privateport/alpine-rpi
MAINTAINER Kristofor Carle <kris@maphubs.com>

RUN apk add --update bash py-pip && pip install awscli
ADD watch /watch

RUN mkdir ~/.aws

VOLUME /data

ENTRYPOINT [ "./watch" ]
CMD ["/data"]
