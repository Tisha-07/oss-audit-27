#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Tanisha Manshani
# Course: Open Source Software

# -------- Variable --------
PACKAGE="git"

# -------- Check if package is installed --------
if dpkg -s "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."

    # Display package details
    dpkg -s "$PACKAGE" | grep -E "Version|Maintainer|Description"

else
    echo "$PACKAGE is NOT installed."
fi

# -------- Case statement for philosophy --------
case $PACKAGE in
    git) echo "Git: A distributed version control system that empowers open collaboration." ;;
    firefox) echo "Firefox: A web browser supporting an open and accessible internet." ;;
    vlc) echo "VLC: A free multimedia player that supports all formats." ;;
    mysql) echo "MySQL: An open-source database used in millions of applications." ;;
    *) echo "Unknown package." ;;
esac
