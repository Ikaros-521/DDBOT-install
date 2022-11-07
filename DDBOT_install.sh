#!/bin/bash
# 下载官方bot压缩包 版本为v1.0.9.2
curl https://gh.ddlc.top/https://github.com/Sora233/DDBOT/releases/download/v1.0.9.2/DDBOT-v1.0.9.2-linux-arm64.tar.gz --output DDBOT-v1.0.9.2-linux-arm64.tar.gz
# 创建文件夹
mkdir DDBOT
# 移动压缩包到指定文件夹
mv DDBOT-v1.0.9.2-linux-arm64.tar.gz DDBOT
# 进入文件夹
cd DDBOT
# 解压
tar -zxvf DDBOT-v1.0.9.2-linux-arm64.tar.gz
# 添加执行权限
chmod +x DDBOT
# 前台运行
./DDBOT
