#!/bin/bash
cat /etc/system-release
systemctl status httpd
systemctl stop httpd
systemctl status httpd
