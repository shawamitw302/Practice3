#!/bin/bash
SERVICE="httpd"
systemctl stop "$SERVICE"
OUT=$?
if [ $OUT -eq 0 ];
then
    echo "$SERVICE stopped"
else
    pgrep -x "$SERVICE" | sudo xargs kill
    pgrep -x "$SERVICE"
    OUT=$?
    echo "$OUT"
fi
