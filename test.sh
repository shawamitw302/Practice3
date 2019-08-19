#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    systemctl stop httpd
    sleep 30s
elif pgrep -x "$SERVICE" >/dev/null    
then
    sudo kill -9 $(pgrep -x "$SERVICE")
else
    echo "$SERVICE stopped"
fi
