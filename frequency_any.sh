#!/bin/bash

# Function to display a help menu
display_help() {
    echo "Usage: $0 [OPTION]"
    echo -e "\nOPTIONS:"
    echo "  <frequency>     Use 0000~3700 or depends on the CPU."
    echo "  --help       Display this help and exit."
}

# Check if a user provided an argument
if [ "$#" -eq 0 ]; then
    display_help
    exit 1
elif [ "$1" == "--help" ]; then
    display_help
    exit 0
fi

# The user provided an argument, so we'll use it as the second parameter for our command
NUM="$1"

# Loop from 0 to 255, CPU ID.
for i in {0..255}; do
    # Execute the command with the current value of i and the provided number
    sudo ./e_smi_tool --setcorebl $i $NUM
done
