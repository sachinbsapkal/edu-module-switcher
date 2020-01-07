#!/bin/bash -x
cd /opt/avi/edu-module-switcher
git pull
rm -rf /opt/avi/modules/*
cp -r /opt/avi/edu-module-switcher/modules/$1/* /opt/avi/modules
curl -I -X GET 172.20.10.131:5000
