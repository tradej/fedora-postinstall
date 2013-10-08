#!/bin/bash

# Post-install script - Fedora 19

# RPM Fusion repository
yum localinstall --nogpgcheck \
    http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
    -y

# User graphics stuff
yum install \
    elinks firefox gnome-mplayer htop @libreoffice qpdfview \
    file git qgit meld vim wget terminator \
    #rpmdevtools mock xchat fedora-release-rawhide pkgdb-cli \
    -y
