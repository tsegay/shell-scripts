#!/bin/sh
######################################
#
# Install Tomcat ${TOMCAT_VERSION}
#
######################################
#
#
TOMCAT_VERSION=8.5.39
### Install Tomcat 8 ${TOMCAT_VERSION}

# Download Tomcat 8
    wget "http://us.mirrors.quenda.co/apache/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz"

# unzip the tar
    tar xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz

# copy/move the extracted folder to /usr/local
    cp -r apache-tomcat-${TOMCAT_VERSION} /usr/local

cd /usr/local

# create soft link tomcat -> apache-tomcat-${TOMCAT_VERSION}, this way when the tomcat version is updated we would only need to update the tomcat link

ln -s /usr/local/apache-tomcat-${TOMCAT_VERSION} /usr/local/tomcat

firewall-cmd --permanent --zone=public --add-port=8080/tcp

firewall-cmd --reload

