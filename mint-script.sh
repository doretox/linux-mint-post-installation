#!/bin/bash

## After Installation Linux Mint Script - 4bl0n ##

## Removing entual problems with APT ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Repository and System Update
sudo apt update -y

sudo apt upgrade -y

## MAKING A FOLDER TO STORE DOWNLOAD FILES ##
mkdir /home/$USER/Downloads/Files

cd /home/$USER/Downloads/Files

# DOWNLOADING AND INSTALLING PROGRAMS ##

#Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

sudo apt update

sudo apt install atom

## Installing every .deb file
sudo dpkg -i *.deb

## Installing snapd ##
sudo apt install snapd

## INSTALLING SNAP PROGRAMS ##

# Skype
sudo snap install skype --classic

#Discord
sudo snap install discord

#Spotify
sudo snap install spotify

## PROGRAMS ##

#gedit
sudo apt install gedit -y

#VLC
sudo apt install vlc -y

#qbittorrent
sudo apt install qbittorrent -y

#Codecs
sudo apt install mint-meta-codecs

## THEMES AND ICONS ##

sudo add-apt-repository -y ppa:noobslab/themes

sudo add-apt-repository -y ppa:noobslab/icons

sudo add-apt-repository -y ppa:snwh/ppa

sudo apt update

sudo apt-get install arc-theme -y

sudo apt install breeze-cursor-theme -y

sudo apt install paper-icon-theme -y

sudo apt install papirus-icons -y

## CHANGING THEMES ##

# Window borders.
gsettings set org.cinnamon.desktop.wm.preferences theme 'Arc-Darker'

# Icons.
gsettings set org.cinnamon.desktop.interface icon-theme 'Papirus'

# Controls.
gsettings set org.cinnamon.desktop.interface gtk-theme 'Arc-Darker'

# Mouse pointer.
gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze_Snow'

# Desktop.
gsettings set org.cinnamon.theme name 'Mint-Y-Dark-Blue'


echo "END !!!!!!"


