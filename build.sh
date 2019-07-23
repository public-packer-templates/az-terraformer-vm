#!/bin/bash
## Install git
sudo yum -y install git

## Install ansible
sudo yum -y install epel-release python-devel openssl-devel gcc
sudo yum -y install python-pip
sudo pip  install --upgrade pip
sudo pip  install ansible

## Install necessary ansible roles for provision
git clone git@github.com:public-ansible-playbooks/terraformer.git ./ansible
ansible-galaxy install -r ./ansible/requirements.yml -p ./ansible/roles

cd builder
packer build -var-file=variables.json packer.json
