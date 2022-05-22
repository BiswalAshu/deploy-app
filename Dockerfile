#FROM httpd

#COPY index.html /usr/share/nginx/html

#COPY index.hml /var/www/html/

#EXPOSE 80

FROM centos
RUN yum install httpd -y
COPY index.html /var/www/html/

CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80