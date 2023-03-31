FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y zip
RUN apt-get install -y gunzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip
WORKDIR /var/www/html/
RUN gunzip brighton.zip/
RUN cp -rvf brighton.zip/* .
RUN rm -rf brighton brighton.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22