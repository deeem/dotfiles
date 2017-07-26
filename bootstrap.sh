#!/usr/bin/env bash

# Install playbook dependesis
sudo ansible-galaxy install -r ansible/requirements.yml

#Run ansible
ansible-playbook --ask-become-pass ansible/playbook.yml -i ansible/hosts --extra-vars "dotfilespath=`pwd`"
