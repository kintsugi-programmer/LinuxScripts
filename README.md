
# Debian Linux Bash Scripts Repository

Welcome to the Debian Non-GNOME Linux Bash Scripts repository! This collection of scripts is designed to enhance and streamline the experience of users running Debian-based Linux distributions without the GNOME desktop environment. Whether you're a seasoned Linux user or a beginner, these scripts aim to simplify common tasks, automate processes, and customize your non-GNOME Debian system.

## Table of Contents

1. [Introduction](#introduction)
2. [Scripts Overview](#scripts-overview)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Contributing](#contributing)
6. [License](#license)

## Introduction

Debian-based Linux distributions offer a stable and versatile foundation for various computing needs. However, users who prefer desktop environments other than GNOME may encounter challenges in finding tailored scripts to suit their preferences. This repository addresses this gap by providing a collection of Bash scripts specifically crafted for non-GNOME environments.

## Scripts Overview

### Script 1: Refresh.sh

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

## WelcomeKit.sh - Streamline Your Fresh Linux Mint Installation

This script, `WelcomeKit.sh`, aims to simplify the initial setup process for a new Linux Mint installation. It automates the installation of essential applications, tools, and configurations, getting you up and running quickly.

### Features

* Installs crucial packages for development, productivity, and multimedia.
* Configures Visual Studio Code with recommended extensions.
* Sets up auto-cpufreq for optimized power management.
* Installs popular browsers like Brave and Spotify.
* Adds user to the `vboxusers` group for seamless VirtualBox interaction.

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
   ```

### Script 3: Script_Name_3.sh

Description of the second script and its purpose.

...

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
   cd debian-non-gnome-scripts
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
```


**Note:**
These scripts are provided as-is and might include experimental or unstable features. Use them at your own risk. The maintainers of this repository take no responsibility for any damage or issues that may arise from the use of these scripts. Always review the scripts and understand their functionality before running them on your system. If in doubt, consult with a knowledgeable Linux user or system administrator. Proceed with caution.