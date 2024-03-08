#!/bin/bash
# chmod +x WelcomeKit.sh
# ./Refresh.sh

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print cool header
print_header() {
    echo -e "${GREEN}"
    echo "*********************************************"
    echo "         Welcome to WelcomeKit Script        "
    echo "*********************************************"
    echo -e "${NC}"
}

# Function to print cool message
print_message() {
    echo -e "${YELLOW}Hey there! Welcomekit.sh is a bash script designed to streamline the setup process for a fresh Linux Mint installation. It automates the installation of essential packages, tools, and configurations, making it easier for users to get started with their system.${NC}"
}

# Function to print cool footer
print_footer() {
    echo -e "${RED}"
    echo "*********************************************"
    echo "               Have Fun!                     "
    echo "*********************************************"
    echo -e "${NC}"
}

# Function to update and upgrade system
update_system() {
    echo "Updating and upgrading system..."
    sudo apt update && sudo apt upgrade -y
}

# Function to install required packages
install_packages() {
    echo "Installing required packages..."
    sudo apt install -y neofetch build-essential code git-all curl lolcat htop golang qbittorrent mysql-server sublime-text libreoffice pix audacious ghostwriter github-desktop virtualbox virtualbox-ext-pack tree fd-find exa duf cheese
}

# Function to install specific Visual Studio Code extensions
install_vscode_extensions() {
    echo "Installing Visual Studio Code extensions..."
    code --install-extension ahmadawais.shades-of-purple \
         --install-extension CoenraadS.bracket-pair-colorizer-2 \
         --install-extension eamodio.gitlens \
         # Add more extensions here as needed
}

# Function to clone auto-cpufreq repository and install
install_auto_cpufreq() {
    echo "Installing auto-cpufreq..."
    git clone https://github.com/AdnanHodzic/auto-cpufreq.git
    cd auto-cpufreq && sudo ./auto-cpufreq-installer
    cd ..
}

# Function to install Brave browser
install_brave_browser() {
    echo "Installing Brave browser..."
    # Add Brave browser installation steps here
}

# Function to install Spotify
install_spotify() {
    echo "Installing Spotify..."
    # Add Spotify installation steps here
}

# Function to install Sublime Text
install_sublime_text() {
    echo "Installing Sublime Text..."
    # Add Sublime Text installation steps here
}

# Function to install tldr
install_tldr() {
    echo "Installing TLDR..."
    sudo apt install -y tldr
    sudo tldr --update
}

# Function to install Node.js and npm
install_nodejs_npm() {
    echo "Installing Node.js and npm..."
    # Add Node.js and npm installation steps here
}

# Function to add user to vboxusers group
add_user_to_vboxusers() {
    echo "Adding user to vboxusers group..."
    sudo usermod -aG vboxusers $USER
}

# Function to reboot system
reboot_system() {
    echo "Rebooting system..."
    sudo reboot
}

# Function to execute all tasks in order
execute_all_in_order() {
    update_system
    install_packages
    install_vscode_extensions
    install_auto_cpufreq
    install_brave_browser
    install_spotify
    install_sublime_text
    install_tldr
    install_nodejs_npm
    add_user_to_vboxusers
    reboot_system
}

# Main function to display menu and handle user input
main_menu() {
    while true; do
        clear
        print_header
        print_message
        echo ""
        echo "1. Update and upgrade system"
        echo "2. Install required packages"
        echo "3. Install Visual Studio Code extensions"
        echo "4. Install auto-cpufreq"
        echo "5. Install Brave browser"
        echo "6. Install Spotify"
        echo "7. Install Sublime Text"
        echo "8. Install tldr"
        echo "9. Install Node.js and npm"
        echo "10. Add user to vboxusers group"
        echo "11. Reboot system"
        echo "12. Execute all tasks in order"
        echo "0. Exit"
        echo ""
        read -p "Enter your choice: " choice

        case $choice in
            1) update_system ;;
            2) install_packages ;;
            3) install_vscode_extensions ;;
            4) install_auto_cpufreq ;;
            5) install_brave_browser ;;
            6) install_spotify ;;
            7) install_sublime_text ;;
            8) install_tldr ;;
            9) install_nodejs_npm ;;
            10) add_user_to_vboxusers ;;
            11) reboot_system ;;
            12) execute_all_in_order ;;
            0) echo "Exiting..."; exit ;;
            *) echo "Invalid option. Please try again." ;;
        esac

        read -p "Press Enter to continue..."
    done
}

# Call the main menu function
main_menu
