#!/bin/sh
######################################
#
# Install GTAS
#
######################################
#
#

GTAS_DEV=~/repository

mkdir $GTAS_DEV

### Install Java-8

yum install java-1.8.0-openjdk* -y
yum install wget -y

# Install Tomcat
./install_tomcat.sh

### Install Git (run it as a non-root user that has sudo privilages)
# sudo yum install Git

# Checkout GTAS dev branch from github repository
git clone --single-branch --branch dev https://github.com/US-CBP/GTAS.git $GTAS_DEV/

# Install Maven
./install_maven.sh

# Install mariadb
./install_mariadb.sh

# add mvn install
cd $GTAS_DEV/gtas-parent
mvn clean install -Dskip.unit.tests=true
# run GTAS database script
## add createDatabaseIfNotExist=true to the mysql connection string
cd $GTAS_DEV/gtas-parent/gtas-commons/
mvn hibernate4:export

# Install Elastic Search
./install_elasticsearch.sh

#Install Active MQ
./install_activemq.sh
