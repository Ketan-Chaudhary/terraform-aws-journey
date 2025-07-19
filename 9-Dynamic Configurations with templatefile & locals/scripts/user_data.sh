#!/bin/bash
yum update -y
amazon-linux-extras enable nginx1
amazon-linux-extras intall -y nginx1
systemctl start nginx
systemctl enable nginx
echo "<h1>Welcome to ${server_name}- Powered by Terraform </h1>" > /usr/share/nginx/html/index.html