FROM ubuntu
MAINTAINER racing1 (rachid.laredj@hotmail.com) 
RUN apt-get update
RUN DEBIAN_FRONTEND=nointeractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/racing1/webapp.git /var/www/html/ 
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
 

