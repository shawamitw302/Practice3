#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    sudo systemctl stop httpd
else
    echo "$SERVICE stopped"
fi
