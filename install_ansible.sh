#!/usr/bin/env bash

if [ $(id -u) -ne 0 ]; then
    echo "Please run this script as root"
    exit 1
fi

apt-add-repository ppa:ansible/ansible -y
apt-get update && apt-get install ansible -y
