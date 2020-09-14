#!/bin/bash

currdir=`pwd`

cd VagrantFolder/ubuntu1804
sudo vagrant up
sudo vagrant ssh "ls -al"

