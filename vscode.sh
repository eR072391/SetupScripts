#!/bin/bash

sudo apt update -y && sudo apt upgrade -y

sudo apt install dirmngr ca-certificates software-properties-common apt-transport-https -y

curl -fSsL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null

echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update

sudo apt install code
