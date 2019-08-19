#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    systemctl stop httpd
    sleep 30s
elif pgrep -x "$SERVICE" >/dev/null    
then
    pgrep -x "$SERVICE" | sudo xargs kill
else
    echo "$SERVICE stopped"
fi
