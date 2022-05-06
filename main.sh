#!/bin/bash


cd /root/
FOLDER="linux-lab-ansible"

if [ ! -d $FOLDER ]; then
    apt install git python3-pip -y >> /dev/null
    pip3 install ansible

    git clone https://github.com/lucasvruchel/linux-lab-ansible.git
else
    cd $FOLDER
    git pull origin master
    cd ..
fi

ANSIBLE_NOCOWS=1 ansible-playbook main.yml



