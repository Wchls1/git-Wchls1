#!/bin/bash
for i in `seq 254`
do
        ping -c2 -i0.1 -W1 192.168.0.$i >> /dev/null
        if [ $? -eq 0 ];then
           echo "192.168.0.$i UP"  
        else
           echo "192.168.0.$i DOWN" 
        fi
done

