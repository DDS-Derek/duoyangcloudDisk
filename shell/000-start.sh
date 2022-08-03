#!/bin/bash

# 设置时区
if [ ! -f "/tz.lock" ]; then
 echo -e "\033[34m设置时区... \033[0m"
 bash /shell/010-tz.sh
fi

# 判断是否需要安装或者更新
if [ ! -f "/install.lock" ]; then
 echo -e "\033[34m开始安装或更新... \033[0m"
 bash /shell/020-choose.sh
fi

# 权限设置
if [ ! -f "/install.lock" ]; then
 exit
else
 bash /shell/030-permission.sh
fi

# 启动
if [ ! -f "/install.lock" ]; then
 exit
else
# echo -e "\033[33m启动webdav \033[0m"
# bash /shell/022-webdav.sh
# sleep 2
# echo -e "\033[33m启动ftp \033[0m"
# bash /shell/022-ftp.sh
# sleep 2
 echo -e "\033[33m启动 \033[0m"
 cd /app
 ./fy.duoyang.cloudDisk
fi
