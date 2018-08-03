#!/bin/sh
######################################
#
# Install GTAS
#
######################################
#
#

useradd gtas
passwd gtas

usermod -aG wheel gtas

GTAS_DEV=/home/gtas/repository

sudo -u gtas mkdir $GTAS_DEV

### Install Java-8

yum install java-1.8.0-openjdk* -y
yum install wget -y

# Install Tomcat
./install_tomcat.sh

### Install Git (run it as a non-root user that has sudo privilages)
# sudo yum install Git

# Checkout GTAS dev branch from github repository
sudo -u gtas git clone --single-branch --branch dev https://github.com/US-CBP/GTAS.git $GTAS_DEV/

# Install Maven
./install_maven.sh

# Install mariadb
./install_mariadb.sh

# Install Redis
./install_redis.sh

#Install Node and Bower
./install_node_bower.sh

# Install Elastic Search
./install_elasticsearch.sh

#Install Active MQ
./install_activemq.sh
