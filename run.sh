#!/bin/bash

currdir=`pwd`

cd VagrantFolder/ubuntu1804
sudo vagrant up --provider libvirt
if [ ! -d share ];then
    mkdir share
    chmod -R 777 share
fi
sudo vagrant ssh -c "cd /vagrant && ./init.sh && ./compile.sh && cp ~/compile/dependency.tar.gz /vagrant"

