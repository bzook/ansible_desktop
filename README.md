# ansible_desktop
Ansible configuration for desktop and laptops

Fully automated development environment based on the `blackglasses` at [The Alt-F4 Stream](https://www.twitch.tv/thealtf4stream) on Twitch.

## Usage

### Install

This playbook includes a custom shell script located at `bin/dotfiles`. This script is added to your $PATH after installation and can be run multiple times while making sure any Ansible dependencies are installed and updated.

```bash
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/bzook/ansible_desktop/main/bin/dotfiles)"
```

### Update

This repository is continuously updated with new features and settings which become available to you when updating.

To update your environment run the `dotfiles` command in your shell:

```bash
$ dotfiles
```
