#!/bin/bash

# Post-install script - Fedora 19

# RPM Fusion repository
yum localinstall --nogpgcheck \
    http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
    -y

# User graphics stuff
yum install \
    gnome-mplayer @libreoffice qpdfview elinks firefox \
    file git qgit meld vim wget terminator \
    #rpmdevtools mock \
    -y
