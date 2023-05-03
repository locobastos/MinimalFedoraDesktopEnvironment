# Minimal Xfce

## Manual installation

### Update your OS
```
dnf upgrade -y
```

### Install the display server (X.Org) + Xfce
```
dnf install -y xfce4-panel xfdesktop xfwm4 xfce4-settings xfce4-session xdg-user-dirs xev xorg-x11-xinit xprop
```

### Enable GNOME on boot
```
systemctl enable lightdm graphical.target
systemctl set-default graphical.target
```
