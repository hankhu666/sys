#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/tools/ups && chmod +x ups && mv -f ups /usr/local/sbin/ && ln -s /usr/local/sbin/ups /usr/local/bin/
if [ $? ]
then
    echo install ups succesed
fi
