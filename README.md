
# Debian Linux Bash Scripts Repository

Welcome to the Debian Non-GNOME Linux Bash Scripts repository! This collection of scripts is designed to enhance and streamline the experience of users running Debian-based Linux distributions without the GNOME desktop environment. Whether you're a seasoned Linux user or a beginner, these scripts aim to simplify common tasks, automate processes, and customize your non-GNOME Debian system.

## Table of Contents

1. [Introduction](#introduction)
2. [Scripts Overview](#scripts-overview)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Contributing](#contributing)
6. [License](#license)
7. [Warning](#Warning)

## Introduction

Debian-based Linux distributions offer a stable and versatile foundation for various computing needs. However, users who prefer desktop environments other than GNOME may encounter challenges in finding tailored scripts to suit their preferences. This repository addresses this gap by providing a collection of Bash scripts specifically crafted for non-GNOME environments.

## Scripts Overview

## Script 1: Refresh - Automate Maintainance of Your Linux Machine with Refresh.sh: Optimize, Clear, and Update for Peak Performance!

The `Refresh.sh` script automates several maintenance tasks on a Linux system, enhancing performance and managing storage space. Here's a summary of its functionalities:

1. **Package Manager Update and Upgrade:**
   - Updates the package manager (`apt-get` or `dnf`) and upgrades installed packages.

2. **Clear System Caches:**
   - Synchronizes and clears the PageCache, dentries, and inodes to free up system memory.

3. **Clear systemd Journal Logs:**
   - Truncates systemd journal logs to manage log file sizes.

4. **Clear Package Manager Cache:**
   - Cleans up the cache of the package manager (`apt-get` or `dnf`) to reclaim storage space.

5. **Clear Browser Cache:**
   - Clears the browser cache for popular browsers (Firefox, Google Chrome, Brave). Uncomment/comment lines based on installed browsers.

6. **Clear Thumbnail Cache (Optional - GNOME):**
   - Clears the thumbnail cache for GNOME desktop environments (commented out by default).

7. **Clear Font Cache (Optional):**
   - Clears the font cache (commented out by default).

8. **Display System Information:**
   - Uses `neofetch` to display system information, presenting an ASCII representation labeled "windows."

9. **Completion Message:**
   - Prints a message indicating the successful update and cache clearance.

## Usage

1. Ensure the script has executable permissions:

   ```bash
   chmod +x Refresh.sh
   ```

2. Run the script:

   ```bash
   ./Refresh.sh
   ```

Note: Customize the script based on your preferences and specific system requirements.

Enjoy a refreshed and optimized Linux system!

## Script 2: WelcomeKit - Streamline Your Fresh Linux Mint Installation

This script, `WelcomeKit.sh`, aims to simplify the initial setup process for a new Linux Mint installation. It automates the installation of essential applications, tools, and configurations, getting you up and running quickly.

### Features

* Installs crucial packages for development, productivity, and multimedia.
* Configures Visual Studio Code with recommended extensions.
* Sets up auto-cpufreq for optimized power management.
* Installs popular browsers like Brave and Spotify.
* Adds user to the `vboxusers` group for seamless VirtualBox interaction.

#### In-Depth
- **System Update:** Updates and upgrades the system packages to ensure everything is up-to-date.
- **Package Installation:** Installs a curated set of packages and tools for development, productivity, and entertainment.
- **Visual Studio Code Setup:** Installs Visual Studio Code along with popular extensions for enhanced development experience.
- **Auto-cpufreq:** Configures CPU frequency scaling for optimal performance and power efficiency.
- **Brave Browser:** Adds Brave Browser repository and installs it for secure and private browsing.
- **Sublime Text:** Adds Sublime Text repository and installs it for a sophisticated text editor experience.
- **Spotify:** Adds Spotify repository and installs the official Spotify client for music streaming.
- **Ghostwriter:** Installs the Ghostwriter application for distraction-free writing.
- **VirtualBox:** Installs VirtualBox and its extension pack for virtualization needs.
- **Node.js and npm:** Installs Node.js and npm for JavaScript development.
- **Utilities:** Installs various utilities such as `htop`, `curl`, `git`, `lolcat`, `tldr`, `tree`, `fd-find`, `exa`, and more.
- **User-friendly:** Provides clear feedback and instructions during the installation process.

#### Script Execution Steps

1. **Header and Message:** 
   - Prints a header and a message to inform the user about the purpose of the script.

2. **Update and Upgrade:** 
   - Updates and upgrades the system using `apt update` and `apt upgrade`.

3. **Install Required Packages:** 
   - Installs a list of required packages including `neofetch`, `build-essential`, `Visual Studio Code`, `Git`, `curl`, `lolcat`, `htop`, `golang`, `qbittorrent`, `MySQL Server`, `Sublime Text`, `LibreOffice`, `pix`, `Audacious`, `Ghostwriter`, `GitHub Desktop`, `VirtualBox`, `VirtualBox Extension Pack`, `tree`, `fd-find`, `exa`, `duf`, and `cheese`.

4. **Install Specific Visual Studio Code Extensions:** 
   - Installs specific extensions for Visual Studio Code.

5. **Clone and Install auto-cpufreq:** 
   - Clones the auto-cpufreq repository from GitHub and installs it.

6. **Install Brave Browser:** 
   - Installs the Brave browser.

7. **Install Spotify:** 
   - Installs Spotify.

8. **Install Sublime Text:** 
   - Installs Sublime Text.

9. **Install tldr:** 
   - Installs tldr (a command-line utility for displaying simplified and community-driven man pages).

10. **Install Node.js and npm:** 
    - Installs Node.js and npm.

11. **Add User to vboxusers Group:** 
    - Adds the current user to the vboxusers group.

12. **Final Message:** 
    - Prints a final message.

13. **Reboot System:** 
    - Reboots the system.

## Usage

1. Ensure the script has executable permissions:

   ```bash
   chmod +x WelcomeKit.sh
   ```

2. Run the script:

   ```bash
   ./WelcomeKit.sh
   ```

Note: Customize the script based on your preferences and specific system requirements.

Enjoy a Happy Meal ;0 Linux system!

## Script 3: File Organizer Script - Organize Your Files with Ease

This bash script, `FileOrganizer.sh`, is designed to help you tidy up your files by organizing them into structured folders based on their file types or extensions. Whether you have a cluttered downloads folder or need to sort through various files, this script streamlines the process, making file organization effortless.

### Features

* Quickly organizes files into folders named after their file formats.
* Provides a menu-driven interface for easy selection of file types.
* Includes options to organize files into predefined categories or by custom extensions.
* Handles moving all files into a designated folder for comprehensive organization.

#### In-Depth
- **Menu-Driven Interface:** Offers a user-friendly menu interface for selecting file types to organize.
- **Automatic Organization:** Moves files into appropriate folders based on their extensions for efficient file management.
- **Predefined Categories:** Supports predefined categories for common file types like text, image, audio, video, compressed, programming, data, and web files.
- **Custom Extension Handling:** Allows users to specify custom file extensions and organizes them into a dedicated "Custom" folder within the "Extensions" directory.
- **Comprehensive Organization:** Provides an option to move all files into a folder for a thorough clean-up of the working directory.

#### Script Execution Steps

1. **Menu Display:** Displays a menu with options for organizing files based on predefined categories, custom extensions, or organizing all files.
2. **File Organization:** Implements logic to move files into appropriate folders based on user-selected options or custom extensions.
3. **User Input Handling:** Processes user input for selecting options or entering custom extensions.
4. **Folder Creation:** Creates necessary directories and subdirectories for organizing files.
5. **Error Handling:** Includes error handling mechanisms to ensure smooth execution and provide feedback to the user.

#### Usage

1. **Download the Script:**
   - Download the `FileOrganizer.sh` script to your desired directory.

2. **Set Permissions:**
   - Ensure the script has executable permissions:
     ```bash
     chmod +x FileOrganizer.sh
     ```

3. **Run the Script:**
   - Execute the script:
     ```bash
     ./FileOrganizer.sh
     ```

4. **Follow On-Screen Prompts:**
   - Choose from the menu options to organize files based on predefined categories, custom extensions, or organize all files.

5. **Enjoy Organized Files:**
   - Sit back and let the script organize your files efficiently into structured folders.

### Note
- Customize the script according to your specific requirements or preferences.
- Ensure that files to be organized are located in the same directory as the script for seamless execution.

Effortlessly declutter your workspace with the File Organizer script, simplifying file organization for improved productivity!

## Script 4: SQLinux - A Bash Script for MySQL Setup on Linux

**SQLinux** is a convenient bash script designed to streamline the process of setting up and managing MySQL on Linux systems. Developed with love by *kintsugi-programmer*, this script simplifies various MySQL-related tasks, making it easier for developers and system administrators to work with this popular relational database management system.

### Features

- **Install MySQL:** The script can install the MySQL server and its dependencies on your Linux system with a single command.
- **Uninstall MySQL:** If you need to remove MySQL from your system, SQLinux provides an option to uninstall the MySQL server, client, and common components, along with cleaning up related files and directories.
- **Create MySQL Credentials:** You can create new MySQL user accounts with specified usernames and passwords using this script.
- **Grant Privileges:** SQLinux allows you to grant all privileges to a specific MySQL user account on your system.
- **Flush All Privileges:** In case you need to refresh and reload the privilege tables, the script provides an option to flush all MySQL privileges.
- **Execute SQL Script:** You can execute SQL scripts on a specified database by providing the database name and the path to the SQL script file.
- **Start/Stop MySQL Server:** The script offers convenient options to start or stop the MySQL server service on your Linux system.

### Usage

To use SQLinux, follow these steps:

1. Clone the repository or download the script file.
2. Navigate to the directory containing the script using the terminal.
3. Make the script executable by running `chmod +x sqlinux.sh`.
4. Execute the script with `./sqlinux.sh`.
5. Follow the on-screen menu prompts to select the desired operation.

**Note:** Remember to have the necessary permissions (*sudo*) to perform administrative tasks like installing, uninstalling, or managing MySQL on your system. Additionally, customize the script according to your specific requirements and preferences.

SQLinux aims to simplify the MySQL setup process on Linux systems, providing a user-friendly interface and a centralized location for various MySQL-related tasks. Enjoy a streamlined MySQL experience with SQLinux!

### Script N: Script_Name_N.sh

Description of the Nth script and its purpose.

## Installation

To get started with these scripts, follow these simple steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/kintsugi-programmer/LinuxScripts.git
   ```

2. Navigate to the repository directory:

   ```bash
   cd LinuxScripts/
   ```

3. Make the scripts executable:

   ```bash
   chmod +x *.sh
   ```

## Usage

Each script comes with its own set of instructions and usage guidelines. Refer to the individual script files for detailed information on how to use them. Generally, you can run a script by executing:

```bash
./Script_Name.sh
```

Make sure to replace "Script_Name" with the actual name of the script you want to run.

## Contributing

Contributions to this repository are welcome! If you have a useful Bash script for non-GNOME Debian environments, feel free to submit a pull request. Please follow the contribution guidelines outlined in the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the scripts in accordance with the terms specified in the license.

Happy scripting and enjoy your non-GNOME Debian Pro experience!

## Warning

**Note:**
These scripts are provided as-is and might include experimental or unstable features. Use them at your own risk. The maintainers of this repository take no responsibility for any damage or issues that may arise from the use of these scripts. Always review the scripts and understand their functionality before running them on your system. If in doubt, consult with a knowledgeable Linux user or system administrator. Proceed with caution.