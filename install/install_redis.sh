#!/bin/sh
######################################
#
# Install Redis 4.0.10
#
######################################
#
#

# Set environment variable for Redis 


# Download Redis 4.0.10

wget http://download.redis.io/releases/redis-4.0.10.tar.gz

tar xzf redis-4.0.10.tar.gz

cp -r redis-4.0.10 /usr/local

cd /usr/local/redis-4.0.10

make

./src/redis-server