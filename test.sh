#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    systemctl stop httpd
    sleep 30s
else
    pgrep -x "$SERVICE" | sudo xargs kill
    echo "$SERVICE stopped"
fi
