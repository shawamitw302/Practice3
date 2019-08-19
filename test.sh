#!/bin/bash
SERVICE="httpd"
if pgrep -x "$SERVICE" >/dev/null
then
    systemctl stop httpd
else
    echo "$SERVICE stopped"
fi
