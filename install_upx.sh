#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/tools/upx && chmod +x upx && mv -f upx /usr/local/sbin/ && ln -s /usr/local/sbin/upx /usr/local/bin/
if [ $? ]
then
    echo install upx succesed
fi
