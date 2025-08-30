#!/bin/bash
yum update -y
amazon-linux-extras install -y nginx1
systemctl start nginx
systemctl enable nginx
echo "<h1>Hello from Terraform! Host: $(hostname -f)</h1>" > /usr/share/nginx/html/index.html