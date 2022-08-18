#!/bin/bash

# Update System

sudo apt update
sudo apt full-upgrade

# Install Brave Browser

sudo apt install apt-transport-https curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

# Install Chatting programs

sudo apt install gdebi-core wget -y

wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

sudo gdebi ~/discord.deb 

sudo snap install telegram-desktop -y

sudo apt install discord -y

# Install kitty + config

sudo apt install kitty -y

mkdir ~/.config
cp ~/ubuntu_starterpack/dotconfig/* ~/.config

# Install java

sudo apt install openjdk-17-jdk -y

# Instal Steam + Minecraft

wget https://launcher.mojang.com/download/Minecraft.deb

sudo apt install ./Minecraft.deb -y

