#!/bin/bash

component=$1
environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/DevOpsTechie2020/JD-TF-RS-Ansible-Roles.git

cd JD-TF-RS-Ansible-Roles
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml