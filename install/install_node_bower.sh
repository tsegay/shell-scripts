#!/bin/sh

yum update
yum install -y yum-utils bzip2 bzip2-devel wget curl tar
yum groupinstall -y "Development Tools"

cd /opt/

NODE_VERSION=8.1.1

wget http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz
tar zxf node-v${NODE_VERSION}.tar.gz

cd node-v${NODE_VERSION}

./configure --prefix=/usr/local

make
make install

node -v

npm install bower@1.8.4 -g
