#!/usr/bin/env bash


read -p "Enter $USER sudo user's password: " sudo_password

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo $sudo_password | sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo $sudo_password | sudo apt-get update -y

apt-cache policy docker-ce


echo $sudo_password | sudo apt-get install -y docker-ce

echo $sudo_password | sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

sudo usermod -aG docker ${USER}

docker info
