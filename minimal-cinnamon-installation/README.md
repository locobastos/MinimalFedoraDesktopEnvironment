# Minimal Cinnamon

## Manual installation

### Update your OS
```
dnf upgrade -y
```

### Install the display server (X.Org) + Cinnamon
```
dnf install -y cinnamon lightdm lightdm-gtk xdg-user-dirs xev xorg-x11-server-Xorg
```

### Enable Cinnamon on boot
```
systemctl enable lightdm graphical.target
systemctl set-default graphical.target
```
