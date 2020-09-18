#!/bin/bash

currdir=`pwd`

cd VagrantFolder/ubuntu1804
sudo vagrant up --provider libvirt
sudo vagrant ssh -c "cd /vagrant && ./init.sh && ./compile.sh"
ls -al

