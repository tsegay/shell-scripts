#!/bin/sh
######################################
#
# Install ElasticSearch
#
######################################
#
#

# Set environment variable to elastic search 
export ES_HOME="/usr/local/elasticsearch"

# Download Elasticsearch v2.3.2
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.2/elasticsearch-2.3.2.tar.gz

tar xvf elasticsearch-2.3.2.tar.gz

cp -r elasticsearch-2.3.2 /usr/local

cd /usr/local

# Soft link elasticsearch -> elasticsearch-2.3.2, this way when the elasticsearch version is updated, we would only need to update the tomcat link
ln -s elasticsearch-2.3.2 elasticsearch

chown -R gtas:gtas /usr/local/elasticsearch
