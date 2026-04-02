#!/bin/bash

set -e  # stop script on any error

REPO_URL="https://github.com/0smid0s/ads-sandbox.git"
DIR_NAME="ads-sandbox"
SCRIPT_NAME="go_go.sh"

# Remove existing directory
if [ -d "$DIR_NAME" ]; then
    echo "Directory '$DIR_NAME' exists. Removing it..."
    rm -rf "$DIR_NAME"
fi

echo "Cloning fresh repository..."
git clone "$REPO_URL"

echo "Entering directory..."
cd "$DIR_NAME" || { echo "Failed to enter directory"; exit 1; }

echo "Running script..."
chmod +x "$SCRIPT_NAME"
sudo ./"$SCRIPT_NAME"
