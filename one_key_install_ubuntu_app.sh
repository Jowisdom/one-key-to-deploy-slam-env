#!/bin/bash

set -x # echo on
set -e # exit on error

# install typora
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora 



#install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash 

#install clion,pycharm,vscode,fireware,zotero
sudo snap install zotero-snap 
sudo snap install flameshot 
sudo snap install clion --classic 
sudo snap install pycharm-professional --classic 

# install unar
sudo apt install unar 
# install stacer
sudo add-apt-repository ppa:oguzhaninan/stacer 
sudo apt-get update 
sudo apt-get install stacer  