#!/bin/bash
systemctl status httpd
sudo -u root systemctl stop httpd.service
systemctl status httpd
