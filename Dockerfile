FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y unzip
RUN cat "my name is sarwar" > /var/www/html/
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22