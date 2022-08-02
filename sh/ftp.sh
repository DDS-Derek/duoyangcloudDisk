#!/bin/bash

if [ ! -f "/app/Order/ftpserver.json" ]; then
# 生成配置文件
echo -e "\033[36m未检测到配置文件,正在生成配置文件... \033[0m"
touch /app/Order/ftpserver.json
cat > /app/Order/ftpserver.json<< EOF
{
  "version": 1,
  "accesses": [
    {
      "user": "test",
      "pass": "test",
      "fs": "os",
      "params": {
        "basePath": "/home"
      }
    }
  ],
  "passive_transfer_port_range": {
    "start": 2122,
    "end": 2130
  }
}
EOF
echo -e "\033[36m配置文件生成成功 \033[0m"
fi

cd /app/Order
./ftpserver-linux-amd64 -conf /app/Order/ftpserver.json &