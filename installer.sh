#!/bin/bash

# Installer script for BITS Cyberoam Login Manager
# Author : Anubhav Chaturvedi

clear
echo "################   BITS Cyberoam Login Manager Installer   ################"

if [ $(whoami) != "root" ];
then
	echo "Root access is required.";
	echo "Command Usage : sudo installer.sh";
	exit 1;
fi

echo -n "Checking if required files are present . . .  "

if [ -e $PWD/BITS_CyberoamClient ] && [ -e $PWD/BITS_CyberoamClient.conf ] && [ -e $PWD/BITS_CyberoamClient.desktop ] && [ -e $PWD/logo.gif ]
then
	echo "[ OK ]";
else
	echo "[ FAIL ]";
	echo "Some files missing";
	exit 1;
fi


mkdir /etc/BITS_CyberoamClient;
cp $PWD/BITS_CyberoamClient.conf /etc/BITS_CyberoamClient
echo "PLEASE CONFIGURE . . .";
echo -n "Enter your username : ";
read username;
echo
echo -n "Enter your password : ";
read password;
echo -e "username=$username\npassword=$password" >> /etc/BITS_CyberoamClient/BITS_CyberoamClient.conf
echo "Creating and storing configuration file . . .  [ OK ]"


echo -n "Creating and storing executable file . . .  "
mkdir /usr/share/BITS_CyberoamClient
cp $PWD/BITS_CyberoamClient /usr/share/BITS_CyberoamClient
cp $PWD/logo.gif /usr/share/BITS_CyberoamClient
chmod 755 /usr/share/BITS_CyberoamClient/BITS_CyberoamClient
cp $PWD/BITS_CyberoamClient.desktop /usr/share/BITS_CyberoamClient
chmod 755 /usr/share/BITS_CyberoamClient/BITS_CyberoamClient.desktop
echo "[ OK ]"

echo "Installation Completed . . . Enjoy easy login/logout "
