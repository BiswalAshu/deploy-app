#FROM httpd

#COPY index.html /usr/share/nginx/html

#COPY index.php /usr/local/apache2/htdocs
#COPY index.php /var/www/html

#EXPOSE 80

FROM centos:latest
USER root
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y
RUN yum install httpd -y
RUN yum install php -y
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80