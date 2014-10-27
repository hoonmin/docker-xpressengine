FROM ubuntu:14.04
 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update

#Runit
RUN apt-get install -y runit wget

#MariaDB
RUN apt-get -y install mariadb-client
 
#XE Requirements
RUN apt-get -y install apache2 libapache2-mod-php5 php5-mysql php-apc php5-gd php5

#XE
RUN rm -rf /var/www/html && \
    mkdir /var/www/html
RUN cd /var/www/html && \
    wget https://github.com/xpressengine/xe-core/releases/download/1.7.7.2/xe.master.tar.gz && \
    tar xvf xe.master.tar.gz
RUN chown -R www-data:www-data /var/www/html && \
    mkdir /var/www/html/files && \
    chmod -R 707 /var/www/html/files

#Add runit service configs to /etc/service
ADD runit /etc/service

# Define default command.
CMD ["/usr/sbin/runsvdir-start"]
