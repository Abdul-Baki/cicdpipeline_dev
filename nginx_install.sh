#!/bin/bash


sudo apt-get update
sudo apt-get install nginx -y

nginx -v

cd /etc/nginx
sudo openssl req -x509 -nodes -days 999 -newkey rsa:2048 \
    -subj "/C=GB/ST=London/L=London/O=localtesting/OU=testing/CN=localhost" \
    -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt

sudo service nginx status
curl localhost
