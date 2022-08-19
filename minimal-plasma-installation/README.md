# Minimal Plasma Desktop

## Manual installation

### Update your OS
```
dnf upgrade -y
```

### Install the display server (X.Org) + Plasma Desktop
```
dnf install -y kscreen plasma-desktop sddm sddm-kcm xdg-user-dirs
```

### Enable Plasma on boot
```
systemctl enable sddm graphical.target
systemctl set-default graphical.target
```
