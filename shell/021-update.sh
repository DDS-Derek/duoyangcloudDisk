#!/bin/bash

cd /
unzip -q /duoyang.cloudDisk.linux64.$TAG.zip -d /
rm -rf /duoyang.cloudDisk.linux64.$TAG.zip
if [ -f "/app/fy.duoyang.cloudDisk" ]; then
 rm -rf /app/fy.duoyang.cloudDisk
fi
if [ -d "/app/wwwroot" ]; then
 rm -rf /app/wwwroot
fi
mv /duoyang.cloudDisk.linux64.$TAG/linux64/fy.duoyang.cloudDisk /app/
mv /duoyang.cloudDisk.linux64.$TAG/linux64/wwwroot /app/
rm -rf /duoyang.cloudDisk.linux64.$TAG
if [ ! -f "/app/fy.duoyang.cloudDisk" ]; then
 echo -e "\033[31m更新失败,请重试 \033[0m"
else
 echo -e "\033[36m更新完成 \033[0m"
 touch /install.lock
 echo "安装完成" > /install.lock
fi
