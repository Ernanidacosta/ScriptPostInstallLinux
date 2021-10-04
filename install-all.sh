#!/bin/bash

sudo sed -i "/^# deb.*multiverse/ s/^# //" /etc/apt/sources.list
sudo add-apt-repository ppa:obsproject/obs-studio

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y \
    ffmpeg \
    v4l2loopback-dkms \
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
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libncurses5-dev \
    tk-dev \
    tcl-dev \
    libgdbm-dev \
    git \
    python-dev \ 
    aria2 \
    vim\
    libnss3-tools\
    python3-venv \
    liblzma-dev \
    audacity \
    timeshift \
    variety \
    obs-studio \
    libxss1 \
    libappindicator1 \
    libindicator7 \
    

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg 

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list 

sudo apt update -y
sudo apt install -y brave-browser

sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get install -y python-pip python-dev python-virtualenv

curl https://pyenv.run | bash
pyenv install 3.9.0
pyenv install 2.7.14
