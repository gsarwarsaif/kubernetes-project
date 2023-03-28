FROM ubuntu:latest
RUN apt install -y httpd
Run apt install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/foodfinda.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip foodfindia.zip
RUN cp -rvf foodfindia/* .
RUN rm -rf foodfindia foodfinda.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22