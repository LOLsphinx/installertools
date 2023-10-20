#!/bin/bash

LATEST_VERSION="8.2.4"
XAMPP_URL="https://www.apachefriends.org/xampp-files/$LATEST_VERSION/xampp-linux-x64-$LATEST_VERSION.0.tar.gz"
INSTALL_DIR="/opt"
echo "Downloading XAMPP..."
wget -O /tmp/xampp.tar.gz "$XAMPP_URL"
echo "Extracting XAMPP..."
sudo tar xzf /tmp/xampp.tar.gz -C "$INSTALL_DIR"
echo "Starting XAMPP..."
sudo "$INSTALL_DIR/xampp/xampp start"
echo "XAMPP installation completed successfully."
