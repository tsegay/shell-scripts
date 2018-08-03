#!/bin/sh

yum update
yum install yum-utils bzip2 bzip2-devel wget curl tar
yum groupinstall "Development Tools"

cd /opt/

wget http://nodejs.org/dist/v5.9.1/node-v5.9.1.tar.gz
tar zxf node-v5.9.1.tar.gz

cd node-v5.9.1

./configure --prefix=/usr/local

make
make install

node -v

npm install bower@1.8.4 -g