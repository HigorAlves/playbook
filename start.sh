#!/bin/zsh

echo "Starting the playbook installation"

ansible-playbook -i inventory.yaml playbook.yaml --ask-become-pass --ask-vault-pass

echo "Playbook just ended the execution"
