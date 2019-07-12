# ub1nu11 samurai v 1.0
FROM ubuntu:latest
# RUN /plugins.sh

MAINTAINER "Ventsislav Varbanovski @nu11secur1ty version 1.0"

# ENV DEBIAN_FRONTEND noninteractive
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install --assume-yes apache2 php vim

# RUN apt-get update && apt-get install -y apache2 php vim

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid


RUN rm -rf /var/www/html/*
COPY /web/* /var/www/html/

EXPOSE 8080

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
