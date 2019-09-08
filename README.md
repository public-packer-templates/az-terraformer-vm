# Overview
Packer & Ansible files for Azure ARM to create terraform vm image

# Preparation
* Ensure that "packer" and "azure-cli" installed
* Prepare your Resource Group & Storage Account to store your image
* Make "builder/variables.json" file to describe your credentials & identifiers
    * "variables.sample.json" is for your reference
* Make "builder/packer.json" file to describe your packer configuration

# How to make your image
1. Execute shell script to clone ansible playbook for provision from git and build vm image using packer
```shell
source ./build.sh
```

