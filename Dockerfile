FROM httpd

#COPY index.html /usr/share/nginx/html

COPY index.hml /var/www/html/

EXPOSE 80

