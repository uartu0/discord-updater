#!/bin/bash

# Set the URL to fetch the latest .deb file
URL="https://discord.com/api/download/stable?platform=linux&format=deb"

# Use curl to follow redirects and download the .deb file
DEB_FILE="/tmp/discord_latest.deb"
curl -L -o "$DEB_FILE" "$URL"

# Install the .deb file
sudo dpkg -i "$DEB_FILE"

# Clean up
rm -f "$DEB_FILE"
