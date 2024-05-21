# Git Credentials Setter

This is a bash script designed to set the local Git username and email for all Git repositories within the directory where the script is located.

## Description

The script iterates over all subdirectories, checks if they are Git repositories (by looking for a `.git` directory), and if they are, it changes the local Git configuration to set the user name and email. This can be useful when you want to ensure that all commits in these repositories are associated with a specific user.
