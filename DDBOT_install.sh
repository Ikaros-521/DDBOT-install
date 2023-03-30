#!/bin/bash
echo "命令参考：bash DDBOT-install.sh <系统架构，先会简单检索判断一下，都不匹配默认arm64> <程序版本，不填默认1.1.0>"

framework="arm64"
version="1.1.0"

if [ "$1" ];then
    framework=$1
else
    echo "系统框架没有传参，按默认配置运行"
    uname=`uname -m`
    if [ "$uname" = "aarch64" ];then
        framework="arm64"
    elif [ "$uname" = "x86_64" ];then
        framework="amd64"
    else
        framework="arm64"
    fi
fi

if [ "$2" ];then
    version=$2
else
    echo "程序版本没有传参，按默认配置运行"
fi

echo "系统架构=$framework， 版本=$version"

# 下载官方bot压缩包 版本为v1.0.9.2
curl https://gh.ddlc.top/https://github.com/Sora233/DDBOT/releases/download/v$version/DDBOT-v$version-linux-$framework.tar.gz --output DDBOT-v$version-linux-$framework.tar.gz
# 创建文件夹
mkdir DDBOT
# 移动压缩包到指定文件夹
mv DDBOT-v$version-linux-$framework.tar.gz DDBOT
# 进入文件夹
cd DDBOT
# 解压
tar -zxvf DDBOT-v$version-linux-$framework.tar.gz
# 添加执行权限
chmod +x DDBOT
# 前台运行
./DDBOT
