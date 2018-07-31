#!/bin/sh
######################################
#
# Install ActiveMQ 5.15.0
#
######################################
#
#

# Set environment variable for Active MQ  


# Download ActiveMQ 5.15.0
wget https://archive.apache.org/dist/activemq/5.15.0/apache-activemq-5.15.0-bin.tar.gz

tar xvf apache-activemq-5.15.0-bin.tar.gz

cp -r ~/apache-activemq-5.15.0 /usr/local

cd /usr/local

# Soft link elasticsearch -> elasticsearch-2.3.2, this way when the Active MQ version is updated, we would only need to update the tomcat link
ln -s apache-activemq-5.15.0 activemq