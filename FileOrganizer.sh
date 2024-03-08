#!/bin/bash

# ASCII art
echo "  ______ _ _         ____                        _              "
echo " |  ____(_) |       / __ \                      (_)             "
echo " | |__   _| | ___  | |  | |_ __ __ _  __ _ _ __  _ _______ _ __ "
echo " |  __| | | |/ _ \ | |  | | '__/ _\` |/ _\` | '_ \| |_  / _ \ '__|"
echo " | |    | | |  __/ | |__| | | | (_| | (_| | | | | |/ /  __/ |   "
echo " |_|    |_|_|\___|  \____/|_|  \__, |\__,_|_| |_|_/___\___|_|   "
echo "                                __/ |                          "
echo "                               |___/                           "
echo ""

# Welcome message
echo "Welcome by Kintsugi Programmer"
echo "This bash script, `FileOrganizer.sh`, is designed to help you tidy up your files by organizing them into structured folders based on their file types or extensions. Whether you have a cluttered downloads folder or need to sort through various files, this script streamlines the process, making file organization effortless."

# Rest of your script goes here...

# Function to move files of a specific extension into a directory
move_files() {
    category="$1"
    shift
    mkdir -p "organized_files/$category"
    for extension in "$@"; do
        mkdir -p "organized_files/$category/$extension"
        mv *.$extension "organized_files/$category/$extension" 2>/dev/null
    done
}

# Function to move all files
move_all_files() {
    mkdir -p "organized_files/all_files"
    mv * "organized_files/all_files" 2>/dev/null
}

# Function to move custom file extensions
move_custom_files() {
    read -p "Enter custom file extensions (comma-separated): " custom_extensions
    mkdir -p "organized_files/Extensions/Custom"
    for ext in $(echo $custom_extensions | tr ',' ' '); do
        mkdir -p "organized_files/Extensions/Custom/$ext"
        mv *.$ext "organized_files/Extensions/Custom/$ext" 2>/dev/null
    done
}

# Main menu
while true; do
    echo "Select an option:"
    echo "1. Text and Document Files"
    echo "2. Image Files"
    echo "3. Audio Files"
    echo "4. Video Files"
    echo "5. Compressed Files"
    echo "6. Programming and Executable Files"
    echo "7. Data Files"
    echo "8. Web Files"
    echo "9. Custom File Extensions"
    echo "10. All Files"
    echo "0. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) move_files "Text_and_Document_Files" "txt" "doc" "docx" "pdf" "rtf" "odt";;
        2) move_files "Image_Files" "jpg" "jpeg" "png" "gif" "bmp" "svg";;
        3) move_files "Audio_Files" "mp3" "wav" "ogg" "flac" "aac";;
        4) move_files "Video_Files" "mp4" "avi" "mkv" "mov" "wmv";;
        5) move_files "Compressed_Files" "zip" "rar" "tar.gz" "tgz" "7z" "tar.bz2";;
        6) move_files "Programming_and_Executable_Files" "c" "cpp" "java" "py" "exe" "sh";;
        7) move_files "Data_Files" "csv" "xlsx" "xls" "json" "xml" "sqlite";;
        8) move_files "Web_Files" "html" "htm" "css" "js" "php" "asp" "aspx";;
        9) move_custom_files;;
        10) move_all_files;;
        0) echo "Exiting..."; exit;;
        *) echo "Invalid option. Please enter a valid option.";;
    esac
done
