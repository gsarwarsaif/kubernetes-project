FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get -y httpd
RUN touch "My name is gulam sarawr" > /var/www/httpd
WORKDIR /var/www/ht
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22