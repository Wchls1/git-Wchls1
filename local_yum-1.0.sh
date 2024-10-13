#!/bin/bash
echo "=====正在删除挂载文件====="
sleep 2
umount /opt/mnt
sleep 2


echo "=====正在删除yum源====="
rm -rf /etc/yum.repos.d/local.repo
sleep 0.8


echo "=====正在开始重新挂载====="
sleep 2
mount /dev/cdrom /opt/mnt
sleep 2


echo "=====开始搭建本地yum源====="
sleep 0.8
echo "=====正在搭建本地yum源====="
sleep 2
cat >> /etc/yum.repos.d/local.repo << EOF
[local]
name=repolist
baseurl=file:///opt/mnt
enable=1
gpgcheck=0
EOF

echo "
[local]
name=repolist"
sleep 0.3
echo "
baseurl=file:///opt/mnt
enable=1
gpgcheck=0"
sleep 0.3
echo "
已将内容写入/etc/yum.repos.d文件
"
sleep 0.8
echo "=====本地yum源搭建完成====="
sleep 0.8


echo "=====正在验证软件包====="
sleep 0.3
yum -y remove vsftpd
sleep 2
yum -y install vsftpd 
sleep 1


echo "=====正在验证软件包数量====="
sleep 2
yum repolist | tail -6


