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
    declare -a packages=("neofetch" "build-essential" "code" "git-all" "curl" "lolcat" "htop" "golang" "qbittorrent" "mysql-server" "sublime-text" "libreoffice" "pix" "audacious" "ghostwriter" "github-desktop" "virtualbox" "virtualbox-ext-pack" "tree" "fd-find" "exa" "duf" "cheese")
    echo "Select packages to install:"
    echo "0. Install all packages"
    for ((i=0; i<${#packages[@]}; i++)); do
        echo "$((i+1)). ${packages[i]}"
    done
    echo ""

    while true; do
        read -p "Enter the number of the package you want to install (0 to install all, -1 to exit): " choice
        case $choice in
            0)
                sudo apt install -y "${packages[@]}"
                break
                ;;
            -1)
                break
                ;;
            *)
                if [[ $choice -gt 0 && $choice -le ${#packages[@]} ]]; then
                    sudo apt install -y "${packages[choice-1]}"
                else
                    echo "Invalid option. Please try again."
                fi
                ;;
        esac
    done
}

# Function to install specific Visual Studio Code extensions
install_vscode_extensions() {
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
    # Add more extensions here as needed
}

# Function to clone auto-cpufreq repository and install
install_auto_cpufreq() {
    echo "Installing auto-cpufreq..."
    git clone https://github.com/AdnanHodzic/auto-cpufreq.git
    cd auto-cpufreq && sudo ./auto-cpufreq-installer
    cd ..
}

# Function to install tldr
install_tldr() {
    echo "Installing TLDR..."
    sudo apt install -y tldr
    sudo tldr --update
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
    update_system || { echo "Failed to update system"; exit 1; }
    install_packages || { echo "Failed to install packages"; exit 1; }
    install_vscode_extensions || { echo "Failed to install VS Code extensions"; exit 1; }
    install_auto_cpufreq || { echo "Failed to install auto-cpufreq"; exit 1; }
    install_tldr || { echo "Failed to install TLDR"; exit 1; }
    add_user_to_vboxusers || { echo "Failed to add user to vboxusers group"; exit 1; }
    reboot_system || { echo "Failed to reboot system"; exit 1; }
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
        echo "5. Install TLDR"
        echo "6. Add user to vboxusers group"
        echo "7. Reboot system"
        echo "8. Execute all tasks in order"
        echo "0. Exit"
        echo ""
        read -p "Enter your choice: " choice

        case $choice in
            1) update_system ;;
            2) install_packages ;;
            3) install_vscode_extensions ;;
            4) install_auto_cpufreq ;;
            5) install_tldr ;;
            6) add_user_to_vboxusers ;;
            7) reboot_system ;;
            8) execute_all_in_order ;;
            0) echo "Exiting..."; exit ;;
            *) echo "Invalid option. Please try again." ;;
        esac

        read -p "Press Enter to continue..."
    done
}

# Call the main menu function
main_menu
