#!/bin/bash
wget -N --no-check-certificate https://raw.githubusercontent.com/hankhu666/sys/main/musys && chmod +x musys && ./musys rm
if [ $? ]
then
    echo  sysmain removed
fi
rm -rf musys
