FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
ADD index.html /var/www/html/
RUN apt-get update && apt-get install apache2 -y
EXPOSE 80
CMD ["usr/sbin/apache2ctl', "-DEFOREGROUND"]
