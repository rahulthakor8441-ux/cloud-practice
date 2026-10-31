#!/bin/bash

echo "SERVER HEALTH REPORT"
echo "----------------------"

echo "HOSTNAME:"
hostname

echo "DATE:"
date

echo "RAM:"
free -h

echo "DISK:"
df -h /

echo "UPTOME:"
uptime

echo "NGINX STATUS:"
systemctl is-active nginx

echo "PORT 80:"
ss -tuln | grep ':80'
