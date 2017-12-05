FROM tomcat:9-alpine

MAINTAINER Gustavo Oliveira <cetres@gmail.com>

ENV ORDS_BUILD=3.0.12.263.15.32

ADD data/ords.${ORDS_BUILD}.zip /tmp/

RUN apk update && \
    unzip -q /tmp/ords.${ORDS_BUILD}.zip -d ${CATALINA_HOME}/webapps
