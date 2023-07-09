#!/bin/bash

up() {
  vagrant up
  VAGRANT_VAGRANTFILE=Vagrantfilemaster vagrant up
}

destroy() {
  vagrant destroy --force
  VAGRANT_VAGRANTFILE=Vagrantfilemaster vagrant destroy --force
}

halt() {
  vagrant halt
  VAGRANT_VAGRANTFILE=Vagrantfilemaster vagrant halt
}

# You need to make sure that you are running the script where the vagrantfiles are stored

if [ $1 == "up" ]; then
  up
elif [ $1 == "destroy" ]; then
  destroy
elif [ $1 == "halt" ]; then
  halt
else
  echo "Invalid parameter";
  echo "Usage: ./vagrant-script.sh [up|destroy|halt]";
  exit 1
fi