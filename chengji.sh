#!/bin/bash
read -p "请输入您的成绩：" num
if [ $num -ge 90 ] ;then
   echo "nbnb" 
 elif [ $num -ge 80 ]; then
   echo "继续保持"
 elif [ $num -ge 70 ]; then
   echo "继续努力"
 elif [ $num -ge 60 ]; then
   echo "还得多加努力" 
 else
   echo "回家种地去吧"
fi
