#!/bin/bash
read -p "请输入要执行的操作后面的数字（安装1|删除2）：" id
if [ $id = 1 ] || [ $id = 2 ];then
read -p "请输入软件名称：" pack
case $id in
1)
  if [ `rpm -q $pack &>/dev/null;echo $?` -eq 0 ];then
	echo $pack软件已经存在
	echo 正在启动$pack
	systemctl start $pack &>/dev/null
	systemctl enable $pack &>/dev/null
	else
	if [ `rpm -q $pack &>/dev/null;echo $?` -eq 0 ];then
	yum -y install $pack
	echo 正在启动$pack
	systemctl start $pack &>/dev/null
	systemctl enable $pack &>/dev/null
	else
	echo $pack 安装时发生错误！！！
	fi
  fi ;;

2)
  if [ `rpm -q $pack &>/dev/null;echo $?` -eq 0 ];then
	echo 正在删除$pack
	rpm -e $pack
	else
	if [ `yum -y remove $pack &>/dev/null;echo $?` -eq 0];then
	echo $pack已经删除
	else 
	echo $pack删除时发生错误！！！！！
	fi
  fi ;;

esac
else 
      	 echo 请输入操作后面的数字；并执行正确的操作！！！！！
fi
