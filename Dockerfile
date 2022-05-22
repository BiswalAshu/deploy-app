FROM httpd

#COPY index.html /usr/share/nginx/html

COPY index.php /usr/local/apache2/htdocs
COPY index.php /var/www/html

EXPOSE 80

#FROM centos:latest
#RUN yum install httpd -y
#COPY index.html /var/www/html/

#CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
#EXPOSE 80