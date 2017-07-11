#!/bin/bash

mkdir -p ~/.m2
mkdir -p ~/.ssh
mkdir -p ~/bin
mkdir -p ~/Projects
mkdir -p ~/Servers

sudo apt-get install --assume-yes
sudo apt-get update --assume-yes

sudo apt-get install default-jdk --assume-yes

sudo apt-get install maven --assume-yes
sudo cp /usr/share/maven/conf/settings.xml ~/.m2/settings.xml

sudo apt-get install git --assume-yes

INTELLIJ_VERSION=$(wget "https://www.jetbrains.com/intellij-repository/releases" -qO- | grep -P -o -m 1 "(?<=https://www.jetbrains.com/intellij-repository/releases/com/jetbrains/intellij/idea/BUILD/)[^/]+(?=/)")
INTELLIJ_URL="https://download.jetbrains.com/idea/ideaIC-$INTELLIJ_VERSION.tar.gz"
INTELLIJ_FILE=$(basename ${INTELLIJ_URL})
wget -cO ~/Downloads/${INTELLIJ_FILE} ${INTELLIJ_URL} --read-timeout=5 --tries=0
tar -xvzf ~/Downloads/${INTELLIJ_FILE} -C /opt/





