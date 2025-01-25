#!/bin/zsh

echo "Starting the setup for playbook installation"

# Check if Ansible is installed
if ! command -v ansible &> /dev/null; then
  echo "Ansible is not installed. Installing Ansible..."

  # Install Homebrew if it's not installed
  if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  # Install Ansible using Homebrew
  brew install ansible

  # Verify installation
  if command -v ansible &> /dev/null; then
    echo "Ansible installed successfully."
  else
    echo "Failed to install Ansible. Exiting..."
    exit 1
  fi
else
  echo "Ansible is already installed."
fi

echo "Running the playbook..."
ansible-playbook -i inventory.yaml playbook.yaml --ask-become-pass --ask-vault-pass

echo "Playbook execution has completed."