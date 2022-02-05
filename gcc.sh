#!/bin/bash
# auto installer
# author Ripunk
# YouTube Ripunk
# Nyolong dosa woy


# Color

red="\e[31m"
green="\e[32m"
yellow="\e[1;33m"
blue="\e[34m"
netral="\e[0m"
Escape="\033";
RedF="${Escape}[31m";
LighGreenF="${Escape}[92m"

# Install required packages
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Checking For Internet: ${RedF}FAILED"
    echo
    echo -e $red "This Script Needs An Active Internet Connection"
    echo && sleep 2
    exit
  else
    echo -e $yellow " Checking For Internet: ${LighGreenF}CONNECTED"
  fi
	echo -e $green"[*] Installing required packages..."
	apt update &> /dev/null
	DEBIAN_FRONTEND=noninteractive apt install bison build-essential curl flex git gnupg liblz4-tool libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils squashfs-tools xsltproc zip zlib1g-dev build-essential libncurses5-dev bzip2 git python -y 
	sleep 2
	echo -e $green"[*] Done!"
	sleep 3
	clear && install_gcc_49

# Install GCC 4.9
function install_gcc_49() {
	command -v add-apt-repository
		echo -e $yellow"[#] Seems like software-properties-common not installed! Installing..."$netral
	    apt install software-properties-common -y
	echo -e $green"[*] Adding xenial repo..."
	add-apt-repository "deb http://ports.ubuntu.com/ubuntu-ports xenial main restricted universe multiverse"
	add-apt-repository "deb http://ports.ubuntu.com/ubuntu-ports xenial-security main restricted universe multiverse"
	add-apt-repository "deb http://ports.ubuntu.com/ubuntu-ports xenial-updates main restricted universe multiverse"
	add-apt-repository "deb http://ports.ubuntu.com/ubuntu-ports xenial-backports main restricted universe multiverse"
	echo -e $green"[*] Updating..."
	apt update 
	echo -e $green"[*] Installing GCC 4.9..."
	apt install gcc-4.9 g++-4.9 -y 
	echo -e $green"[*] Setting GCC"
	update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 50
	update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 50
	echo -e $green"[*] Done!"$netral
}	
