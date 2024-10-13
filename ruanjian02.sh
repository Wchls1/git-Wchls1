#!/bin/bash
read -p "请输入软件名称：" pack
if [ `rpm -q $pack &> /dev/null ; echo $?` -eq 0 ] ;then
        echo "$pack 软件已经安装 ，正在启动$pack .........."
	systemctl start $pack && systemctl enable $pack &> /dev/null
   else 
        echo "$pack 软件未安装，正在安装软件..............."
   if [ `yum -y install $pack &> /dev/null ; echo $?` -eq 0 ] ;then
        echo "$pack 软件已经安装 ，正在启动$pack .........."
        systemctl start $pack && systemctl enable $pack &> /dev/null
     else
	echo "$pack 软件安装失败"
   fi
fi   
