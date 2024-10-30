for num in {1..50}
do
        IP=192.168.0.$num
        ping -c2 -i0.1 -W1 $IP > /dev/null
        if [ $? -eq 0 ];then
                [ $num -eq 20 ] && continue
                echo $IP is UP >> /opt/host_up.txt
          else
                [ $num -eq 20 ] && continue
                echo $IP is DOWN >> /opt/host_down.txt
        fi
done
