#!/bin/bash

sudo sed -i "/^# deb.*multiverse/ s/^# //" /etc/apt/sources.list

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm gettext libncurses5-dev tk-dev tcl-dev blt-dev libgdbm-dev git python-dev python3-dev aria2 vim libnss3-tools python3-venv liblzma-dev

sudo apt-get install -y \
    build-essential \
    vim \
    curl \
    libssl-dev \
    git \
    openjdk-7-jre-headless \ 
    apt-transport-https \
    tilix \
    parcellite \
    flameshot \
    synaptics \
    
    


sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg 

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list 

sudo apt update -y
sudo apt install -y brave-browser

sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get install -y python-pip python-dev python-virtualenv
sudo pip install virtualenvwrapper
