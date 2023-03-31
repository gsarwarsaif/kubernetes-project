FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get -y apache2
RUN apt-get -y zip
RUN apt-get -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip brighton.zip
RUN cp -rvf brighton.zip/* .
RUN rm -rf brighton brighton.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22