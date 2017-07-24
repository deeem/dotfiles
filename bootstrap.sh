#!/usr/bin/env bash

# Install playbook dependesis
sudo ansible-galaxy install -r ansible/requirements.yml

#Run ansible
ansible-playbook --ask-become-pass ansible/playbook.yml --extra-vars "dotfilespath=`pwd`"
