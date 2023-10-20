#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y software-properties-common apt-transport-https wget

# Import Microsoft GPG Key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo mv packages.microsoft.gpg /usr/share/keyrings

# Add Visual Studio Code repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

# Update package list
sudo apt update

# Install Visual Studio Code
sudo apt install -y code

echo "Visual Studio Code has been installed successfully."

