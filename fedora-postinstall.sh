#!/bin/bash

# Post-install script - Fedora 19

# RPM Fusion repository
yum localinstall --nogpgcheck \
    http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
    -y

# User graphics stuff
yum install \
    elinks firefox gnome-mplayer htop @libreoffice p7zip qpdfview \
    file git meld qgit terminator vim vim-jedi wget xchat \
    #rpmdevtools mock fedora-release-rawhide pkgdb-cli \
    -y

# Gnash
#yum install \
#    gnash-plugin \
#    -y

# Fonts
pushd ~/.fonts

    # PT Serif
    mkdir pt-serif
    pushd pt-serif
    wget http://www.fontsquirrel.com/fonts/download/pt-serif -O pt-serif.zip
    unzip pt-serif.zip
    rm pt-serif.zip
    popd

    # Aurulent # TODO Aurulent with patched symbols
    mkdir aurulent
    pushd aurulent
    wget http://www.fontsquirrel.com/fonts/download/Aurulent-Sans-Mono -O aurulent.zip
    unzip aurulent.zip
    rm aurulent.zip
    popd

    fc-cache
popd

# User scripts
pushd ~
    git clone https://github.com/tradej/scripts.git
    cd scripts
    source install.sh
popd
