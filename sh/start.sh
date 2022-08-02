#!/bin/bash

# 判断是否需要安装或者更新
if [ ! -f "/install.lock" ]; then
 echo -e "\033[34m开始安装或更新... \033[0m"
 bash /sh/choose.sh
else
 echo -e "\033[33m设置权限... \033[0m"
 # 设置权限
 chmod 775 /app/fy.duoyang.cloudDisk
 chmod 775 /app/Order/Aria2Linux/aria2c
 chmod 775 /app/Order/ffmpeg
 chmod 775 /app/Order/ftpserver-linux-amd64
 chmod 775 /app/Order/webdav
 chmod 775 /app/Order/lux
 # 启动
 echo -e "\033[33m启动webdav \033[0m"
 bash /sh/webdav.sh
 sleep 2
 echo -e "\033[33m启动ftp \033[0m"
 bash /sh/ftp.sh
 sleep 2
 echo -e "\033[33m启动 \033[0m"
 cd /app
 ./fy.duoyang.cloudDisk
fi
