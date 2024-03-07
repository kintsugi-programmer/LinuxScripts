#!/bin/bash
# chmod +x WelcomeKit.sh
# ./Refresh.sh

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print a cool header
echo -e "${GREEN}"
echo "*********************************************"
echo "         Welcome to WelcomeKit Script        "
echo "*********************************************"
echo -e "${NC}"

# Print a cool message
echo -e "${YELLOW}Hey there! Welcomekit.sh is a bash script designed to streamline the setup process for a fresh Linux Mint installation. It automates the installation of essential packages, tools, and configurations, making it easier for users to get started with their system.${NC}"

# Print some ASCII art
echo ""
echo "    .-." 
echo "   |o.o|"
echo "   |:_:|"
echo "  //   \\"
echo " (|     |)"
echo "/'\_   _/`\""
echo "\___)=(___/"
echo ""

# Print a cool footer
echo -e "${RED}"
echo "*********************************************"
echo "               Have Fun!                     "
echo "*********************************************"
echo -e "${NC}"


# Update and upgrade system
echo "Updating and upgrading system..."
sudo apt update && sudo apt upgrade -y

# Install required packages
echo "Installing required packages..."
sudo apt install -y neofetch build-essential code git-all curl lolcat htop golang qbittorrent mysql-server sublime-text libreoffice pix audacious ghostwriter github-desktop virtualbox virtualbox-ext-pack tree fd-find exa duf cheese

# Install specific Visual Studio Code extensions
echo "Installing Visual Studio Code extensions..."
code --install-extension ahmadawais.shades-of-purple \
     --install-extension CoenraadS.bracket-pair-colorizer-2 \
     --install-extension eamodio.gitlens \
     --install-extension dbaeumer.vscode-eslint \
     --install-extension esbenp.prettier-vscode \
     --install-extension ritwickdey.LiveServer \
     --install-extension msjsdiag.debugger-for-chrome \
     --install-extension ms-azuretools.vscode-docker \
     --install-extension ms-vscode-remote.remote-ssh \
     --install-extension ms-vscode.cpptools \
     --install-extension formulahendry.code-runner \
     --install-extension Zackptg5.Glassit \
     --install-extension ms-toolsai.jupyter \
     --install-extension vscjava.vscode-maven \
     --install-extension mtxr.sqltools \
     --install-extension ms-python.python \
     --install-extension donjayamanne.githistory \
     --install-extension vscodevim.vim \
     --install-extension dsznajder.es7-react-js-snippets \
     --install-extension esbenp.prettier-vscode \
     --install-extension ecmel.vscode-html-css \
     --install-extension GitHub.copilot

# Clone auto-cpufreq repository and install
echo "Installing auto-cpufreq..."
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cd ..

# Install brave-browser
echo "Installing Brave browser..."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Install Spotify
echo "Installing Spotify..."
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client

# Install Sublime Text
echo "Installing Sublime Text..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install -y sublime-text

# Install tldr
echo "Installing TLDR..."
sudo apt install -y tldr
sudo tldr --update

# Install Node.js and npm
echo "Installing Node.js and npm..."
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs npm

# Add user to vboxusers group
echo "Adding user to vboxusers group..."
sudo usermod -aG vboxusers $USER


# Final message
echo -e "${RED}"
echo "*********************************************"
echo "               Finish!!!                     "
echo "*********************************************"
echo -e "${NC}"

# Reboot system
echo "Rebooting system..."
sudo reboot
