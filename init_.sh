#!/bin/bash

REPO_URL="https://github.com/0smid0s/ads-sandbox.git"
DIR_NAME="ads-sandbox"
SCRIPT_NAME="go_go.sh"

# Check if directory exists
if [ -d "$DIR_NAME" ]; then
    echo "Directory '$DIR_NAME' exists. Removing it..."
    rm -rf "$DIR_NAME"
fi

echo "Cloning fresh repository..."
git clone "$REPO_URL"

echo "Done."
cd "$DIR_NAME"
sudo ./"$SCRIPT_NAME"
