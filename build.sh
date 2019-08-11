#!/bin/bash
## Install necessary ansible roles for provision
git clone git@github.com:public-ansible-playbooks/terraformer.git ./ansible
ansible-galaxy install -r ./ansible/requirements.yml -p ./ansible/roles

cd builder
packer build -var-file=variables.json packer.json
