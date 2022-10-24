# !/bin/bash

## Author: Regine
## Date October 24th 2022

echo "starting Jenkins installation this will take a few minutes.

yum install java-11-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload
ifconfig

echo "Jenkins is ready please get ip and type it on your browser"

