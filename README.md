# MinimalFedoraDesktopEnvironment
How to install a desktop environment without any software on Fedora.

# Prerequisites
I work with a minimal installation of Fedora 30:
```
From Fedora-Workstation-netinst-x86_64-30-1.2.iso
SHA-1 = DD7C69570CD6F6AE7171F68936AB9982F8613F43
During the installation, choose Minimal and untick everything, if necessary.
```
All the commands are runned in the root session.

# Minimal GNOME Shell
![List of all applications](minimal-gnome-installation/minimal-gnome-installation.png)

## Manual installation

### Update your OS
```
dnf upgrade -y
```

### Install the display server (X.Org) + GNOME Shell
```
dnf install -y xorg-x11-utils xdg-user-dirs gnome-shell gnome-backgrounds
```

### Enable GNOME on boot
```
systemctl enable gdm graphical.target
systemctl set-default graphical.target
```

Reboot and Voilà!

## Automatic installation
```
curl -L https://raw.githubusercontent.com/locobastos/MinimalLinuxDesktopEnvironment/master/minimal-gnome-installation/minimal-gnome-installation.sh | /bin/bash
```
