![Project Logo](./Illustration.png)

# Mac Development Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for web and software development. Some things in macOS are slightly difficult to automate, so I still have a few manual installation steps, but at least it's all documented here.

## Installation

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `dotfiles`, `homebrew`, `mas`, `extra-packages` and `osx`.

    ansible-playbook main.yml -K --tags "dotfiles,homebrew"

## Included Applications / Configuration (Default)

#### Applications (installed with Homebrew Cask):

  - [Docker](https://www.docker.com/)
  - [Homebrew](http://brew.sh/)
  - [Slack](https://slack.com/)

#### Packages (installed with Homebrew):

  - bash-completion
  - git
  - github/gh/gh
  - gpg
  - nvm

#### Dotfiles
