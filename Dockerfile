FROM centos:latest
RUN yum update -y
RUN yum install -y apache2
RUN yum install -y zip
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip brighton.zip
RUN cp -rvf brighton.zip/* .
RUN rm -rf brighton brighton.zip
CMD ["/usr/sbin/httpd/", "-D", "FOREGROUND"]
EXPOSE 80 22