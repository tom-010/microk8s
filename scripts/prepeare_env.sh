#!/bin/bash

set -e

# We use vagrant to provision test-servers, which utilizes virtualbox
sudo apt install -y vagrant
sudo apt install -y qemu libvirt-daemon-system libvirt-clients libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev ruby-libvirt ebtables dnsmasq-base


# for the automatic ssh-copy-id in scripts/vagrant_up.sh
sudo apt install -y sshpass

# We cuse ansible to manage the servers where the infra is running on
sudo apt install -y ansible
