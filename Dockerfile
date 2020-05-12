FROM ubuntu
ARG_DEBIAN_FRONTEND=noninteractive
ADD index.html /var/www/html/
RUN apt-get update and apt-get install apache2 -y
EXPOSE 80
CMD ["usr/sbin/apache2ctl', "-DEFOREGROUND"]
