#!/bin/zsh

echo "Starting the playbook installation"

ansible-playbook -i inventory.yaml playbook.yaml --ask-become-pass

echo "Playbook just ended the execution"
