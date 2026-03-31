#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Tanisha Manshani
# Course: Open Source Software

# -------- Directories to check --------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# -------- Loop through directories --------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done

# -------- Check Git configuration file --------
echo ""
echo "Checking Git configuration..."

GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "Git config found: $GIT_CONFIG"
    echo "Permissions: $PERMS"
else
    echo "Git config file not found"
fi
