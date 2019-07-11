#!/bin/sh
######################################
#
# Install GTAS
#
######################################
#
#

# Download MariaDB 10.0 Stable

# Add mariadb YUM repository fiel MariaDB.repo 
cp ./MariaDB.repo /etc/yum.repos.d/MariaDB.repo

# (Install MariaBD using YUM)
yum install MariaDB-server MariaDB-client -y 

# Check installation 
        
systemctl start mysql
/sbin/chkconfig mysql on
systemctl status mysql

# Secure Mariadb 

# mysql_secure_installation
