#!/usr/bin/env bash

# Install playbook dependesis
sudo ansible-galaxy install -r requirements.yml

#Run ansible
ansible-playbook --ask-become-pass playbook.yml --extra-vars "dotfilespath=`pwd`"
