#!/bin/sh

mkdir -p /etc/nginx/certificate
mv ./nginx.key /etc/nginx/certificate
mv ./nginx-certificate.crt /etc/nginx/certificate

mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
mv ./nginx.conf /etc/nginx/
