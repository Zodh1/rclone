#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
mkdir /.config
mkdir /.config/rclone/
wget -nc $CONFIG_IN_URL -O '/.config/rclone/rclone.conf'
rclone listremotes
rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
