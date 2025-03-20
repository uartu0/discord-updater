#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "Run as sudo/root."
    exit 1
fi

echo "Running as root..."

# copying script to /bin/

cp update_discord.sh /bin/update_discord.sh
chmod +x /bin/update_discord.sh

# copying service to default path
cp service /etc/systemd/system/update_discord.service

# starting and enabling service
systemctl daemon-reload
systemctl start update_discord.service
systemctl enable update_discord.service

echo "Done!"
