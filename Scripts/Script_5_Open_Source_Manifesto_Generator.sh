#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Sarthak Verma | Reg No: 24BAI10048
# Course: Open Source Software | OSS NGMC Capstone Project
# Description: Interactively asks the user three questions
#              and composes a personalised open-source
#              philosophy statement, saved to a .txt file.
# ============================================================

# ============================================================
# ALIAS CONCEPT (demonstrated via comment and function)
# In a real shell session, 'alias' creates shorthand commands.
# Example: alias gs='git status'
# Here we define a helper function — the function-as-alias pattern.
# ============================================================

echo "Answer three questions to generate your manifesto."
echo "------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %b %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and write it to the file
echo "============================================" > "$OUTPUT"
echo "        MY OPEN SOURCE MANIFESTO            " >> "$OUTPUT"
echo "              $DATE                         " >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should empower, not restrict. " >> "$OUTPUT"
echo "Every day, I rely on tools like $TOOL to learn, create, and grow." >> "$OUTPUT"
echo "To me, digital rights and open code ultimately mean $FREEDOM." >> "$OUTPUT"
echo "In the spirit of standing on the shoulders of giants, my goal " >> "$OUTPUT"
echo "is to give back to the community by eventually building and " >> "$OUTPUT"
echo "freely sharing $BUILD so that others may learn from my work." >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "------------------------------------------------"
cat "$OUTPUT"
