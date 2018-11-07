#!/bin/sh
######################################
#
# Install Redis 4.0.10
#
######################################
#
#

### Install Tomcat 8

# Download Tomcat 8
    wget http://us.mirrors.quenda.co/apache/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz

# unzip the tar
    tar xvf apache-tomcat-8.5.34.tar.gz

# copy/move the extracted folder to /usr/local
    cp -r apache-tomcat-8.5.34 /usr/local

cd /usr/local


# create soft link tomcat -> apache-tomcat-8.5.32, this way when the tomcat version is updated we would only need to update the tomcat link

ln -s /usr/local/apache-tomcat-8.5.34 /usr/local/tomcat

firewall-cmd --permanent --zone=public --add-port=8080/tcp

firewall-cmd --reload

