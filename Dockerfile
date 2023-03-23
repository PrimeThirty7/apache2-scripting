FROM php:8.1-apache-buster

MAINTAINER primethirty7

RUN apt-get update
RUN apt-get install vim python3 python3-pip -y
RUN cp /etc/apache2/mods-available/cgi.* /etc/apache2/mods-enabled/
RUN cp /etc/apache2/mods-available/cgid.* /etc/apache2/mods-enabled/
RUN mkdir -p /var/www/cgi-bin
RUN chmod 755 /var/www/cgi-bin

# add local files
COPY root/ /

EXPOSE 18080/tcp
