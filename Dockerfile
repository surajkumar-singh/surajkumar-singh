FROM ubuntu:latest
MAINTAINER Hadoop Engineering
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt install apache2 -y
#RUN mkdir -p /var/lock/apache2
#RUN mkdir -p /var/run/apache2

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_PID_FILE /var/run/apache2.pid
#ENV APACHE_RUN_DIR /var/run/apache2
#ENV APACHE_LOCK_DIR /var/lock/apache2
#ENV APACHE_LOG_DIR /var/log/apache2
#ENV LANG C
COPY index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
#ENV COOL
EXPOSE 80


