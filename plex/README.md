# Plex Media Server

## Fix graphics device permissions (Synology devices only)

To enable hardware transcoding on a Synology NAS, create a scheduled task to expose the graphics devices to the Plex container Ensure the task is run as root, and that it is executed manually once before the compose file is deployed.

Create the task as follows:

```
#!/bin/bash
sudo chmod 777 /dev/dri/*
sudo chmod 777 /dev/dri
sudo chmod 777 /dev/dri/card0
sudo chmod 777 /dev/dri/renderD128
```
