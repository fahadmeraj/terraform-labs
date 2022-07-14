#!/bin/bash
apt-get update
apt-get install nginx -y
echo "Hi Gaurav" >/var/www/html/index.nginx-debian.html
