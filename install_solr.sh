#!/bin/sh -e

SOLR_VERSION=8.5.1

# Explain how to find this link to update as needed.
wget http://apache.mirrors.hoobly.com/lucene/solr/$SOLR_VERSION/solr-$SOLR_VERSION.tgz

# Extract install script.
tar xzf solr-$SOLR_VERSION.tgz solr-$SOLR_VERSION/bin/install_solr_service.sh --strip-components=2

# Install solr without starting the solr service.
# -d says where to hold the cores
# -n says don't start solr now
# sudo ./install_solr_service.sh solr-8.3.1.tgz -d /vagrant/solr -n
./install_solr_service.sh solr-$SOLR_VERSION.tgz -n

# Create the metadata core as solr user.
#sudo -u solr /opt/solr/bin/solr create -c metadata -s 2 -rf 2

# the metadata core:
# ./var/solr/data/metadata/core.properties

# Copy the metadata core configuration from the /vagrant/ directory.
cp -R /vagrant/metadata/data/metadata/ /var/solr/data/metadata/

sudo chown solr:solr -R /var/solr/data/metadata/

# managed-schema is the name of the schema that is produced by the default
# solr 

# Start the solr service.
service solr start

# To start on the command line, use sudo
# sudo service solr start

# Stop the solr service.  This will most likely be run by the command line and sudo will be required.
# sudo service solr stop
