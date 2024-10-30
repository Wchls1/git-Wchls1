vim while_ping.sh 
#!/bin/bash
i=1  #定义一个变量
while [ $i -le 254 ] #循环判断变量的值小于等于254
do
        IP="192.168.0.$i"   #定义一个变量
        ping -c2 -i0.1 -W1 $IP &> /dev/null #输出结果不要
        if [ $? -eq 0 ];then    #判断上一条命令的结果，如果上一条命令的结果等于0
            echo "$IP UP"       #输出主机UP
        else
           echo "$IP DOWN"      #输出主机DOWN
        fi
   let i++       #对变量的值自加1 
done
