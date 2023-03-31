FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y unzip
RUN sudo echo "my name is sarwar" > index.html /var/www/html/ 
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22