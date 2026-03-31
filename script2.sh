#!/bin/bash
PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: Version control system for developers." ;;
    firefox) echo "Firefox: Web browser." ;;
    vlc) echo "VLC: Media player." ;;
    mysql) echo "MySQL: Database system." ;;
esac
