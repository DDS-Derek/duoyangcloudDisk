FROM ubuntu:20.04
#FROM debian:bullseye

# 版本
ENV TAG=v0.9.8
ENV TZ=Asia/Shanghai

# 脚本
ADD ./shell /shell

RUN apt-get update && \
    apt-get install -y libssl-dev libicu-dev zip wget tzdata && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod -R 755 /shell

# 程序主体
COPY ./duoyang.cloudDisk.linux64.${TAG}.zip /duoyang.cloudDisk.linux64.${TAG}.zip

# 启动
CMD [ "/shell/000-start.sh" ]

# 端口
EXPOSE 88 6800 2200 2121 2122 2123 2124 2125 2126 2127 2128 2129 2130  

# 挂载目录
VOLUME [ "/home" ]
VOLUME [ "/OpenFiles" ]
VOLUME [ "/app" ]