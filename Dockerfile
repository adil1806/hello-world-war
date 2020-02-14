From tomcat:jdk8
MAINTAINER "mak@gmail.com"
WORKDIR /opt/docker
COPY ./demo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
