#!/bin/bash

# Script 4: Log File Analyzer
# Author: Tanisha Manshani
# Course: Open Source Software

# -------- Input arguments --------
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# -------- Check if file exists --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- Check if file is empty (retry logic) --------
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please try another file."
    exit 1
fi

# -------- Read file line by line --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# -------- Display result --------
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# -------- Show last 5 matching lines --------
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
