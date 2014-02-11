#!/bin/bash

# Installer script for BITS Cyberoam Login Manager
# Author : Anubhav Chaturvedi


echo -n "Checking dependency . . .  ";
command -v curl >/dev/null 2>&1 || { echo "curl not installed. Use sudo apt-get install curl and then try again. Aborting." >&2; exit 1; }
echo "[ OK ]"

sudo bash installer.sh

echo -n "Creating launcher . . .  "
ln -s -T /usr/share/BITS_CyberoamClient/BITS_CyberoamClient.desktop ~/.local/share/applications/BITS_CyberoamClient.desktop
gsettings set com.canonical.Unity.Launcher favorites "$(gsettings get com.canonical.Unity.Launcher favorites | sed "s/, *'BITS_CyberoamClient.desktop' *//g" | sed "s/'BITS_CyberoamClient.desktop' *, *//g" | sed -e "s/]$/, 'BITS_CyberoamClient.desktop']/")"
echo "[ OK ]"
