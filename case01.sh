#!/bin/bash
read -p "请输入软件名称（vsftpd|httpd|tomcat|nginx）：" pack
case $pack in
vsftpd)
	if [ `rpm -q $pack &>/dev/null; echo $?` -eq 0 ];then
	echo $pack已经安装
	echo 正在启动$pack
	     systemctl start $pack &>/dev/null
	     systemctl enable $pack &> /dev/null
	     sleep 1
	echo $pack 已经启动
        else 
	if [ ` yum -y install $pack &>/dev/null ; echo $?` -eq 0 ];then
		echo 正在安装$pack
		sleep 1
		echo 正在启动$pack
		systemctl start $pack
		systemctl enable $pack
		else
		echo $pack 安装失败 
	fi
	fi ;; 

httpd)
        if [ `rpm -q $pack &>/dev/null; echo $?` -eq 0 ];then
        echo $pack已经安装
        echo 正在启动$pack
             systemctl start $pack &>/dev/null
             systemctl enable $pack &> /dev/null
             sleep 1
        echo $pack 已经启动
        else
        if [ ` yum -y install $pack &>/dev/null ; echo $?` -eq 0 ];then
                echo 正在安装$pack
                sleep 1
                echo 正在启动$pack
                systemctl start $pack
                systemctl enable $pack
                else
                echo $pack 安装失败 
        fi
        fi ;;
tomcat)
        if [ `rpm -q $pack &>/dev/null; echo $?` -eq 0 ];then
        echo $pack已经安装
        echo 正在启动$pack
             systemctl start $pack &>/dev/null
             systemctl enable $pack &> /dev/null
             sleep 1
        echo $pack 已经启动
        else
        if [ ` yum -y install $pack &>/dev/null ; echo $?` -eq 0 ];then
                echo 正在安装$pack
                sleep 1
                echo 正在启动$pack
                systemctl start $pack
                systemctl enable $pack
                else
                echo $pack 安装失败 
        fi
        fi ;;
nginx)
        if [ `rpm -q $pack &>/dev/null; echo $?` -eq 0 ];then
        echo $pack已经安装
        echo 正在启动$pack
             systemctl start $pack &>/dev/null
             systemctl enable $pack &> /dev/null
             sleep 1
        echo $pack 已经启动
        else
        if [ ` yum -y install $pack &>/dev/null ; echo $?` -eq 0 ];then
                echo 正在安装$pack
                sleep 1
                echo 正在启动$pack
                systemctl start $pack
                systemctl enable $pack
                else
                echo $pack 安装失败 
        fi
        fi ;;
*)
	echo 错误,此脚本没有这个软件包！！！！
esac
