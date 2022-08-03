#!/bin/bash

if [ ! -f "/app/Order/webdav.yaml" ]; then
# 生成配置文件
echo -e "\033[36m未检测到配置文件,正在生成配置文件... \033[0m"
touch /app/Order/webdav.yaml
cat > /app/Order/webdav.yaml<< EOF
# Server related settings
address: 0.0.0.0
port: 2200
auth: true
tls: false
cert: cert.pem
key: key.pem
prefix: /

# Default user settings (will be merged)
scope: .
modify: true
rules: []

# CORS configuration
cors:
  enabled: true
  credentials: true
  exposed_headers:
    - Content-Length
    - Content-Range

users:
  - username: test
    password: test
    scope: /home
EOF
echo -e "\033[36m配置文件生成成功 \033[0m"
fi

cd /app/Order
./webdav --config /app/Order/webdav.yaml &