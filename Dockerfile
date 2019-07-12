# ub1nu11 samurai v 1.0
FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
MAINTAINER "Ventsislav Varbanovski @nu11secur1ty version 1.0"

# Ubuntu LAMP stack with Apache, MariaDB, PHP, and SSL
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

# Install Apache, SSL, PHP, and some PHP modules
RUN apt-get update && apt-get install -y apache2 \
 mariadb-server \
 openssl \
 php \
 php-cli \
 php-apcu

# Install MariaDB and set default root password
RUN echo 'mariadb-server mariadb-server/root_password  password mypassword' | debconf-set-selections
RUN echo 'mariadb-server mariadb-server/root_password_again password mypassword' | debconf-set-selections

# Disable the default Apache site config
# Install your site's Apache configuration and activate SSL

#ADD your_apache.conf /etc/apache2/sites-available/
RUN a2dissite 000-default
RUN a2enmod ssl

# Remove APT files
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN rm -rf /var/www/html/*
COPY /web/* /var/www/html/

EXPOSE 8080
# EXPOSE 443 8080

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
