FROM  almalinux:8
MAINTAINER ratnakarbabu.raavi@gmail.com
RUN apt install -y httpd \
 zip\
 unzip
COPY photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22