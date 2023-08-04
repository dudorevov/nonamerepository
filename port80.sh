#!/bin/bash
IP_ADDRESS="172.20.28.26"
PORT=80
ROOT_DIR="/var/www/html/"
nc -zv $IP_ADDRESS $PORT &> /dev/null
if [ $? -eq 0 ];
then
echo "Port $PORT open on $IP_ADDRESS"
else
echo "Port $PORT closed on $IP_ADDRESS"
exit 1
fi
if [ -f $ROOT_DIR/index.nginx-debian.html ];
then
echo "File index.nginx-debian.html is exist"
else
echo "File index.nginx-debian.html is not exist"
exit 1
fi
exit 0


