#!/bin/bash

cd /
unzip -q /duoyang.cloudDisk.linux64.$TAG.zip -d /
rm -rf /duoyang.cloudDisk.linux64.$TAG.zip
mv /duoyang.cloudDisk.linux64.$TAG/linux64/* /app/
rm -rf /duoyang.cloudDisk.linux64.$TAG
if [ ! -f "/app/fy.duoyang.cloudDisk" ]; then
 echo -e "\033[31m安装失败,请重试 \033[0m"
else
 echo -e "\033[36m安装完成 \033[0m"
 touch /install.lock
 echo "安装完成" > /install.lock
 bash /sh/start.sh
fi
