#!/usr/bin/env sh

# DNF packages
sudo dnf install \
    sway \
    waybar \
    fuzzel \
    swaylock \
    swaybg \
    copyq \
    grim \
    slurp \
    nwg-drawer \
    kitty \
    nwg-dock \
    emacs \
    alacritty \
    neovim \
    python3-neovim \
    swayidle \
    xbanish \
    brightnessctl \
    playerctl \
    wlogout

# COPR packages
sudo dnf copr enable swayfx/swayfx
sudo dnf install swayfx

sudo dnf copr enable erikreider/SwayNotificationCenter
sudo dnf install SwayNotificationCenter
