# Discord Auto-Updater
Automatic updates discord on linux machines using it's official link and downloading the latest redirect.
The .deb is downloaded and then saved on /tmp, installed with `sudo dpkg -i $DEB` and then removed.
Then I've created a service to run every time the computer starts.
