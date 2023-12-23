#!/bin/bash
# chmod +x Ref.sh
# ./Ref.sh

# Update package manager and upgrade packages
if command -v apt-get &> /dev/null; then
  sudo apt-get update
  sudo apt-get upgrade -y
elif command -v dnf &> /dev/null; then
  sudo dnf check-update
  sudo dnf upgrade -y
fi

# Clear PageCache, dentries, and inodes
sudo sync
sudo echo 3 > /proc/sys/vm/drop_caches

# Clear systemd journal logs
sudo journalctl --vacuum-size=50M

# Clear package manager cache
if command -v apt-get &> /dev/null; then
  sudo apt-get clean
elif command -v dnf &> /dev/null; then
  sudo dnf clean all
fi

# Clear browser cache (replace "firefox" with your browser command)
firefox --new-instance --clear-cache
google-chrome --new-instance --clear-cache
# brave-browser --new-instance --clear-cache

# Clear thumbnail cache (GNOME)
# rm -r ~/.cache/thumbnails/*

# Clear font cache
# sudo fc-cache -r -v

echo "System updated and cache cleared successfully."
neofetch --ascii_distro windows
