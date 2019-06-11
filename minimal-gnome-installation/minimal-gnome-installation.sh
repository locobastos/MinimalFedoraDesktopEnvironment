#!/bin/bash
################################################################################
# This script install the minimal GNOME environment with NO extra package.     #
# Please refer to this repo:                                                   #
#     https://github.com/locobastos/MinimalLinuxDesktopEnvironment             #
#                                                                              #
# Author: Bastien 'locobastos' MARTIN                                          #
# Licence: Do what you want with this script, but please contact me if you     #
#          improve it, I may be interessted on your enhancements.              #
# Date: 25/03/2019                                                             #
################################################################################

# Check if the current user is root
if [[ $EUID -ne 0 ]]
then
	echo "This script must be run as root."
	exit 1
fi

# Update your OS
dnf upgrade -y

# Install X.Org & GNOME
dnf install -y gnome-shell xorg-x11-utils xdg-user-dirs gnome-backgrounds

# Enable GNOME
systemctl enable gdm graphical.target
systemctl set-default graphical.target

# Reboot
reboot
