#!/bin/sh
######################################
#
# Install Maven 3.5.4
#
######################################
#
#

# Download maven binary

wget http://apache.mirrors.pair.com/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
    
tar xvf apache-maven-3.5.4-bin.tar.gz
    
cp -r apache-maven-3.5.4 /usr/local/apache-maven-3.5.4

ln -s /usr/local/apache-maven-3.5.4 /usr/local/maven

# add environment varialbles to file /etc/profile.d/maven.sh 

echo "export M2_HOME=/usr/local/maven" >> /etc/profile.d/maven.sh
echo "export M2=$M2_HOME/bin"  >> /etc/profile.d/maven.sh
echo "export PATH=${M2_HOME}/bin:${PATH}"  >> /etc/profile.d/maven.sh

# make the maven.sh executable 
chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh