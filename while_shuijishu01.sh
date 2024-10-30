#!/bin/bash
num=$[RANDOM%10]
while :
do
           read -p "请输入0-10之间的数字：" num1
        if [ $num -eq $num1 ];then
           echo "你答对了"
           exit  #退出脚本
         else
           echo "你答错了"
        fi
done
