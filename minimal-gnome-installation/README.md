# Minimal GNOME Shell

## Manual installation

### Update your OS
```
dnf upgrade -y
```

### Install the display server (X.Org) + GNOME Shell
```
dnf install -y gnome-shell xdg-user-dirs xev xprop
```

### Enable GNOME on boot
```
systemctl enable gdm graphical.target
systemctl set-default graphical.target
```
