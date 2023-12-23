# Debian Non-GNOME Linux Bash Scripts Repository

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

### Script 1: [Refresh.sh]

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

Run the script:
./Refresh.sh

Note: Customize the script based on your preferences and specific system requirements.

Enjoy a refreshed and optimized Linux system!

### Script 2: [Script_Name_2.sh]

Description of the second script and its purpose.

...

### Script N: [Script_Name_N.sh]

Description of the Nth script and its purpose.

## Installation

To get started with these scripts, follow these simple steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/debian-non-gnome-scripts.git
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

Happy scripting and enjoy your non-GNOME Debian experience!
