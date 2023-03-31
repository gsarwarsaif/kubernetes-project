FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/foodfinda.zip
RUN cd /etc/www/httpd/
RUN gunzip foodfindia.zip
RUN cp -rvf foodfindia/* .
RUN rm -rf foodfindia foodfinda.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22