FROM httpd

#COPY index.html /usr/share/nginx/html

COPY index.hml /usr/local/apache2/htdocs

EXPOSE 80

#FROM centos:latest
#RUN yum install httpd -y
#COPY index.html /var/www/html/

#CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
#EXPOSE 80