FROM ubuntu
MAINTAINER vinaysinghhata5@gmail.com
RUN apt-get -y update 
RUN apt-get -y  install apache2
RUN apt-get -y install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/multishop.zip /tmp
RUN unzip /tmp/multishop.zip
RUN rm /var/www/html/*
RUN cp -r  /online-shop-website-template/* /var/www/html/
##RUN service apache2 restart
CMD  ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
