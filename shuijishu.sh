#!/bin/bash
read -p "请输入一个0~9的随机数：" num
num1=$[RANDOM%10]
if [ $num -eq $num1 ] ;then
     echo "恭喜你猜对了"
  else
     echo "猜错了，继续努力"
     echo "正确的应该是：$num1"
fi
