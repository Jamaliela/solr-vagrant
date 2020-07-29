# sage-solr-vagrant

It is recommended to add the following vagrant plugins:

Vagrant Snapshot Plugin

Run on command line:

$ vagrant plugin install vagrant-vbox-snapshot


Vagrant Auto Install of VirtualBox Guest Additions

Run on command line:

$ vagrant plugin install vagrant-vbguest


Information on increasing the size of our vagrant instances:

https://github.com/sprotheroe/vagrant-disksize

To create a docker instance for Solr

Run on command line:
```
docker run -d -v "<path-to-metadata-config-folder>:/var/solr" -p 8983:8983 --name <container-name> solr:8.5.2 solr-precreate <core-name>
```
