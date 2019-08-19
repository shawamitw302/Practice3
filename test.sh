#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    systemctl stop httpd
    sleep 30s
elif pgrep -x "$SERVICE" >/dev/null    
then
    sudo pgrep -x "$SERVICE" | xargs kill -9
else
    echo "$SERVICE stopped"
fi
