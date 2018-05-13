#!/bin/bash

cd

[ ! -d .local/bin ] && mkdir .local/bin

[ ! -d bin ] && mkdir bin

if ! [ $EUID = 0 ]
then
    sudo "$0" "$@"
    exit
fi

#Latest mpv requires the following ppa.
add-apt-repository -y ppa:mc3man/mpv-tests 
#ppa for googler and ddgr
add-apt-repository -y ppa:twodopeshaggy/jarun

apt update

apt-get -y install \
tmux sakura ranger mpv feh glances moreutils configure-debian openssh-server apt-file xfce4-goodies desktop-webmail \
firefox pinfo hddtemp googler ddgr pdd python-pip vim-gtk herbstluftwm suckless-tools stalonetray restic byobu systemd-cron\
dex zathura zathura-ps a2ps fossil dwww rlwrap smartmontools sshfs sqlite3 sqlite3-doc dict system-config-printer-gnome \
tcl8.6 tcllib tkinspect tcl8.6-doc tk8.6 tk8.6-doc tcl-tclreadline expect libsqlite3-tcl exim4 megatools blueman zenity

a2enmod cgi

systemctl restart apache2

dpkg-reconfigure exim4-config

echo "Install systemd-cron?"
