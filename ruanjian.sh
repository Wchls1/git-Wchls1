#!/bin/bash
read -p "请输入软件包名称：" pack
if [ `rpm -q $pack &> /dev/null ; echo $?` -eq 0 ] ;then
  systemctl start $pack
  systemctl status $pack &> /dev/null
  echo "$pack已经启动 "
 else
  yum -y install $pack &> /dev/null
  systemctl start $pack
  systemctl status $pack &> /dev/null
  echo "已经安装$pack，$pack已经启动"
fi
