#!/bin/sh
######################################
#
# Install GTAS
#
######################################
#
#

# useradd gtas
# passwd gtas

# usermod -aG wheel gtas

GTAS_DEV=/home/$(whoami)/repository

mkdir $GTAS_DEV

### Install Java-8

yum install java-1.8.0-openjdk* -y
yum install wget -y

# Install Tomcat
./install_tomcat.sh

### Install Git (run it as a non-root user that has sudo privilages)
# sudo yum install Git


# Install Maven
./install_maven.sh

# Install mariadb
./install_mariadb.sh

# Install Redis
./install_redis.sh

#Install Node and Bower
./install_node_bower.sh

#Install Active MQ
./install_activemq.sh
