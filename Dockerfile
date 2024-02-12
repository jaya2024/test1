FROM ubunu
RUN apt-get update
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils
RUN apt-get clean
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
CMD ["apachectl", "-D",  "FOREGROUND"]


