#!/bin/bash

if [ ! -f "/app/fy.duoyang.cloudDisk" ]; then
 # 安装
 echo -e "\033[36m开始安装... \033[0m"
 bash /sh/install.sh
else
 # 更新
 echo -e "\033[36m开始更新... \033[0m"
 bash /sh/update.sh
fi
