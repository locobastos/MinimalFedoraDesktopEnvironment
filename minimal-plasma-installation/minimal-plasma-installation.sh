#!/bin/bash
################################################################################
# This script install the minimal PLASMA Desktop with NO extra package.        #
# Please refer to this repo:                                                   #
#     https://github.com/locobastos/MinimalLinuxDesktopEnvironment             #
#                                                                              #
# Author: Bastien 'locobastos' MARTIN                                          #
# Licence: Do what you want with this script, but please contact me if you     #
#          improve it, I may be interessted on your enhancements.              #
# Date: 20/09/2019                                                             #
################################################################################

# Check if the current user is root
if [[ $EUID -ne 0 ]]
then
	echo "This script must be run as root."
	exit 1
fi

# Update your OS
dnf upgrade -y

# Install X.Org & Plasma Desktop
dnf install -y plasma-desktop sddm sddm-kcm xorg-x11-utils xdg-user-dirs

# Enable SDDM
systemctl enable sddm graphical.target
systemctl set-default graphical.target

# Reboot
reboot
