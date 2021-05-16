#! /bin/bash

sudo apt update
sudo apt install default-jdk -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
	                    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
echo 'clearing screen' && sleep 5
clear
echo 'Jenkins is Installed'
echo 'This is the Default password :' $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
