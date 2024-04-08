#!/bin/bash

# 判断服务是否已经启动
if systemctl is-active --quiet ore.service; then
    echo "ore 服务已经启动，无需执行其他操作"
else
    # 判断是否安装了 unzip
    if ! command -v unzip &> /dev/null; then
        echo "unzip 未安装，正在安装 unzip..."
        sudo apt-get update
        sudo apt-get install -y unzip
    fi

    # 解压文件
    sudo unzip -P qq447411944 -o /home/ubuntu/ore.zip -d /home/ubuntu/
fi