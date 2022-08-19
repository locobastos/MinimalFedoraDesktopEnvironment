#!/bin/bash
################################################################################
# This script install the minimal PLASMA Desktop with NO extra package.        #
# Please refer to this repo:                                                   #
#     https://github.com/locobastos/MinimalLinuxDesktopEnvironment             #
#                                                                              #
# Author: Bastien 'locobastos' MARTIN                                          #
# Licence: Do what you want with this script, but please contact me if you     #
#          improve it, I may be interessted on your enhancements.              #
# Date: 19/08/2022                                                             #
################################################################################

# Check if the current user is root
if [[ $EUID -ne 0 ]]
then
	echo "This script must be run as root."
	exit 1
fi

# Update your OS
if ! dnf upgrade --assumeyes
then
    echo "Error while upgrading your OS."
    exit
fi

# Install X.Org & PLASMA Desktop
if ! dnf install --assumeyes kscreen plasma-desktop sddm sddm-kcm xdg-user-dirs
then
    echo "Error while installing packages."
    exit
fi

# Enable SDDM
if ! systemctl enable sddm graphical.target
then
    echo "Error while enabling SDDM."
    exit
fi

if ! systemctl set-default graphical.target
then
    echo "Error while enabling SDDM."
    exit
fi

# Reboot
reboot
