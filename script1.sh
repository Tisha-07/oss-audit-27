#!/bin/bash

# Script 1: System Identity Report
# Author: Tanisha Manshani
# Course: Open Source Software

# -------- Variables --------
STUDENT_NAME="TANISHA"
SOFTWARE="Git"

# -------- System Information --------
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)              # Get current user
UPTIME=$(uptime -p)              # Get system uptime
DATE=$(date)                     # Get current date and time
DISTRO=$(lsb_release -d | cut -f2)  # Get Linux distribution name
HOME_DIR=$HOME                   # Get home directory

# -------- Display Output --------
echo "=============================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=============================="
echo "Software : $SOFTWARE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : GNU GPL v2"
