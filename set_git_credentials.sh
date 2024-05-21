#!/bin/bash

# Replace these with your username and email
username="username"
email="email"

# Get the directory of the script
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Iterate over all subdirectories
for d in $dir/*/ ; do
    # Check if it's a git repository
    if [ -d "$d/.git" ] ; then
        # Change to the directory
        cd "$d"
        # Set the credentials
        git config --local user.name "$username"
        git config --local user.email "$email"
        echo "Set credentials for repository $d"
    fi
done