#!/bin/bash
echo done `date` >>task.log
shijian="`date "+%Y-%m-%d %H:%M:%S"`"
ip=$(curl -s ipv4.ip.sb)
curl -sk -X POST  https://api.hankhu.xyz/sys/accept.php -d "$ip heartbeat $shijian "
