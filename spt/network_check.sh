#!/bin/bash

echo "NETWORK HEALTH REPORT"
echo "------------------------"

echo "IP ADDRESS:"
hostname -I

echo "GATEWAY:"
ip route

echo "INTERNET:"
ping -c 2 1.1.1.1

echo "DNS:"
getent hosts google.com

echo "HTTPS:"
curl-I --max-time 10 https://google.com
