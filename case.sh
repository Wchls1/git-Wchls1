#!/bin/bash
read -p "请输入您要安装的软件包(vsftpd|httpd)": pack
case $pack in
vsftpd)
        yum -y install vsftpd &> /dev/null
        echo "vsftpd安装成功" ;;
httpd)
        yum -y install httpd &> /dev/null
        echo "httpd安装成功";;
*)
        echo "请输入范围内的软件包！"
esac
