FROM centos:latest
MAINTAINER sai.beekle@gmail.com
RUN yum update -y
RUN yum install httpd -y
RUN yum install zip -y 
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/jack-and-rose.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jack-and-rose.zip 
RUN cp free-wedding-website-template/* .
RUN rm -rf jack-and-rose.zip free-wedding-website-template  
CMD ["/usr/sbin/httpd","-D","FOREFROUND"]
EXPOSE 80
