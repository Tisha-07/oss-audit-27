#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Tanisha Manshani
# Course: Open Source Software

echo "Answer the following questions to generate your manifesto:"
echo ""

# -------- User Input --------
read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. What will you build: " BUILD

# -------- Variables --------
DATE=$(date)
OUTPUT="manifesto_$(whoami).txt"

# -------- Generate Manifesto --------
echo "On $DATE, I believe in open source. I use $TOOL daily. Freedom means $FREEDOM to me. I will build $BUILD and share it freely so others can learn, improve, and grow." > "$OUTPUT"

# -------- Display Output --------
echo ""
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
