#!/usr/bin/env bash

# installing docker compose

read -p "Enter $USER sudo user's password: " sudo_password

echo $sudo_password | sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

echo $sudo_password | sudo chmod +x /usr/local/bin/docker-compose
