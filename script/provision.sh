#/bin/sh
sudo yum -y install epel-release python-devel openssl-devel gcc
sudo yum -y install python-pip
sudo pip install --upgrade pip
sudo pip install ansible
ansible --version
