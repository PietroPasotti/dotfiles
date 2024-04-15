## pietro's dotfiles/automation, shamefully ripped off from jnsgruk's
This repository contains both my [configs/dotfiles](./dots) and some associated Ansible [Roles](./roles) I use for setting up my machines.

### What does this do?

- Download and install Ansible
- Check for an `overrides.yml` file, and create one if it doesn't exist
- Offer the opportunity to edit the `overrides.yml` before contining
- Provision the host with Ansible according to the preferences in the `overrides.yml`

### Installation methods

Aside from simply cloning this repo and running the installer, like so:

```
git clone https://github.com/pietropasotti/dotfiles; ./dotfiles/setup.sh
```

There are two alternate installation methods. The [latest release](https://github.com/PietroPasotti/dotfiles/releases/latest) contains two install scripts:

- [installer.sh](https://github.com/PietroPasotti/dotfiles/releases/latest/download/installer.sh) is a self-contained, self-extracting installer that when run, will extract an archive of this repository into the current working directory and then run the installer
- [net-provision.sh](https://github.com/PietroPasotti/dotfiles/releases/latest/download/net-provision.sh) will install `git`, then proceed to clone this repo into `~/dotfiles` and run the installer

### What is the overrides file?

The `override.yml` file is created during setup, and used to toggle which roles are applied to the machine. An example is:

```yaml
---
install_shell: true
install_fonts: true
```

### What do the roles do?

There are README files for each of the Roles. They should answer any questions...
