#!/bin/bash
# ============================================================
# Script 1: System Identity Report
# Author: Sarthak Verma | Reg No: 24BAI10048
# Course: Open Source Software | OSS NGMC Capstone Project
# Description: Displays a welcome screen with system info
#              and open-source license details for the OS.
# ============================================================

# --- Variables ---
STUDENT_NAME="Sarthak Verma"
REG_NO="24BAI10048"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)                              #Kernal version
USER_NAME=$(whoami)                             #Logged-in user
UPTIME=$(uptime -p)                             #System uptime
HOME_DIR=$HOME                                  #User's home-directory
DATE_TIME=$(date '+%Y-%m-%d %H:%M:%S')          #Current date and time

# Fetching OS Name (works on most modern distros with systemd)
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d'"' -f2)

# --- Display ---
echo "=================================================="
echo "    OPEN SOURCE AUDIT — System Identity Report    "
echo "=================================================="
echo ""
echo "  Student  : $STUDENT_NAME"
echo "  Reg No   : $REG_NO"
echo "  Software : $SOFTWARE_CHOICE"
echo "=================================================="
echo "               SYSTEM INFORMATION                 "
echo "=================================================="
echo ""
echo "OS Distro   : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME_DIR"
echo "System Time : $DATE_TIME"
echo "Uptime      : $UPTIME"
echo "--------------------------------------------------"
echo "License Note: The Linux kernel is released under"
echo "the GNU General Public License version 2 (GPLv2)"
