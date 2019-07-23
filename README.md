# Overview
Packer & Ansible files for Azure ARM to create terraform vm image

# Preparation
* Ensure that "packer" and "azure-cli" installed
* Prepare your Resource Group & Storage Account to store your image
* Make "builder/variables.json" file to describe your credentials & identifiers
    * "variables.sample.json" is for your reference
* Make "builder/packer.json" file to describe your packer configuration

# How to make your image
1. ./
2. Change git repository for playbook to provision your image in "build.sh"
3. Change roles to call in "builder/packer.json"
3. ./build.sh
